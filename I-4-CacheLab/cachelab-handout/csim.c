//周炎亮
//2018202196
#include "cachelab.h"
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<getopt.h>
#include<unistd.h>
//#define MAXIMUN 300000
struct CACHE
{
    int valid;
    int tag;
    int unused_times;
};

struct CACHE** cache_address;
int s,E,b;
char file_address[100];
char** output;
int hit=0,miss=0,eviction=0;

void cache_simulator(unsigned int address,char* output)
{
    int t_=address>>(s+b);
    int s_=(address<<(32-b-s))>>(32-s);
    for(int i=0;i<E;i++)            //case:hit
    {
        if(cache_address[s_][i].tag==t_&&cache_address[s_][i].valid==1)
        {
            hit++;
            strcat(output," hit");
            cache_address[s_][i].unused_times=0;
            //printf("hit\n");
            return;
        }
    }
    for(int i=0;i<E;i++)            //case:not hit but miss
    {
        if(cache_address[s_][i].valid==0)
        {
            miss++;
            strcat(output," miss");
            cache_address[s_][i].tag=t_;
            cache_address[s_][i].valid=1;
            cache_address[s_][i].unused_times=0;
            //printf("miss\n");
            return;
        }
    }
    miss++;                         //case:not hit but cache's full - eviction
    strcat(output," miss");
    int max=0;                      
    int loc;
    for(int i=0;i<E;i++)
    {
        if(cache_address[s_][i].unused_times>max)
        {
            max=cache_address[s_][i].unused_times;
            loc=i;
        }
    }
    eviction++;
    strcat(output," eviction");
    cache_address[s_][loc].tag=t_;
    cache_address[s_][loc].unused_times=0;
    //printf("eviction\n");
    return;
}

int main(int argc,char* argv[])
{
    int MAXIMUN=0;
    int v_show=0;
    char initial,input[60];
    while((initial=getopt(argc, argv, "vs:E:b:t:"))!=-1)
    {
        //printf("%d %s\n",initial,optarg);
        switch(initial)
        {
        case 'v':
            v_show=1;
            break;
        case 's':
            s=atoi(optarg);
            break;
        case 'E':
            E=atoi(optarg);
            break;
        case 'b':
            b=atoi(optarg);
            break;
        case 't':
            strcpy(file_address,optarg);
            //printf("%s\n",optarg);
            break;
        }
    }
    /*s=1;
    E=1;
    b=1;
    v_show=1;
    strcpy(file_address,"traces/yi2.trace");*/
    //printf("%s\n",file_address);
    FILE* fp=fopen(file_address,"r");
    if(fp==NULL)
    {
        printf("Filename Wrong!\n");
        return 0;
    }
    int S=1<<s;
    cache_address=(struct CACHE**)calloc(S,sizeof(struct CACHE*));
    for(int i=0;i<S;i++)
        cache_address[i]=(struct CACHE*)calloc(E,sizeof(struct CACHE));
    for(int i=0;i<S;i++)
    {
        for(int j=0;j<E;j++)
        {
            cache_address[i][j].unused_times=0;
            cache_address[i][j].valid=0;
        }
    }
    while(fgets(input,100,fp))
        MAXIMUN++;
    rewind(fp);
    output=(char**)calloc(MAXIMUN,sizeof(char*));
    for(int i=0;i<MAXIMUN;i++)
        output[i]=(char*)calloc(50,sizeof(char));
    char operation;
    unsigned int address;
    int num=0;
    while(fgets(input,100,fp))
    {
        sscanf(input,"%s %x",&operation,&address);
        //printf("%c,%x\n",operation,address);
        if(operation!='I')
        {
            strcpy(output[num],input);
            strtok(output[num],"\n");
            output[num]=output[num]+1;
            cache_simulator(address,output[num]);
            num++;
        }
        if(operation=='M')
        {
            cache_simulator(address,output[num-1]);
        }
        for(int i=0;i<S;i++)
        {
            for(int j=0;j<E;j++)
            {
                if(cache_address[i][j].valid==1)
                    cache_address[i][j].unused_times++;
            }
        }
    }
    fclose(fp);
    if(v_show==1)
    {
        for(int i=0;i<num;i++)
            printf("%s\n",output[i]);
    }
    printSummary(hit,miss,eviction);
    for(int i=0;i<S;i++)
        free(cache_address[i]);
    free(cache_address);
//    for(int i=0;i<MAXIMUN;i++)
//        free(output[i]);
    free(output);
    return 0;
}
