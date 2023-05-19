/*
Filesystem Lab disigned and implemented by Liang Junkai,RUC
*/
#define _GNU_SOURCE

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <time.h>
#include <fuse.h>
#include <errno.h>
#include "disk.h"

#include<stdbool.h>
#include<stdlib.h>
//#include<stdint.h>

//#define S_IFDIR 0040000
//#define S_IFREG 0100000
#define DIRMODE (0040000|0755)
#define REGMODE (0100000|0644)

typedef unsigned short inode_id_t;
typedef unsigned short block_id_t;

#define MAX_DIRECT_PTR_NUM 11
//#define MAX_INDIRECT_PTR_NUM 1
//#define MAX_DOUBLE_PTR_NUM 1
//size:64
typedef struct {
	//size:24
    time_t  atime;
    time_t  mtime;
    time_t  ctime;
	//size:12
	off_t   size;
    mode_t  mode;

    unsigned short directPtr_num;
    //unsigned short indirectPtr_num;
	unsigned short indirectPtr_num_in_block;
    //unsigned short doublePtr_num;
    block_id_t directPtr[MAX_DIRECT_PTR_NUM];
    block_id_t indirectPtr;
    //block_id_t doublePtr[MAX_DOUBLE_PTR_NUM];
} inode_t;

typedef struct {
    inode_id_t free_inode_num;
	block_id_t free_data_block_num;
	char padding[BLOCK_SIZE-sizeof(inode_id_t)-sizeof(block_id_t)];
} superblock_t;

#define ROOT_INODE (inode_id_t)0

#define FILE_NAME_LENGTH 24
typedef struct {
    char name[FILE_NAME_LENGTH];
    inode_id_t inode_id;
	char padding[6];
} entry_t;

#define BIT_PER_BLOCK (8*4096)
//#define SUPERBLOCK_NUM 1
#define SUPERBLOCK_ID 1
//#define IBMAP_NUM 1
//inode bitmap
#define IBMAP_ID 2
//#define DBMAP_NUM 1
//data block bitmap
#define DBMAP_ID 3
#define INODE_NUM 32768
#define INODE_NUM_PER_BLOCK (BLOCK_SIZE/sizeof(inode_t))
#define INODE_BLOCK_NUM (INODE_NUM/INODE_NUM_PER_BLOCK)
#define INODE_BLOCK_START_ID 5
#define INODE_BLOCK_END_ID (INODE_BLOCK_START_ID+INODE_BLOCK_NUM-1)
#define DATA_BLOCK_START_ID (INODE_BLOCK_START_ID+INODE_BLOCK_NUM)

void init_fs()
{
	//printf("0\n");
	superblock_t superblock;
	superblock.free_inode_num=INODE_NUM;
	superblock.free_data_block_num=BLOCK_NUM-DATA_BLOCK_START_ID;
	disk_write(SUPERBLOCK_ID,&superblock);
	superblock_t tmp_s;
	disk_read(SUPERBLOCK_ID,&tmp_s);
	//printf("%d %d\n",tmp_s.free_data_block_num,tmp_s.free_inode_num);
	char inode_map[INODE_NUM/8];
	memset(inode_map,0,INODE_NUM/8);
	disk_write(IBMAP_ID,inode_map);
	//printf("0\n");
	char datablock_map[BLOCK_NUM/8];
	memset(datablock_map,0,BLOCK_NUM/8);
	int remainder=DATA_BLOCK_START_ID%8;
	int quotient=DATA_BLOCK_START_ID/8;
	//for(int i=0;i<quotient;i++)
	//	memset(datablock_map,-1,sizeof(char));
	//printf("0\n");
	memset(datablock_map,-1,quotient*sizeof(char));
	//printf("1\n");
	char tmp=1;
	for(int i=0;i<remainder;i++)
	{
		datablock_map[quotient]|=tmp;
		tmp<<=1;
	}
	//printf("2\n");
	//datablock_map[4096]=3;
	disk_write(DBMAP_ID,datablock_map);
	disk_write(DBMAP_ID+1,datablock_map+BLOCK_SIZE);
}

inode_t read_inode(inode_id_t inode_id)
{
	int remainder=inode_id%INODE_NUM_PER_BLOCK;
	block_id_t block_id=inode_id/INODE_NUM_PER_BLOCK;
	inode_t inodes[INODE_NUM_PER_BLOCK];
	disk_read(block_id+INODE_BLOCK_START_ID,inodes);
	return inodes[remainder];
}

void write_inode(inode_id_t inode_id,inode_t inode)
{
	int remainder=inode_id%INODE_NUM_PER_BLOCK;
	block_id_t block_id=inode_id/INODE_NUM_PER_BLOCK;
	inode_t inodes[INODE_NUM_PER_BLOCK];
	disk_read(block_id+INODE_BLOCK_START_ID,inodes);
	inodes[remainder]=inode;
	//printf("inodeid: %d,blockid: %d\n",inode_id,block_id+INODE_BLOCK_START_ID);
	disk_write(block_id+INODE_BLOCK_START_ID,inodes);
}

