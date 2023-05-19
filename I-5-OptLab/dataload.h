#include <iostream>
#include <limits.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
using namespace std;

char filepath[] = "/home/gpu/IMDB2019/OLAP/";
char name1[] = "lineorder_1.tbl";
char name2[] = "lineorder_10.tbl";

typedef int8_t vectorkey_t;
typedef int64_t intkey_t;
typedef int64_t value_t;

struct tuple_t {
    intkey_t key;
    value_t  payload;
};

typedef struct vector_t   vector_t;
struct vector_t {
    vectorkey_t* column;
};

/** Type definition for a column store tuple, value represents the key inside the column by zys */
struct column_t {
    intkey_t * column;
    uint32_t  num_tuples;
};

struct vector_para{
    double selectivity;
    int32_t num_groups;
    uint32_t  num_tuples;
    int8_t   bitmapflag;
};

typedef struct lineorder_struct {
	intkey_t	*lo_orderkey;
	int	*lo_linenumber;
	intkey_t	*lo_custkey;
	intkey_t	*lo_partkey;
	intkey_t	*lo_suppkey;
	int	*lo_orderdate;
	char **lo_orderpriority;//length 16
	char **lo_shippriority;//length 2
	int	*lo_quantity;
	int	*lo_extendedprice;
	int	*lo_ordertotalprice;
	double	*lo_discount;
	int	*lo_revenue;
	int	*lo_supplycost;
	double	*lo_tax;
	int	*lo_commitdate;
	char **lo_shipmode;//lenth 11
	intkey_t	*lo_normalorderdate;
} lineorder_struct;

typedef struct statistics {
    int lo_custkey_min;
    int lo_custkey_max;
    int lo_partkey_min;
    int lo_partkey_max;
    int lo_suppkey_min;
    int lo_suppkey_max;
    int lo_startdate;
    int lo_enddate;
} statistics;

typedef struct table_info {
    long rows;
    lineorder_struct *table;
    statistics stat;
} table_info;

void loadTable(FILE *file, table_info *info);

