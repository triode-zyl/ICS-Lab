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
	write_block_map(inode.indirectPtr,0);
	inode.directPtr_num=0;
	//inode.indirectPtr_num=0;
	inode.indirectPtr_num_in_block=0;
	inode.size=new_size;
	off_t tmp_size=0;
	//void *p=buffer;
	void *tmp_block=(void*)malloc((new_size+BLOCK_SIZE-1)/BLOCK_SIZE*BLOCK_SIZE);
	memcpy(tmp_block,buffer,new_size);
	void *p=tmp_block;
	//int block_count=0;
	//printf("realloc:");
	while(tmp_size<new_size&&inode.directPtr_num<MAX_DIRECT_PTR_NUM)
	{
		if(!find_free_block(&inode.directPtr[inode.directPtr_num]))
			return -ENOSPC;
		//printf(" %d",inode.directPtr[inode.directPtr_num]);
		disk_write(inode.directPtr[inode.directPtr_num],p);
		write_block_map(inode.directPtr[inode.directPtr_num],1);
		superblock.free_data_block_num--;
		inode.directPtr_num++;
		p+=BLOCK_SIZE;
		tmp_size+=BLOCK_SIZE;
	}
	//printf("\n");
	if(tmp_size<new_size)
	{
		if(!find_free_block(&inode.indirectPtr))
			return -ENOSPC;
		write_block_map(inode.indirectPtr,1);
		//printf("indirect pointer: %d.",inode.indirectPtr);
		block_id_t tmp_indirect_block_id[BLOCK_SIZE/sizeof(block_id_t)];
		memset(tmp_indirect_block_id,0,BLOCK_SIZE);
		while(tmp_size<new_size)
		{
			if(!find_free_block(&tmp_indirect_block_id[inode.indirectPtr_num_in_block]))
				return -ENOSPC;
			//printf(" %d",tmp_indirect_block_id[inode.indirectPtr_num_in_block]);
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
	//printf("realloc1\n");
	disk_write(SUPERBLOCK_ID,&superblock);
	//printf("realloc2\n");
	free(tmp_block);
	//printf("realloc3\n");
	return 0;
}