void inode_init(inode_id_t inode_id,mode_t mode)
{
	inode_t inode;
	inode.atime=time(NULL);
	inode.ctime=time(NULL);
	inode.mtime=time(NULL);
	inode.size=0;
	inode.mode=mode;
	inode.directPtr_num=0;
	//inode.doublePtr_num=0;
	//inode.indirectPtr_num=0;
	inode.indirectPtr_num_in_block=0;
	write_inode(inode_id,inode);
}

bool find_free_inode(inode_id_t *inode_id)
{
	char inode_map[INODE_NUM/8];
	disk_read(IBMAP_ID,inode_map);
	inode_id_t tmp;
	//printf("find:");
	//for(int i=0;i<20;i++)
	//	printf(" %d",inode_map[i]);
	//printf("\n");
	for(tmp=0;tmp<INODE_NUM;tmp++)
	{
		int remainder=tmp%8;
		int quotient=tmp/8;
		char offset=1<<remainder;
		if((inode_map[quotient]&offset)==0)
		{
			*inode_id=tmp;
			return true;
		}
	}
	return false;
}

bool read_inode_map(inode_id_t inode_id)
{
	char inode_map[INODE_NUM/8];
	disk_read(IBMAP_ID,inode_map);
	int remainder=inode_id%8;
	int quotient=inode_id/8;
	char offset=1<<remainder;
	return !((inode_map[quotient]&offset)==0);
}

void write_inode_map(inode_id_t inode_id,bool flag)
{
	char inode_map[INODE_NUM/8];
	memset(inode_map,0,BLOCK_SIZE);
	disk_read(IBMAP_ID,inode_map);
	//printf("write0:");
	//for(int i=0;i<20;i++)
	//	printf(" %d",inode_map[i]);
	//printf("\n");
	int remainder=inode_id%8;
	int quotient=inode_id/8;
	char offset=1<<remainder;
	if(flag)
	{
		inode_map[quotient]|=offset;
		//printf("write1:");
		//for(int i=0;i<20;i++)
		//	printf(" %d",inode_map[i]);
		//printf("\n");
		disk_write(IBMAP_ID,inode_map);
	}
	else
	{
		offset=~offset;
		inode_map[quotient]&=offset;
		disk_write(IBMAP_ID,inode_map);
	}
}

bool find_free_block(block_id_t *block_id)
{
	char block_map0[BLOCK_SIZE],block_map1[BLOCK_SIZE];
	disk_read(DBMAP_ID,block_map0);
	disk_read(DBMAP_ID+1,block_map1);
	block_id_t tmp;
	for(tmp=DATA_BLOCK_START_ID;tmp<BIT_PER_BLOCK;tmp++)
	{
		int remainder=tmp%8;
		int quotient=tmp/8;
		char offset=1<<remainder;
		if((block_map0[quotient]&offset)==0)
		{
			*block_id=tmp;
			return true;
		}
	}
	for(tmp=0;tmp<BIT_PER_BLOCK;tmp++)
	{
		int remainder=tmp%8;
		int quotient=tmp/8;
		char offset=1<<remainder;
		if((block_map1[quotient]&offset)==0)
		{
			*block_id=tmp+BIT_PER_BLOCK;
			return true;
		}
	}
	return false;
}

bool read_block_map(block_id_t block_id)
{
	char block_map[BLOCK_SIZE];
	//disk_read(DBMAP_ID,block_map);
	//disk_read(DBMAP_ID+1,block_map+BLOCK_SIZE);
	int tmp=block_id/BIT_PER_BLOCK;
	disk_read(DBMAP_ID+tmp,block_map);
	int remainder=(block_id-tmp*BIT_PER_BLOCK)%8;
	int quotient=(block_id-tmp*BIT_PER_BLOCK)/8;
	char offset=1<<remainder;
	return !((block_map[quotient]&offset)==0);
}

void write_block_map(block_id_t block_id,bool flag)
{
	char block_map[BLOCK_SIZE];
	int tmp=block_id/BIT_PER_BLOCK;
	disk_read(DBMAP_ID+tmp,block_map);
	//disk_read(DBMAP_ID+1,block_map+BLOCK_SIZE);
	int remainder=(block_id-tmp*BIT_PER_BLOCK)%8;
	int quotient=(block_id-tmp*BIT_PER_BLOCK)/8;
	char offset=1<<remainder;
	if(flag)
	{
		block_map[quotient]|=offset;
		disk_write(DBMAP_ID+tmp,block_map);
		//disk_write(DBMAP_ID+1,block_map+BLOCK_SIZE);
	}
	else
	{
		offset=~offset;
		block_map[quotient]&=offset;
		disk_write(DBMAP_ID+tmp,block_map);
		//disk_write(DBMAP_ID+1,block_map+BLOCK_SIZE);
	}
}