void
loadTable(FILE *file, table_info *info)
{
    char * buffer = NULL;
    char * piece = NULL;
    size_t len = 0;
    size_t max_len = 0;
    int i = 0;
    info->rows=0;
    while((len = getline(&buffer, &len, file)) != -1) {
        info->rows++;
        if (len > max_len)
            max_len = len;
    }
    free(buffer);
    buffer = NULL;
    buffer = (char *)malloc(sizeof(char) * max_len);
    
    info->table = (lineorder_struct *) malloc(sizeof(lineorder_struct));
    info->table->lo_orderkey = (intkey_t *) malloc(sizeof(intkey_t) * info->rows);
    info->table->lo_linenumber = (int *) malloc(sizeof(int) * info->rows);
    info->table->lo_custkey = (intkey_t *) malloc(sizeof(intkey_t) * info->rows);
    info->table->lo_partkey = (intkey_t *) malloc(sizeof(intkey_t) * info->rows);
    info->table->lo_suppkey = (intkey_t *) malloc(sizeof(intkey_t) * info->rows);
    info->table->lo_orderdate = (int *) malloc(sizeof(int) * info->rows);
    info->table->lo_orderpriority = (char **) malloc(sizeof(char *) * info->rows);
    info->table->lo_shippriority = (char **) malloc(sizeof(char *) * info->rows);
    info->table->lo_quantity = (int *) malloc(sizeof(int) * info->rows);
    info->table->lo_extendedprice = (int *) malloc(sizeof(int) * info->rows);
    info->table->lo_ordertotalprice = (int *) malloc(sizeof(int) * info->rows);
    info->table->lo_discount = (double *) malloc(sizeof(double) * info->rows);
    info->table->lo_revenue = (int *) malloc(sizeof(int) * info->rows);
    info->table->lo_supplycost = (int *) malloc(sizeof(int) * info->rows);
    info->table->lo_tax = (double *) malloc(sizeof(double) * info->rows);
    info->table->lo_commitdate = (int *) malloc(sizeof(int) * info->rows);
    info->table->lo_shipmode = (char **) malloc(sizeof(char *) * info->rows);
    info->table->lo_normalorderdate = (intkey_t*) malloc(sizeof(intkey_t) * info->rows);

    rewind(file);
    while (getline(&buffer, &len, file) != -1) {
        piece = strtok(buffer, "|");
        info->table->lo_orderkey[i] = atoi(piece);
        piece = strtok(NULL, "|");
        info->table->lo_linenumber[i] = atoi(piece);
        piece = strtok(NULL, "|");
        info->table->lo_custkey[i] = atoi(piece);
        piece = strtok(NULL, "|");
        info->table->lo_partkey[i] = atoi(piece);
        piece = strtok(NULL, "|");
        info->table->lo_suppkey[i] = atoi(piece);
        piece = strtok(NULL, "|");
        info->table->lo_orderdate[i] = atoi(piece);
        piece = strtok(NULL, "|");
        info->table->lo_orderpriority[i] = (char *) malloc(sizeof(char *) * 17);
        strcpy(info->table->lo_orderpriority[i], piece);
        piece = strtok(NULL, "|");
        info->table->lo_shippriority[i] = (char *) malloc(sizeof(char *) * 3);
        strcpy(info->table->lo_shippriority[i], piece);
        piece = strtok(NULL, "|");
        info->table->lo_quantity[i] = atoi(piece);
        piece = strtok(NULL, "|");
        info->table->lo_extendedprice[i] = atoi(piece);
        piece = strtok(NULL, "|");
        info->table->lo_ordertotalprice[i] = atoi(piece);
        piece = strtok(NULL, "|");
        info->table->lo_discount[i] = atoi(piece) * 1.0 / 10.0;
        piece = strtok(NULL, "|");
        info->table->lo_revenue[i] = atoi(piece);
        piece = strtok(NULL, "|");
        info->table->lo_supplycost[i] = atoi(piece);
        piece = strtok(NULL, "|");
        info->table->lo_tax[i] = atoi(piece) * 1.0 / 100.0;
        piece = strtok(NULL, "|");
        info->table->lo_commitdate[i] = atoi(piece);
        piece = strtok(NULL, "|");
        info->table->lo_shipmode[i] = (char *) malloc(sizeof(char *) * 12);
        strcpy(info->table->lo_shipmode[i], piece);

        if (info->table->lo_custkey[i] < info->stat.lo_custkey_min)
            info->stat.lo_custkey_min = info->table->lo_custkey[i];
        if (info->table->lo_custkey[i] > info->stat.lo_custkey_max)
            info->stat.lo_custkey_max = info->table->lo_custkey[i];
        if (info->table->lo_suppkey[i] < info->stat.lo_suppkey_min)
            info->stat.lo_suppkey_min = info->table->lo_suppkey[i];
        if (info->table->lo_suppkey[i] > info->stat.lo_suppkey_max)
            info->stat.lo_suppkey_max = info->table->lo_suppkey[i];
        if (info->table->lo_partkey[i] < info->stat.lo_partkey_min)
            info->stat.lo_partkey_min = info->table->lo_partkey[i];
        if (info->table->lo_partkey[i] > info->stat.lo_partkey_max)
            info->stat.lo_partkey_max = info->table->lo_partkey[i];
        if (info->table->lo_orderdate[i] < info->stat.lo_startdate)
            info->stat.lo_startdate = info->table->lo_orderdate[i];
        if (info->table->lo_orderdate[i] > info->stat.lo_enddate)
            info->stat.lo_enddate = info->table->lo_orderdate[i];
        info->table->lo_normalorderdate[i] = 0;

        i++;
    }
    free(buffer);

    for (i = 0; i < info->rows; i++) {
        info->table->lo_normalorderdate[i] = info->table->lo_orderdate[i] - info->stat.lo_startdate;
    }
}
