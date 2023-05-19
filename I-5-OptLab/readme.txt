baseline.cpp
	本次实验你需要修改的主要程序
	主要有6个查询，大体上可以分为：
		有条件：1个整数加法，2个浮点数乘法、加法
		无条件：1个整数加法，2个浮点数乘法、加法
		
dataload.h 为 加载数据的程序
	除非你非常清楚你要干什么，否则不要修改
	
dbgen 为 数据生成程序
	在终端中输入 ./dbgen -s 0.1 -T l 可以生成我们需要的数据表格lineorder.tbl
	其中我们只需要关注 -s 后面的大小因子scale factor即可
	简单来说 scale factor 可以用来调整生成的表的大小
	我们最终测试的将不一定是整小数0.1,0.01类型
	不要试图通过if语句判断直接输出
	
	目前似乎有些bug，当你在进行试验时，请把上次生成的lineorder.tbl文件删除
	
VectorizedProcessing_SIMD_new.c
	为simd加速样例程序

最终提交时，提交修改后的程序即可