void *get_buffer_from_inode(inode_t inode)
{
	if(inode.size==0)
		return NULL;
	int tmp_size=0;
	//char *buffer=(char*)malloc(inode.size);
	void *buffer=(void*)malloc((inode.size+BLOCK_SIZE-1)/BLOCK_SIZE*BLOCK_SIZE);
	void *p=buffer;
	//strcpy(buffer,'');
	//memset(buffer,0,inode.size);
	//printf("get buffer:");
	for(int i=0;i<inode.directPtr_num&&tmp_size<inode.size;i++)
	{
		//char tmp[BLOCK_SIZE];
		//printf(" %d",inode.directPtr[i]);
		disk_read(inode.directPtr[i],p);
		//inode_t* tmp=(inode_t*)p;
		//printf("%d\n",tmp->directPtr[0]);
		//strcat(buffer,tmp);
		//p+=((inode.size-tmp_size)<BLOCK_SIZE)?(inode.size-tmp_size):BLOCK_SIZE;
		p+=BLOCK_SIZE;
		tmp_size+=BLOCK_SIZE;
	}
	//p+=1;
	//inode_t* tmp=(inode_t*)buffer;
	//printf("%d\n",tmp[1].directPtr[0]);
	//for(int i=0;i<inode.indirectPtr_num&&tmp_size<inode.size;i++)
	//{
		//printf("indirect pointer: %d.",inode.indirectPtr);
		block_id_t indirect_pointers[BLOCK_SIZE/sizeof(block_id_t)];
		disk_read(inode.indirectPtr,indirect_pointers);
		for(int j=0;j<inode.indirectPtr_num_in_block&&tmp_size<inode.size;j++)
		{
			//char tmp[BLOCK_SIZE];
			//printf(" %d",indirect_pointers[j]);
			disk_read(indirect_pointers[j],p);
			//strcat(buffer,tmp);
			//p+=((inode.size-tmp_size)<BLOCK_SIZE)?(inode.size-tmp_size):BLOCK_SIZE;
			p+=BLOCK_SIZE;
			tmp_size+=BLOCK_SIZE;
		}
	//}
	//printf("\n");
	void *ret_buffer=(void*)malloc(inode.size);
	memcpy(ret_buffer,buffer,inode.size);
	free(buffer);
	return ret_buffer;
}

int get_entry(entry_t *entry,inode_t inode,const char *path,size_t name_length)
{
	char file_name[FILE_NAME_LENGTH];
	memset(file_name,0,FILE_NAME_LENGTH);
	memcpy(file_name,path,name_length);
	//printf("%s %d %d\n",file_name,name_length,inode.size);
	int file_number=inode.size/sizeof(entry_t);
	entry_t *file=get_buffer_from_inode(inode);
	for(int i=0;i<file_number;i++)
	{
		//printf("file %d: %s %d\n",i,file[i].name,strlen(file[i].name));
		if(memcmp(file_name,file[i].name,FILE_NAME_LENGTH)==0)
		{
			*entry=file[i];
			free(file);
			return 1;
		}
	}
	free(file);
	return 0;
}


int find_inode_by_path(const char *path,inode_t *inode,inode_id_t *inode_id) 
{
    *inode=read_inode(ROOT_INODE);
	if (inode_id) *inode_id=ROOT_INODE;
    while (true) {
        if (*path == '/') path++;
        if (!*path) break;
        size_t name_length=strchrnul(path, '/')-path;
        if (inode->mode!=DIRMODE)
			return -ENOTDIR;
        entry_t entry;
		int error=get_entry(&entry,*inode,path,name_length);
        if (error) {
            *inode=read_inode(entry.inode_id);
			if(!read_inode_map(entry.inode_id))
			{
				//printf("inode not exist.\n");
				return -ENOENT;
			}
            if (inode_id) *inode_id=entry.inode_id;
            path+=name_length;
        } 
		else 
		{
			//printf("entry not exist.\n");
			return -ENOENT;
		}
    }

    return 0;
}

int find_parent_inode_by_path(const char *path,inode_t *parent_inode,inode_id_t *parent_inode_id,char child_path[FILE_NAME_LENGTH]) 
{
/*    inode_t inode=read_inode(ROOT_INODE);
	inode_id_t inode_id=ROOT_INODE;
	//if (inode_id) *inode_id=ROOT_INODE;
    while (true) {
        if (*path=='/') path++;
        if (!*path) break;
        size_t name_length=strchrnul(path, '/')-path;
        if (inode.mode!=DIRMODE)
			return -ENOTDIR;
		*parent_inode=inode;
        if (parent_inode_id) *parent_inode_id=inode_id;
        entry_t *entry=get_entry(inode,path,name_length);
        if (entry) {
            inode=read_inode(entry->inode_id);
			if(!read_inode_map(entry->inode_id))
				return -ENOENT;
            if (parent_inode_id) inode_id=entry->inode_id;
			memset(child_path,0,FILE_NAME_LENGTH);
        	strncpy(child_path,path,name_length);
            path+=name_length;
        } 
		else 
			return -ENOENT;
    }
*/
	size_t child_path_length=path+strlen(path)-strrchr(path,'/');
	memset(child_path,0,FILE_NAME_LENGTH);
    strncpy(child_path,strrchr(path,'/')+1,child_path_length);
	if(strrchr(path,'/')-path==0)
	{
		*parent_inode=read_inode(ROOT_INODE);
		*parent_inode_id=ROOT_INODE;
		return 0;
	}
	else
	{
		//char parent_path[strrchr(path,'/')-path];
		size_t parent_path_length=strrchr(path,'/')-path;
		char *parent_path=(char*)malloc(parent_path_length+1);
		memcpy(parent_path,path,parent_path_length);
		//parent_path=(void*)realloc(parent_path,parent_path_length);
		parent_path[parent_path_length]='\0';
		//printf(":%s %s %d %d\n",parent_path,path,strlen(parent_path),parent_path_length);
    	int error=find_inode_by_path((const char*)parent_path,parent_inode,parent_inode_id);
		free(parent_path);
		return error;
	}
}

