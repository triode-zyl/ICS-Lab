#include <cstdio>
#include "dataload.h"
#define limit_orderdate 19950630

const char lineorder_name[] = "lineorder.tbl";

static __inline__ uint64_t curtick() {
	uint64_t tick;
	unsigned long lo,hi;
	__asm__ __volatile__ ("rdtsc":"=a"(lo),"=d"(hi));
	tick = (uint64_t) hi << 32 | lo;
	return tick;
}

static __inline__ void startTimer(uint64_t *t) {
	(*t) = curtick();
}

static __inline__ void stopTimer(uint64_t *t) {
	(*t) = curtick() - *t;
}


int main() {
	table_info lineorder_table_info;
	FILE * lineorder_file;
	
	//load lineorder table from file
	lineorder_file = fopen(lineorder_name,"r");	
	loadTable(lineorder_file, &lineorder_table_info);

	unsigned int quantity_sum = 0;
	double discount_total_price = 0;
	double tax_discount_total_price = 0;
	unsigned int quantity_sum_with_condition = 0;
	double discount_total_price_with_condition = 0;
	double tax_discount_total_price_with_condition = 0;
	
	uint64_t beg;
	startTimer(&beg);
	
	//you should editor the following the part to accelerate the calculation
	/*--------------------------------*/


	int rows=lineorder_table_info.rows;
	int* l_q=lineorder_table_info.table -> lo_quantity;
	int* l_e=lineorder_table_info.table -> lo_extendedprice;
	double* l_d=lineorder_table_info.table -> lo_discount;
	double* l_t=lineorder_table_info.table -> lo_tax;
	int* l_o=lineorder_table_info.table -> lo_orderdate;
	int i=0;
	for (i; i < rows-4; i+=4) {
		quantity_sum = quantity_sum + l_q[i] + l_q[i+1] + l_q[i+2] + l_q[i+3];
		discount_total_price = discount_total_price + l_e[i] * (1 - l_d[i]) + l_e[i+1] * (1 - l_d[i+1]) + l_e[i+2] * (1 - l_d[i+2]) + l_e[i+3] * (1 - l_d[i+3]);
		tax_discount_total_price = tax_discount_total_price + l_e[i] * (1 - l_d[i]) * (1 + l_t[i] )+l_e[i+1] * (1 - l_d[i+1]) * (1 + l_t[i+1] )
                         + l_e[i+2] * (1 - l_d[i+2]) * (1 + l_t[i+2] ) + l_e[i+3] * (1 - l_d[i+3]) * (1 + l_t[i+3] );

		if (l_o[i] <= limit_orderdate) {
			quantity_sum_with_condition = quantity_sum_with_condition + l_q[i];

			discount_total_price_with_condition = discount_total_price_with_condition 
			+ l_e[i] * (1 - l_d[i]);

			tax_discount_total_price_with_condition = tax_discount_total_price_with_condition 
			+ l_e[i] * (1 - l_d[i]) * (1 + l_t[i] );
		}
		if (l_o[i+1] <= limit_orderdate) {
			quantity_sum_with_condition = quantity_sum_with_condition + l_q[i+1];

			discount_total_price_with_condition = discount_total_price_with_condition 
			+ l_e[i+1] * (1 - l_d[i+1]);

			tax_discount_total_price_with_condition = tax_discount_total_price_with_condition 
			+ l_e[i+1] * (1 - l_d[i+1]) * (1 + l_t[i+1] );
		}
                if (l_o[i+2] <= limit_orderdate) {
			quantity_sum_with_condition = quantity_sum_with_condition + l_q[i+2];

			discount_total_price_with_condition = discount_total_price_with_condition 
			+ l_e[i+2] * (1 - l_d[i+2]);

			tax_discount_total_price_with_condition = tax_discount_total_price_with_condition 
			+ l_e[i+2] * (1 - l_d[i+2]) * (1 + l_t[i+2] );
		}
                if (l_o[i+3] <= limit_orderdate) {
			quantity_sum_with_condition = quantity_sum_with_condition + l_q[i+3];

			discount_total_price_with_condition = discount_total_price_with_condition 
			+ l_e[i+3] * (1 - l_d[i+3]);

			tax_discount_total_price_with_condition = tax_discount_total_price_with_condition 
			+ l_e[i+3] * (1 - l_d[i+3]) * (1 + l_t[i+3] );
		}
	}
	for (i; i < rows; i++) {
		quantity_sum = quantity_sum + l_q[i];
		discount_total_price = discount_total_price + l_e[i] * (1 - l_d[i]);
		tax_discount_total_price = tax_discount_total_price + l_e[i] * (1 - l_d[i]) * 
								   (1 + l_t[i] );

		if (l_o[i] <= limit_orderdate) {
			quantity_sum_with_condition = quantity_sum_with_condition + l_q[i];

			discount_total_price_with_condition = discount_total_price_with_condition 
			+ l_e[i] * (1 - l_d[i]);

			tax_discount_total_price_with_condition = tax_discount_total_price_with_condition 
			+ l_e[i] * (1 - l_d[i]) * (1 + l_t[i] );
		}
	}
	/*--------------------------------*/
	
	
	stopTimer(&beg); 

	//output
	printf("%d\n",quantity_sum);
	printf("%0.6lf\n",discount_total_price);
	printf("%0.6lf\n",tax_discount_total_price);
	printf("%d\n",quantity_sum_with_condition);
	printf("%0.6lf\n",discount_total_price_with_condition);
	printf("%0.6lf\n",tax_discount_total_price_with_condition);
	printf("running time is %ld\n", (long)(beg));
}
