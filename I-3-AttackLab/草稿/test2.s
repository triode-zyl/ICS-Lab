movl $0x16e21314,%edi
movq $0x00005555555559fc,%rdx
pushq %rdx
ret



test.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <.text>:
   0:	bf 14 13 e2 16       	mov    $0x16e21314,%edi
   5:	48 ba fc 59 55 55 55 	movabs $0x5555555559fc,%rdx
   c:	55 00 00 
   f:	52                   	push   %rdx
  10:	c3                   	retq   