//Format the virtual block device in the following function
int mkfs()
{
	//printf("init0\n");
	init_fs();
	//printf("init\n");
	//printf("%d\n",read_block_map(4096*8+2));
	//char block[8192];
	//disk_read(DBMAP_ID+1,block+4096);
	//printf("%d\n",block[0]);
	write_inode_map(ROOT_INODE,1);
	//inode_init(ROOT_INODE,DIRMODE);
	inode_init(ROOT_INODE,DIRMODE);
	superblock_t superblock;
	disk_read(SUPERBLOCK_ID,&superblock);
	superblock.free_inode_num--;
	disk_write(SUPERBLOCK_ID,&superblock);
	return 0;
}

//Filesystem operations that you need to implement
int fs_getattr (const char *path, struct stat *attr)
{
	//printf("Getattr is called:%s\n",path);
	inode_t inode;
	int error=find_inode_by_path(path,&inode,NULL);
	//printf("%d.\n",error);
	if(error<0)
		return error;
	else
	{
		attr->st_mode=inode.mode;
        attr->st_nlink=1;
        attr->st_uid=getuid();
        attr->st_gid=getgid();
        attr->st_size=inode.size;
        attr->st_atime=inode.atime;
        attr->st_mtime=inode.mtime;
        attr->st_ctime=inode.ctime;
	}
	return 0;
}

int fs_readdir(const char *path, void *buffer, fuse_fill_dir_t filler, off_t offset, struct fuse_file_info *fi)
{
	//printf("Readdir is called:%s\n", path);
	inode_t inode;
	inode_id_t inode_id;
	int error=find_inode_by_path(path,&inode,&inode_id);
	if(error<0)
		return error;
	if (inode.mode!=DIRMODE)
		return -ENOTDIR;
	int file_number=inode.size/sizeof(entry_t);
	entry_t *file=get_buffer_from_inode(inode);
	for(int i=0;i<file_number;i++)
	{
		static char name_buffer[FILE_NAME_LENGTH + 1];
        memcpy(name_buffer, file[i].name, FILE_NAME_LENGTH);
        filler(buffer, name_buffer, NULL, 0);
	}
	free(file);
	inode.atime=time(NULL);
	write_inode(inode_id,inode);
	return 0;
}

int fs_read(const char *path, char *buffer, size_t size, off_t offset, struct fuse_file_info *fi)
{
	//printf("Read is called:%s\n",path);
	inode_t inode;
	inode_id_t inode_id;
	int error=find_inode_by_path(path,&inode,&inode_id);
	if(error<0)
		return error;
	if (inode.mode!=REGMODE)
		return -EISDIR;
	off_t ret_size=(inode.size-offset)<size?(inode.size-offset):size;
	void *p=get_buffer_from_inode(inode);
	//buffer+=offset;
	memcpy(buffer,p+offset,ret_size);
	free(p);
	inode.atime=time(NULL);
	write_inode(inode_id,inode);
	return ret_size;
}

int inode_block_add(inode_t inode,inode_id_t inode_id,void* buffer,off_t add_size)
{
	//printf("%d..\n",inode.size+add_size);
	if((inode.size+add_size)>((BLOCK_SIZE/sizeof(block_id_t)+MAX_DIRECT_PTR_NUM)*BLOCK_SIZE))
		return -ENOSPC;
	//printf("cc  ");
	block_id_t pointers[BLOCK_SIZE/sizeof(block_id_t)+MAX_DIRECT_PTR_NUM];
	memcpy(pointers,inode.directPtr,inode.directPtr_num*sizeof(block_id_t));
	if(inode.indirectPtr_num_in_block>0)
		disk_read(inode.indirectPtr,pointers+inode.directPtr_num);
	int total_pointer_num=inode.directPtr_num+inode.indirectPtr_num_in_block;
	superblock_t superblock;
	disk_read(SUPERBLOCK_ID,&superblock);
	//printf("bb");
	if(inode.size%BLOCK_SIZE==0)
	{
		//printf("aaaa");
		void *p=buffer;
		off_t tmp_size=0;
		while(tmp_size<add_size)
		{
			if(!find_free_block(&pointers[total_pointer_num]))
				return -ENOSPC;
		//printf(" %d",inode.directPtr[inode.directPtr_num]);
			disk_write(pointers[total_pointer_num],p);
			write_block_map(pointers[total_pointer_num],1);
			superblock.free_data_block_num--;
			total_pointer_num++;
			p+=BLOCK_SIZE;
			tmp_size+=BLOCK_SIZE;
		}
	}
	else
	{
		off_t rest_size=inode.size-inode.size/BLOCK_SIZE*BLOCK_SIZE;
		//printf("rest size: %d.\n",rest_size);
		void *tmp_buffer=(void*)malloc((rest_size+add_size)>BLOCK_SIZE?(rest_size+add_size):BLOCK_SIZE);
		disk_read(pointers[total_pointer_num-1],tmp_buffer);
		memcpy(tmp_buffer+rest_size,buffer,add_size);
		disk_write(pointers[total_pointer_num-1],tmp_buffer);
		void *p=tmp_buffer+BLOCK_SIZE;
		off_t tmp_size=BLOCK_SIZE;
		while(tmp_size<add_size+rest_size)
		{
			if(!find_free_block(&pointers[total_pointer_num]))
				return -ENOSPC;
		//printf(" %d",inode.directPtr[inode.directPtr_num]);
			disk_write(pointers[total_pointer_num],p);
			write_block_map(pointers[total_pointer_num],1);
			superblock.free_data_block_num--;
			total_pointer_num++;
			p+=BLOCK_SIZE;
			tmp_size+=BLOCK_SIZE;
		}		
		free(tmp_buffer);
	}
	inode.directPtr_num=(MAX_DIRECT_PTR_NUM<total_pointer_num)?MAX_DIRECT_PTR_NUM:total_pointer_num;
	memcpy(inode.directPtr,pointers,inode.directPtr_num*sizeof(block_id_t));
	if(inode.indirectPtr_num_in_block==0&&total_pointer_num>MAX_DIRECT_PTR_NUM)
	{
		if(!find_free_block(&inode.indirectPtr))
			return -ENOSPC;
		write_block_map(inode.indirectPtr,1);
		superblock.free_data_block_num--;
	}
	inode.indirectPtr_num_in_block=(total_pointer_num>MAX_DIRECT_PTR_NUM)?(total_pointer_num-MAX_DIRECT_PTR_NUM):0;
	if(inode.indirectPtr_num_in_block>0)
		disk_write(inode.indirectPtr,pointers+MAX_DIRECT_PTR_NUM);
	inode.size+=add_size;
	inode.ctime=time(NULL);
	inode.mtime=time(NULL);
	write_inode(inode_id,inode);
	//printf("realloc1\n");
	disk_write(SUPERBLOCK_ID,&superblock);
	return 0;
}

int inode_block_realloc(inode_t inode,inode_id_t inode_id,void* buffer,off_t new_size)
{
	if(new_size>2048*BLOCK_SIZE)
		return -ENOSPC;
	superblock_t superblock;
	disk_read(SUPERBLOCK_ID,&superblock);
	for(unsigned short i=0;i<inode.directPtr_num;i++)
	{
		write_block_map(inode.directPtr[i],0);
		superblock.free_data_block_num++;
	}
	block_id_t indirect_block_id[BLOCK_SIZE/sizeof(block_id_t)];
	disk_read(inode.indirectPtr,indirect_block_id);
	for(unsigned short i=0;i<inode.indirectPtr_num_in_block;i++)
	{
		write_block_map(indirect_block_id[i],0);
		superblock.free_data_block_num++;
	}
	if(inode.indirectPtr_num_in_block>0)
	{
		write_block_map(inode.indirectPtr,0);
		superblock.free_data_block_num++;
	}
	inode.directPtr_num=0;
	inode.indirectPtr_num_in_block=0;
	inode.size=new_size;
	off_t tmp_size=0;
	void *tmp_block=(void*)malloc((new_size+BLOCK_SIZE-1)/BLOCK_SIZE*BLOCK_SIZE);
	memcpy(tmp_block,buffer,new_size);
	void *p=tmp_block;
	//int block_count=0;
	while(tmp_size<new_size&&inode.directPtr_num<MAX_DIRECT_PTR_NUM)
	{
		if(!find_free_block(&inode.directPtr[inode.directPtr_num]))
			return -ENOSPC;
		disk_write(inode.directPtr[inode.directPtr_num],p);
		write_block_map(inode.directPtr[inode.directPtr_num],1);
		superblock.free_data_block_num--;
		inode.directPtr_num++;
		p+=BLOCK_SIZE;
		tmp_size+=BLOCK_SIZE;
	}
	if(tmp_size<new_size)
	{
		if(!find_free_block(&inode.indirectPtr))
			return -ENOSPC;
		write_block_map(inode.indirectPtr,1);
		block_id_t tmp_indirect_block_id[BLOCK_SIZE/sizeof(block_id_t)];
		memset(tmp_indirect_block_id,0,BLOCK_SIZE);
		while(tmp_size<new_size)
		{
			if(!find_free_block(&tmp_indirect_block_id[inode.indirectPtr_num_in_block]))
				return -ENOSPC;
			disk_write(tmp_indirect_block_id[inode.indirectPtr_num_in_block],p);
			write_block_map(tmp_indirect_block_id[inode.indirectPtr_num_in_block],1);
			superblock.free_data_block_num--;
			inode.indirectPtr_num_in_block++;
			p+=BLOCK_SIZE;
			tmp_size+=BLOCK_SIZE;
		}
		disk_write(inode.indirectPtr,tmp_indirect_block_id);
		
		superblock.free_data_block_num--;
	}
	inode.mtime=time(NULL);
	inode.ctime=time(NULL);
	write_inode(inode_id,inode);
	disk_write(SUPERBLOCK_ID,&superblock);
	free(tmp_block);
	return 0;
}

int add_entry(inode_t parent_inode,inode_id_t parent_inode_id,entry_t entry)
{
	void *buffer=get_buffer_from_inode(parent_inode);
	off_t new_size=parent_inode.size+sizeof(entry);
	buffer=(void*)realloc(buffer,new_size);
	void *p=buffer+parent_inode.size;
	memcpy(p,(void*)&entry,sizeof(entry));
	int error=inode_block_realloc(parent_inode,parent_inode_id,buffer,new_size);
	free(buffer);
	return error;
}

int make_new_file(const char *path, mode_t mode)
{
	//printf("%s\n",path);
	inode_id_t new_inode_id;
	block_id_t new_block_id;
	if(!find_free_inode(&new_inode_id)||!find_free_block(&new_block_id))
		return -ENOSPC;
	//printf(" %d ",new_inode_id);
	inode_init(new_inode_id,mode);
	write_inode_map(new_inode_id,1);
	superblock_t superblock;
	disk_read(SUPERBLOCK_ID,&superblock);
	superblock.free_inode_num--;
	disk_write(SUPERBLOCK_ID,&superblock);
	inode_id_t parent_inode_id;
	inode_t parent_inode;
	char child_path[FILE_NAME_LENGTH];
	int error=find_parent_inode_by_path(path,&parent_inode,&parent_inode_id,child_path);
	//printf("%d %d %s\n",error,parent_inode_id,child_path);
	if(error<0)
		return error;
	entry_t entry;
	entry.inode_id=new_inode_id;
	memcpy(entry.name,child_path,FILE_NAME_LENGTH);
	//return add_entry(parent_inode,parent_inode_id,entry);
	return inode_block_add(parent_inode,parent_inode_id,&entry,sizeof(entry_t));
}

int fs_mknod (const char *path, mode_t mode, dev_t dev)
{
	//printf("Mknod is called:%s\n",path);
	return make_new_file(path,REGMODE);
}

int fs_mkdir (const char *path, mode_t mode)
{
	//printf("Mkdir is called:%s\n",path);
	//printf("%s\n",path);
	int error=make_new_file(path,DIRMODE);
	/*if(error<0)
		return error;
	inode_t inode=read_inode(ROOT_INODE);
	entry_t *entry=get_buffer_from_inode(inode);
    int num=inode.size/sizeof(entry_t);
	printf("%d %d\n",inode.size,num);
	for(int i=0;i<inode.directPtr_num;i++)
		printf("%d\n",inode.directPtr[i]);
    for(int i=0;i<num;i++)
        printf("%d %s\n",entry[i].inode_id,entry[i].name);
	free(entry);*/
	return error;
}

int delete_file(const char *path)
{
	inode_t inode;
	inode_id_t inode_id;
	int error=find_inode_by_path(path,&inode,&inode_id);	
	if(error<0)
		return error;
	inode_id_t parent_inode_id;
	inode_t parent_inode;
	char child_path[FILE_NAME_LENGTH];
	error=find_parent_inode_by_path(path,&parent_inode,&parent_inode_id,child_path);
	//printf("%d %d %s\n",error,parent_inode_id,child_path);
	if(error<0)
		return error;
	entry_t *entry=get_buffer_from_inode(parent_inode);
	int file_number=parent_inode.size/sizeof(entry_t);
	int i;
	for(i=0;i<file_number;i++)
	{
		if(memcmp(child_path,entry[i].name,FILE_NAME_LENGTH)==0)
			break;
	}
	memmove(entry+i,entry+i+1,(file_number-i-1)*sizeof(entry_t));
	inode_block_realloc(parent_inode,parent_inode_id,entry,parent_inode.size-sizeof(entry_t));
	free(entry);
	inode_block_realloc(inode,inode_id,NULL,0);
	write_inode_map(inode_id,0);
	superblock_t superblock;
	disk_read(SUPERBLOCK_ID,&superblock);
	superblock.free_inode_num++;
	disk_write(SUPERBLOCK_ID,&superblock);
	return 0;
}

int fs_rmdir (const char *path)
{
	//printf("Rmdir is called:%s\n",path);
	return delete_file(path);
}

int fs_unlink (const char *path)
{
	//printf("Unlink is callded:%s\n",path);
	return delete_file(path);
}

int fs_rename (const char *oldpath, const char *newname)
{
	//printf("Rename is called:%s\n",newname);
	//printf("%s %s\n",oldpath,newname);
	if(strcmp(oldpath, newname)==0) return 0;
    fs_unlink(newname);
	inode_t old_parent_inode,new_parent_inode;
	inode_id_t old_parent_inode_id,new_parent_inode_id;
	char old_child_name[FILE_NAME_LENGTH],new_child_name[FILE_NAME_LENGTH];
	int error=find_parent_inode_by_path(oldpath,&old_parent_inode,&old_parent_inode_id,old_child_name);
	//printf("%s %d\n",old_child_name,error);
	if(error<0)	return error;
	error=find_parent_inode_by_path(newname,&new_parent_inode,&new_parent_inode_id,new_child_name);
	//printf("%s %d\n",new_child_name,error);
	if(error<0)	return error;
	//printf("%s %s\n",old_child_name,new_child_name);
	inode_t inode;
	inode_id_t inode_id;
	error=find_inode_by_path(oldpath,&inode,&inode_id);
	//printf("%d %d\n",inode_id,error);
	if(error<0)	return error;
	inode.atime=time(NULL);
	inode.mtime=time(NULL);
	write_inode(inode_id,inode);

	entry_t *entry=get_buffer_from_inode(old_parent_inode);
	int file_number=old_parent_inode.size/sizeof(entry_t);
	int i;
	for(i=0;i<file_number;i++)
	{
		if(memcmp(old_child_name,entry[i].name,FILE_NAME_LENGTH)==0)
			break;
	}
	if(new_parent_inode_id==old_parent_inode_id)
	{
		
		memcpy(entry[i].name,new_child_name,FILE_NAME_LENGTH);
		inode_block_realloc(old_parent_inode,old_parent_inode_id,entry,old_parent_inode.size);
		free(entry);
		return 0;
	}
	else
	{
		entry_t new_entry=entry[i];
		memmove(entry+i,entry+i+1,(file_number-i-1)*sizeof(entry_t));
		inode_block_realloc(old_parent_inode,old_parent_inode_id,entry,old_parent_inode.size-sizeof(entry_t));
		//printf("freee");
		free(entry);
		//printf("freee");
		memcpy(new_entry.name,new_child_name,FILE_NAME_LENGTH);
		return add_entry(new_parent_inode,new_parent_inode_id,new_entry);
	}
	
	//return 0;
}

int fs_write (const char *path, const char *buffer, size_t size, off_t offset, struct fuse_file_info *fi)
{
	//printf("Write is called:%s\n",path);
	//printf("%d %d\n",size,offset);
	
	inode_id_t inode_id;
	inode_t inode;
	//printf("find file");
	int error=find_inode_by_path(path,&inode,&inode_id);
	//printf("wirte error:%d\n",error);
	if(error==-ENOENT)
	{
		//printf("file not exist");
		int error=make_new_file(path,REGMODE);
		if(error<0)	return 0;
		error=find_inode_by_path(path,&inode,&inode_id);
		if(error<0)	return 0;
	}
	else if(error<0)	return 0;
	//printf("%d %d.\n",offset,inode.size);
	//if(offset==inode.size)
	//	return inode_block_add(inode,inode_id,(void*)buffer,size);
	//printf("%d %d.\n",offset,inode.size);
	off_t new_size=(inode.size>(size+offset))?inode.size:(size+offset);
	char *p=get_buffer_from_inode(inode);
	p=(char*)realloc(p,new_size);
	char *p_=p+offset;
	memcpy(p_,buffer,size);
	//printf("%s\n",p);
	error=inode_block_realloc(inode,inode_id,p,new_size);
	free(p);
	if(error<0)
		return 0;
	else
		return size;
}

int fs_truncate (const char *path, off_t size)
{
	//printf("Truncate is called:%s\n",path);
	inode_id_t inode_id;
	inode_t inode;
	int error=find_inode_by_path(path,&inode,&inode_id);
	//printf("%d %d.,\n",error,inode_id);
	if(error==-ENOENT)
	{
		int error=make_new_file(path,REGMODE);
		if(error<0)	return 0;
		error=find_inode_by_path(path,&inode,&inode_id);
		if(error<0)	return 0;
	}
	if(error<0)	return error;
	//printf("%d\n",inode_id);
	void *buffer=get_buffer_from_inode(inode);
	if(inode.size<size)
		buffer=(void*)realloc(buffer,size);
	error=inode_block_realloc(inode,inode_id,buffer,size);
	free(buffer);
	//printf("%d\n",inode_id);
	return error;
}

int fs_utime (const char *path, struct utimbuf *buffer)
{
	//printf("Utime is called:%s\n",path);
	inode_t inode;
	inode_id_t inode_id;
	int error=find_inode_by_path(path,&inode,&inode_id);
	if(error==-ENOENT)
	{
		int error=make_new_file(path,REGMODE);
		if(error<0)	return 0;
		error=find_inode_by_path(path,&inode,&inode_id);
		if(error<0)	return 0;
	}
	if(error<0)	return error;
    inode.atime = buffer->actime;
    inode.mtime = buffer->modtime;
	inode.ctime = time(NULL);
	write_inode(inode_id,inode);
	return 0;
}

int fs_statfs (const char *path, struct statvfs *stat)
{
	//printf("Statfs is called:%s\n",path);
	/*int free_inode_num=0,free_block_num=0;
	for(inode_id_t i=0;i<INODE_NUM;i++)
	{
		if(!read_inode_map(i))
			free_inode_num++;
	}
	for(block_id_t i=0;i<BLOCK_NUM;i++)
	{
		if(!read_block_map(i))
			free_block_num++;
	}*/
	superblock_t superblock;
	disk_read(SUPERBLOCK_ID,&superblock);
	//printf("%d %d %d\n",superblock.free_data_block_num,superblock.free_inode_num,sizeof(superblock_t));
	stat->f_bsize=BLOCK_SIZE;
    stat->f_blocks=BLOCK_NUM-DATA_BLOCK_START_ID;
    stat->f_bavail=superblock.free_data_block_num;
	stat->f_bfree=superblock.free_data_block_num;
	//stat->f_bavail = stat->f_bfree = 0;
    stat->f_files=INODE_NUM;
    stat->f_ffree=superblock.free_inode_num;
	stat->f_favail=superblock.free_inode_num;
	//stat->f_ffree = stat->f_favail = 0;
    stat->f_namemax=FILE_NAME_LENGTH;
	return 0;
}

int fs_open (const char *path, struct fuse_file_info *fi)
{
	//printf("Open is called:%s\n",path);
	return 0;
}

//Functions you don't actually need to modify
int fs_release (const char *path, struct fuse_file_info *fi)
{
	//printf("Release is called:%s\n",path);
	return 0;
}

int fs_opendir (const char *path, struct fuse_file_info *fi)
{
	//printf("Opendir is called:%s\n",path);
	return 0;
}

int fs_releasedir (const char * path, struct fuse_file_info *fi)
{
	//printf("Releasedir is called:%s\n",path);
	return 0;
}

static struct fuse_operations fs_operations = {
	.getattr    = fs_getattr,
	.readdir    = fs_readdir,
	.read       = fs_read,
	.mkdir      = fs_mkdir,
	.rmdir      = fs_rmdir,
	.unlink     = fs_unlink,
	.rename     = fs_rename,
	.truncate   = fs_truncate,
	.utime      = fs_utime,
	.mknod      = fs_mknod,
	.write      = fs_write,
	.statfs     = fs_statfs,
	.open       = fs_open,
	.release    = fs_release,
	.opendir    = fs_opendir,
	.releasedir = fs_releasedir
};

int main(int argc, char *argv[])
{
	//printf("%d %d %d\n",sizeof(inode_t),sizeof(mode_t),sizeof(off_t));
	//printf("%d\n",INODE_BLOCK_NUM);
	/*inode_t a[2];
	a[1].directPtr_num=3;
	disk_write(3,a);
	char buffer[4096];
	disk_read(3,buffer);
	inode_t *b=(inode_t*)buffer;
	printf("%d\n",b[1].directPtr_num);*/
	
	if(disk_init())
	{
		printf("Can't open virtual disk!\n");
		return -1;
	}
	if(mkfs())
	{
		printf("Mkfs failed!\n");
		return -2;
	}
	/*char buffer[4096];
	disk_read(DBMAP_ID,buffer);
	int quotient=DATA_BLOCK_START_ID/sizeof(char);
	printf("%d %d\n",(int)buffer[quotient],(int)buffer[quotient-1]);
	char buffer[INODE_NUM/sizeof(char)];
	disk_read(IBMAP_ID,buffer);
	printf("%d\n",buffer[0]);*/
	/*char a[7]="sdffg";
	disk_write(259,a);
	disk_write(260,a);*/
	/*inode_t inode;
	inode.size=BLOCK_SIZE+sizeof(inode_t);
	inode.directPtr[0]=259;
	inode.directPtr[1]=260;
	inode.directPtr_num=2;
	disk_write(259,&inode);
	disk_write(260,&inode);
	inode_t *b=get_buffer_from_inode(inode);
	printf("%d\n",b[64].directPtr[1]);
	inode_t tmp;
	disk_read(260,&tmp);
	printf("%d\n",tmp.directPtr[0]);*/
	//superblock_t tmp_s;
	//disk_read(SUPERBLOCK_ID,&tmp_s);
	//printf("%d %d\n",tmp_s.free_data_block_num,tmp_s.free_inode_num);
	//for(int i=1;i<130;i++)
	//	write_inode_map(i,1);
    return fuse_main(argc, argv, &fs_operations, NULL);
}
