ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000000dc8 <_init>:
 dc8:   48 83 ec 08             sub    $0x8,%rsp
 dcc:   48 8b 05 15 42 20 00    mov    0x204215(%rip),%rax        # 204fe8 <__gmon_start__>
 dd3:   48 85 c0                test   %rax,%rax
 dd6:   74 02                   je     dda <_init+0x12>
 dd8:   ff d0                   callq  *%rax
 dda:   48 83 c4 08             add    $0x8,%rsp
 dde:   c3                      retq

Disassembly of section .plt:

0000000000000de0 <.plt>:
     de0:       ff 35 da 40 20 00       pushq  0x2040da(%rip)        # 204ec0 <_GLOBAL_OFFSET_TABLE_+0x8>
     de6:       ff 25 dc 40 20 00       jmpq   *0x2040dc(%rip)        # 204ec8 <_GLOBAL_OFFSET_TABLE_+0x10>
     dec:       0f 1f 40 00             nopl   0x0(%rax)

0000000000000df0 <strcasecmp@plt>:
     df0:       ff 25 da 40 20 00       jmpq   *0x2040da(%rip)        # 204ed0 <strcasecmp@GLIBC_2.2.5>
     df6:       68 00 00 00 00          pushq  $0x0
     dfb:       e9 e0 ff ff ff          jmpq   de0 <.plt>

0000000000000e00 <__errno_location@plt>:
     e00:       ff 25 d2 40 20 00       jmpq   *0x2040d2(%rip)        # 204ed8 <__errno_location@GLIBC_2.2.5>
     e06:       68 01 00 00 00          pushq  $0x1
     e0b:       e9 d0 ff ff ff          jmpq   de0 <.plt>

0000000000000e10 <srandom@plt>:
     e10:       ff 25 ca 40 20 00       jmpq   *0x2040ca(%rip)        # 204ee0 <srandom@GLIBC_2.2.5>
     e16:       68 02 00 00 00          pushq  $0x2
     e1b:       e9 c0 ff ff ff          jmpq   de0 <.plt>

0000000000000e20 <strncmp@plt>:
     e20:       ff 25 c2 40 20 00       jmpq   *0x2040c2(%rip)        # 204ee8 <strncmp@GLIBC_2.2.5>
     e26:       68 03 00 00 00          pushq  $0x3
     e2b:       e9 b0 ff ff ff          jmpq   de0 <.plt>

0000000000000e30 <strcpy@plt>:
     e30:       ff 25 ba 40 20 00       jmpq   *0x2040ba(%rip)        # 204ef0 <strcpy@GLIBC_2.2.5>
     e36:       68 04 00 00 00          pushq  $0x4
     e3b:       e9 a0 ff ff ff          jmpq   de0 <.plt>

0000000000000e40 <puts@plt>:
     e40:       ff 25 b2 40 20 00       jmpq   *0x2040b2(%rip)        # 204ef8 <puts@GLIBC_2.2.5>
     e46:       68 05 00 00 00          pushq  $0x5
     e4b:       e9 90 ff ff ff          jmpq   de0 <.plt>

0000000000000e50 <write@plt>:
     e50:       ff 25 aa 40 20 00       jmpq   *0x2040aa(%rip)        # 204f00 <write@GLIBC_2.2.5>
     e56:       68 06 00 00 00          pushq  $0x6
     e5b:       e9 80 ff ff ff          jmpq   de0 <.plt>

0000000000000e60 <__stack_chk_fail@plt>:
     e60:       ff 25 a2 40 20 00       jmpq   *0x2040a2(%rip)        # 204f08 <__stack_chk_fail@GLIBC_2.4>
     e66:       68 07 00 00 00          pushq  $0x7
     e6b:       e9 70 ff ff ff          jmpq   de0 <.plt>

0000000000000e70 <mmap@plt>:
     e70:       ff 25 9a 40 20 00       jmpq   *0x20409a(%rip)        # 204f10 <mmap@GLIBC_2.2.5>
     e76:       68 08 00 00 00          pushq  $0x8
     e7b:       e9 60 ff ff ff          jmpq   de0 <.plt>

0000000000000e80 <memset@plt>:
     e80:       ff 25 92 40 20 00       jmpq   *0x204092(%rip)        # 204f18 <memset@GLIBC_2.2.5>
     e86:       68 09 00 00 00          pushq  $0x9
     e8b:       e9 50 ff ff ff          jmpq   de0 <.plt>

0000000000000e90 <alarm@plt>:
     e90:       ff 25 8a 40 20 00       jmpq   *0x20408a(%rip)        # 204f20 <alarm@GLIBC_2.2.5>
     e96:       68 0a 00 00 00          pushq  $0xa
     e9b:       e9 40 ff ff ff          jmpq   de0 <.plt>

0000000000000ea0 <close@plt>:
     ea0:       ff 25 82 40 20 00       jmpq   *0x204082(%rip)        # 204f28 <close@GLIBC_2.2.5>
     ea6:       68 0b 00 00 00          pushq  $0xb
     eab:       e9 30 ff ff ff          jmpq   de0 <.plt>

0000000000000eb0 <read@plt>:
     eb0:       ff 25 7a 40 20 00       jmpq   *0x20407a(%rip)        # 204f30 <read@GLIBC_2.2.5>
     eb6:       68 0c 00 00 00          pushq  $0xc
     ebb:       e9 20 ff ff ff          jmpq   de0 <.plt>

0000000000000ec0 <signal@plt>:
     ec0:       ff 25 72 40 20 00       jmpq   *0x204072(%rip)        # 204f38 <signal@GLIBC_2.2.5>
     ec6:       68 0d 00 00 00          pushq  $0xd
     ecb:       e9 10 ff ff ff          jmpq   de0 <.plt>

0000000000000ed0 <gethostbyname@plt>:
     ed0:       ff 25 6a 40 20 00       jmpq   *0x20406a(%rip)        # 204f40 <gethostbyname@GLIBC_2.2.5>
     ed6:       68 0e 00 00 00          pushq  $0xe
     edb:       e9 00 ff ff ff          jmpq   de0 <.plt>

0000000000000ee0 <__memmove_chk@plt>:
     ee0:       ff 25 62 40 20 00       jmpq   *0x204062(%rip)        # 204f48 <__memmove_chk@GLIBC_2.3.4>
     ee6:       68 0f 00 00 00          pushq  $0xf
     eeb:       e9 f0 fe ff ff          jmpq   de0 <.plt>

0000000000000ef0 <strtol@plt>:
     ef0:       ff 25 5a 40 20 00       jmpq   *0x20405a(%rip)        # 204f50 <strtol@GLIBC_2.2.5>
     ef6:       68 10 00 00 00          pushq  $0x10
     efb:       e9 e0 fe ff ff          jmpq   de0 <.plt>

0000000000000f00 <memcpy@plt>:
     f00:       ff 25 52 40 20 00       jmpq   *0x204052(%rip)        # 204f58 <memcpy@GLIBC_2.14>
     f06:       68 11 00 00 00          pushq  $0x11
     f0b:       e9 d0 fe ff ff          jmpq   de0 <.plt>

0000000000000f10 <time@plt>:
     f10:       ff 25 4a 40 20 00       jmpq   *0x20404a(%rip)        # 204f60 <time@GLIBC_2.2.5>
     f16:       68 12 00 00 00          pushq  $0x12
     f1b:       e9 c0 fe ff ff          jmpq   de0 <.plt>

0000000000000f20 <random@plt>:
     f20:       ff 25 42 40 20 00       jmpq   *0x204042(%rip)        # 204f68 <random@GLIBC_2.2.5>
     f26:       68 13 00 00 00          pushq  $0x13
     f2b:       e9 b0 fe ff ff          jmpq   de0 <.plt>

0000000000000f30 <_IO_getc@plt>:
     f30:       ff 25 3a 40 20 00       jmpq   *0x20403a(%rip)        # 204f70 <_IO_getc@GLIBC_2.2.5>
     f36:       68 14 00 00 00          pushq  $0x14
     f3b:       e9 a0 fe ff ff          jmpq   de0 <.plt>

0000000000000f40 <__isoc99_sscanf@plt>:
     f40:       ff 25 32 40 20 00       jmpq   *0x204032(%rip)        # 204f78 <__isoc99_sscanf@GLIBC_2.7>
     f46:       68 15 00 00 00          pushq  $0x15
     f4b:       e9 90 fe ff ff          jmpq   de0 <.plt>

0000000000000f50 <munmap@plt>:
     f50:       ff 25 2a 40 20 00       jmpq   *0x20402a(%rip)        # 204f80 <munmap@GLIBC_2.2.5>
     f56:       68 16 00 00 00          pushq  $0x16
     f5b:       e9 80 fe ff ff          jmpq   de0 <.plt>

0000000000000f60 <__printf_chk@plt>:
     f60:       ff 25 22 40 20 00       jmpq   *0x204022(%rip)        # 204f88 <__printf_chk@GLIBC_2.3.4>
     f66:       68 17 00 00 00          pushq  $0x17
     f6b:       e9 70 fe ff ff          jmpq   de0 <.plt>

0000000000000f70 <fopen@plt>:
     f70:       ff 25 1a 40 20 00       jmpq   *0x20401a(%rip)        # 204f90 <fopen@GLIBC_2.2.5>
     f76:       68 18 00 00 00          pushq  $0x18
     f7b:       e9 60 fe ff ff          jmpq   de0 <.plt>

0000000000000f80 <getopt@plt>:
     f80:       ff 25 12 40 20 00       jmpq   *0x204012(%rip)        # 204f98 <getopt@GLIBC_2.2.5>
     f86:       68 19 00 00 00          pushq  $0x19
     f8b:       e9 50 fe ff ff          jmpq   de0 <.plt>

0000000000000f90 <strtoul@plt>:
     f90:       ff 25 0a 40 20 00       jmpq   *0x20400a(%rip)        # 204fa0 <strtoul@GLIBC_2.2.5>
     f96:       68 1a 00 00 00          pushq  $0x1a
     f9b:       e9 40 fe ff ff          jmpq   de0 <.plt>

0000000000000fa0 <gethostname@plt>:
     fa0:       ff 25 02 40 20 00       jmpq   *0x204002(%rip)        # 204fa8 <gethostname@GLIBC_2.2.5>
     fa6:       68 1b 00 00 00          pushq  $0x1b
     fab:       e9 30 fe ff ff          jmpq   de0 <.plt>

0000000000000fb0 <exit@plt>:
     fb0:       ff 25 fa 3f 20 00       jmpq   *0x203ffa(%rip)        # 204fb0 <exit@GLIBC_2.2.5>
     fb6:       68 1c 00 00 00          pushq  $0x1c
     fbb:       e9 20 fe ff ff          jmpq   de0 <.plt>

0000000000000fc0 <connect@plt>:
     fc0:       ff 25 f2 3f 20 00       jmpq   *0x203ff2(%rip)        # 204fb8 <connect@GLIBC_2.2.5>
     fc6:       68 1d 00 00 00          pushq  $0x1d
     fcb:       e9 10 fe ff ff          jmpq   de0 <.plt>

0000000000000fd0 <__fprintf_chk@plt>:
     fd0:       ff 25 ea 3f 20 00       jmpq   *0x203fea(%rip)        # 204fc0 <__fprintf_chk@GLIBC_2.3.4>
     fd6:       68 1e 00 00 00          pushq  $0x1e
     fdb:       e9 00 fe ff ff          jmpq   de0 <.plt>

0000000000000fe0 <__sprintf_chk@plt>:
     fe0:       ff 25 e2 3f 20 00       jmpq   *0x203fe2(%rip)        # 204fc8 <__sprintf_chk@GLIBC_2.3.4>
     fe6:       68 1f 00 00 00          pushq  $0x1f
     feb:       e9 f0 fd ff ff          jmpq   de0 <.plt>

0000000000000ff0 <socket@plt>:
     ff0:       ff 25 da 3f 20 00       jmpq   *0x203fda(%rip)        # 204fd0 <socket@GLIBC_2.2.5>
     ff6:       68 20 00 00 00          pushq  $0x20
     ffb:       e9 e0 fd ff ff          jmpq   de0 <.plt>

Disassembly of section .plt.got:

0000000000001000 <__cxa_finalize@plt>:
    1000:       ff 25 f2 3f 20 00       jmpq   *0x203ff2(%rip)        # 204ff8 <__cxa_finalize@GLIBC_2.2.5>
    1006:       66 90                   xchg   %ax,%ax

Disassembly of section .text:

0000000000001010 <_start>:
    1010:       31 ed                   xor    %ebp,%ebp
    1012:       49 89 d1                mov    %rdx,%r9
    1015:       5e                      pop    %rsi
    1016:       48 89 e2                mov    %rsp,%rdx
    1019:       48 83 e4 f0             and    $0xfffffffffffffff0,%rsp
    101d:       50                      push   %rax
    101e:       54                      push   %rsp
    101f:       4c 8d 05 4a 20 00 00    lea    0x204a(%rip),%r8        # 3070 <__libc_csu_fini>
    1026:       48 8d 0d d3 1f 00 00    lea    0x1fd3(%rip),%rcx        # 3000 <__libc_csu_init>
    102d:       48 8d 3d 0d 03 00 00    lea    0x30d(%rip),%rdi        # 1341 <main>
    1034:       ff 15 a6 3f 20 00       callq  *0x203fa6(%rip)        # 204fe0 <__libc_start_main@GLIBC_2.2.5>
    103a:       f4                      hlt
    103b:       0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)

0000000000001040 <deregister_tm_clones>:
    1040:       48 8d 3d 29 43 20 00    lea    0x204329(%rip),%rdi        # 205370 <__TMC_END__>
    1047:       55                      push   %rbp
    1048:       48 8d 05 21 43 20 00    lea    0x204321(%rip),%rax        # 205370 <__TMC_END__>
    104f:       48 39 f8                cmp    %rdi,%rax
    1052:       48 89 e5                mov    %rsp,%rbp
    1055:       74 19                   je     1070 <deregister_tm_clones+0x30>
    1057:       48 8b 05 7a 3f 20 00    mov    0x203f7a(%rip),%rax        # 204fd8 <_ITM_deregisterTMCloneTable>
    105e:       48 85 c0                test   %rax,%rax
    1061:       74 0d                   je     1070 <deregister_tm_clones+0x30>
    1063:       5d                      pop    %rbp
    1064:       ff e0                   jmpq   *%rax
    1066:       66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
    106d:       00 00 00
    1070:       5d                      pop    %rbp
    1071:       c3                      retq
    1072:       0f 1f 40 00             nopl   0x0(%rax)
    1076:       66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
    107d:       00 00 00

0000000000001080 <register_tm_clones>:
    1080:       48 8d 3d e9 42 20 00    lea    0x2042e9(%rip),%rdi        # 205370 <__TMC_END__>
    1087:       48 8d 35 e2 42 20 00    lea    0x2042e2(%rip),%rsi        # 205370 <__TMC_END__>
    108e:       55                      push   %rbp
    108f:       48 29 fe                sub    %rdi,%rsi
    1092:       48 89 e5                mov    %rsp,%rbp
    1095:       48 c1 fe 03             sar    $0x3,%rsi
    1099:       48 89 f0                mov    %rsi,%rax
    109c:       48 c1 e8 3f             shr    $0x3f,%rax
    10a0:       48 01 c6                add    %rax,%rsi
    10a3:       48 d1 fe                sar    %rsi
    10a6:       74 18                   je     10c0 <register_tm_clones+0x40>
    10a8:       48 8b 05 41 3f 20 00    mov    0x203f41(%rip),%rax        # 204ff0 <_ITM_registerTMCloneTable>
    10af:       48 85 c0                test   %rax,%rax
    10b2:       74 0c                   je     10c0 <register_tm_clones+0x40>
    10b4:       5d                      pop    %rbp
    10b5:       ff e0                   jmpq   *%rax
    10b7:       66 0f 1f 84 00 00 00    nopw   0x0(%rax,%rax,1)
    10be:       00 00
    10c0:       5d                      pop    %rbp
    10c1:       c3                      retq
    10c2:       0f 1f 40 00             nopl   0x0(%rax)
    10c6:       66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
    10cd:       00 00 00

00000000000010d0 <__do_global_dtors_aux>:
    10d0:       80 3d d1 42 20 00 00    cmpb   $0x0,0x2042d1(%rip)        # 2053a8 <completed.7697>
    10d7:       75 2f                   jne    1108 <__do_global_dtors_aux+0x38>
    10d9:       48 83 3d 17 3f 20 00    cmpq   $0x0,0x203f17(%rip)        # 204ff8 <__cxa_finalize@GLIBC_2.2.5>
    10e0:       00
    10e1:       55                      push   %rbp
    10e2:       48 89 e5                mov    %rsp,%rbp
    10e5:       74 0c                   je     10f3 <__do_global_dtors_aux+0x23>
    10e7:       48 8b 3d 1a 3f 20 00    mov    0x203f1a(%rip),%rdi        # 205008 <__dso_handle>
    10ee:       e8 0d ff ff ff          callq  1000 <__cxa_finalize@plt>
    10f3:       e8 48 ff ff ff          callq  1040 <deregister_tm_clones>
    10f8:       c6 05 a9 42 20 00 01    movb   $0x1,0x2042a9(%rip)        # 2053a8 <completed.7697>
    10ff:       5d                      pop    %rbp
    1100:       c3                      retq
    1101:       0f 1f 80 00 00 00 00    nopl   0x0(%rax)
    1108:       f3 c3                   repz retq
    110a:       66 0f 1f 44 00 00       nopw   0x0(%rax,%rax,1)

0000000000001110 <frame_dummy>:
    1110:       55                      push   %rbp
    1111:       48 89 e5                mov    %rsp,%rbp
    1114:       5d                      pop    %rbp
    1115:       e9 66 ff ff ff          jmpq   1080 <register_tm_clones>

000000000000111a <usage>:
    111a:       48 83 ec 08             sub    $0x8,%rsp
    111e:       48 89 fa                mov    %rdi,%rdx
    1121:       83 3d c0 42 20 00 00    cmpl   $0x0,0x2042c0(%rip)        # 2053e8 <is_checker>
    1128:       74 50                   je     117a <usage+0x60>
    112a:       48 8d 35 57 1f 00 00    lea    0x1f57(%rip),%rsi        # 3088 <_IO_stdin_used+0x8>
    1131:       bf 01 00 00 00          mov    $0x1,%edi
    1136:       b8 00 00 00 00          mov    $0x0,%eax
    113b:       e8 20 fe ff ff          callq  f60 <__printf_chk@plt>
    1140:       48 8d 3d 79 1f 00 00    lea    0x1f79(%rip),%rdi        # 30c0 <_IO_stdin_used+0x40>
    1147:       e8 f4 fc ff ff          callq  e40 <puts@plt>
    114c:       48 8d 3d e5 20 00 00    lea    0x20e5(%rip),%rdi        # 3238 <_IO_stdin_used+0x1b8>
    1153:       e8 e8 fc ff ff          callq  e40 <puts@plt>
    1158:       48 8d 3d 89 1f 00 00    lea    0x1f89(%rip),%rdi        # 30e8 <_IO_stdin_used+0x68>
    115f:       e8 dc fc ff ff          callq  e40 <puts@plt>
    1164:       48 8d 3d e7 20 00 00    lea    0x20e7(%rip),%rdi        # 3252 <_IO_stdin_used+0x1d2>
    116b:       e8 d0 fc ff ff          callq  e40 <puts@plt>
    1170:       bf 00 00 00 00          mov    $0x0,%edi
    1175:       e8 36 fe ff ff          callq  fb0 <exit@plt>
    117a:       48 8d 35 ed 20 00 00    lea    0x20ed(%rip),%rsi        # 326e <_IO_stdin_used+0x1ee>
    1181:       bf 01 00 00 00          mov    $0x1,%edi
    1186:       b8 00 00 00 00          mov    $0x0,%eax
    118b:       e8 d0 fd ff ff          callq  f60 <__printf_chk@plt>
    1190:       48 8d 3d 79 1f 00 00    lea    0x1f79(%rip),%rdi        # 3110 <_IO_stdin_used+0x90>
    1197:       e8 a4 fc ff ff          callq  e40 <puts@plt>
    119c:       48 8d 3d 95 1f 00 00    lea    0x1f95(%rip),%rdi        # 3138 <_IO_stdin_used+0xb8>
    11a3:       e8 98 fc ff ff          callq  e40 <puts@plt>
    11a8:       48 8d 3d dd 20 00 00    lea    0x20dd(%rip),%rdi        # 328c <_IO_stdin_used+0x20c>
    11af:       e8 8c fc ff ff          callq  e40 <puts@plt>
    11b4:       eb ba                   jmp    1170 <usage+0x56>

00000000000011b6 <initialize_target>:
    11b6:       55                      push   %rbp
    11b7:       53                      push   %rbx
    11b8:       48 81 ec 18 21 00 00    sub    $0x2118,%rsp
    11bf:       89 f5                   mov    %esi,%ebp
    11c1:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    11c8:       00 00
    11ca:       48 89 84 24 08 21 00    mov    %rax,0x2108(%rsp)
    11d1:       00
    11d2:       31 c0                   xor    %eax,%eax
    11d4:       89 3d fe 41 20 00       mov    %edi,0x2041fe(%rip)        # 2053d8 <check_level>
    11da:       8b 3d 30 3e 20 00       mov    0x203e30(%rip),%edi        # 205010 <target_id>
    11e0:       e8 f8 1d 00 00          callq  2fdd <gencookie>
    11e5:       89 05 f9 41 20 00       mov    %eax,0x2041f9(%rip)        # 2053e4 <cookie>
    11eb:       89 c7                   mov    %eax,%edi
    11ed:       e8 eb 1d 00 00          callq  2fdd <gencookie>
    11f2:       89 05 e8 41 20 00       mov    %eax,0x2041e8(%rip)        # 2053e0 <authkey>
    11f8:       8b 05 12 3e 20 00       mov    0x203e12(%rip),%eax        # 205010 <target_id>
    11fe:       8d 78 01                lea    0x1(%rax),%edi
    1201:       e8 0a fc ff ff          callq  e10 <srandom@plt>
    1206:       e8 15 fd ff ff          callq  f20 <random@plt>
    120b:       89 c7                   mov    %eax,%edi
    120d:       e8 1a 03 00 00          callq  152c <scramble>
    1212:       89 c3                   mov    %eax,%ebx
    1214:       85 ed                   test   %ebp,%ebp
    1216:       75 54                   jne    126c <initialize_target+0xb6>
    1218:       b8 00 00 00 00          mov    $0x0,%eax
    121d:       01 d8                   add    %ebx,%eax
    121f:       0f b7 c0                movzwl %ax,%eax
    1222:       8d 04 c5 00 01 00 00    lea    0x100(,%rax,8),%eax
    1229:       89 c0                   mov    %eax,%eax
    122b:       48 89 05 2e 41 20 00    mov    %rax,0x20412e(%rip)        # 205360 <buf_offset>
    1232:       c6 05 cf 4d 20 00 63    movb   $0x63,0x204dcf(%rip)        # 206008 <target_prefix>
    1239:       83 3d 28 41 20 00 00    cmpl   $0x0,0x204128(%rip)        # 205368 <notify>
    1240:       74 09                   je     124b <initialize_target+0x95>
    1242:       83 3d 9f 41 20 00 00    cmpl   $0x0,0x20419f(%rip)        # 2053e8 <is_checker>
    1249:       74 39                   je     1284 <initialize_target+0xce>
    124b:       48 8b 84 24 08 21 00    mov    0x2108(%rsp),%rax
    1252:       00
    1253:       64 48 33 04 25 28 00    xor    %fs:0x28,%rax
    125a:       00 00
    125c:       0f 85 da 00 00 00       jne    133c <initialize_target+0x186>
    1262:       48 81 c4 18 21 00 00    add    $0x2118,%rsp
    1269:       5b                      pop    %rbx
    126a:       5d                      pop    %rbp
    126b:       c3                      retq
    126c:       bf 00 00 00 00          mov    $0x0,%edi
    1271:       e8 9a fc ff ff          callq  f10 <time@plt>
    1276:       89 c7                   mov    %eax,%edi
    1278:       e8 93 fb ff ff          callq  e10 <srandom@plt>
    127d:       e8 9e fc ff ff          callq  f20 <random@plt>
    1282:       eb 99                   jmp    121d <initialize_target+0x67>
    1284:       48 89 e7                mov    %rsp,%rdi
    1287:       be 00 01 00 00          mov    $0x100,%esi
    128c:       e8 0f fd ff ff          callq  fa0 <gethostname@plt>
    1291:       89 c5                   mov    %eax,%ebp
    1293:       85 c0                   test   %eax,%eax
    1295:       75 26                   jne    12bd <initialize_target+0x107>
    1297:       89 c3                   mov    %eax,%ebx
    1299:       48 63 c3                movslq %ebx,%rax
    129c:       48 8d 15 9d 3d 20 00    lea    0x203d9d(%rip),%rdx        # 205040 <host_table>
    12a3:       48 8b 3c c2             mov    (%rdx,%rax,8),%rdi
    12a7:       48 85 ff                test   %rdi,%rdi
    12aa:       74 2c                   je     12d8 <initialize_target+0x122>
    12ac:       48 89 e6                mov    %rsp,%rsi
    12af:       e8 3c fb ff ff          callq  df0 <strcasecmp@plt>
    12b4:       85 c0                   test   %eax,%eax
    12b6:       74 1b                   je     12d3 <initialize_target+0x11d>
    12b8:       83 c3 01                add    $0x1,%ebx
    12bb:       eb dc                   jmp    1299 <initialize_target+0xe3>
    12bd:       48 8d 3d a4 1e 00 00    lea    0x1ea4(%rip),%rdi        # 3168 <_IO_stdin_used+0xe8>
    12c4:       e8 77 fb ff ff          callq  e40 <puts@plt>
    12c9:       bf 08 00 00 00          mov    $0x8,%edi
    12ce:       e8 dd fc ff ff          callq  fb0 <exit@plt>
    12d3:       bd 01 00 00 00          mov    $0x1,%ebp
    12d8:       85 ed                   test   %ebp,%ebp
    12da:       74 3d                   je     1319 <initialize_target+0x163>
    12dc:       48 8d bc 24 00 01 00    lea    0x100(%rsp),%rdi
    12e3:       00
    12e4:       e8 24 1a 00 00          callq  2d0d <init_driver>
    12e9:       85 c0                   test   %eax,%eax
    12eb:       0f 89 5a ff ff ff       jns    124b <initialize_target+0x95>
    12f1:       48 8d 94 24 00 01 00    lea    0x100(%rsp),%rdx
    12f8:       00
    12f9:       48 8d 35 e0 1e 00 00    lea    0x1ee0(%rip),%rsi        # 31e0 <_IO_stdin_used+0x160>
    1300:       bf 01 00 00 00          mov    $0x1,%edi
    1305:       b8 00 00 00 00          mov    $0x0,%eax
    130a:       e8 51 fc ff ff          callq  f60 <__printf_chk@plt>
    130f:       bf 08 00 00 00          mov    $0x8,%edi
    1314:       e8 97 fc ff ff          callq  fb0 <exit@plt>
    1319:       48 89 e2                mov    %rsp,%rdx
    131c:       48 8d 35 7d 1e 00 00    lea    0x1e7d(%rip),%rsi        # 31a0 <_IO_stdin_used+0x120>
    1323:       bf 01 00 00 00          mov    $0x1,%edi
    1328:       b8 00 00 00 00          mov    $0x0,%eax
    132d:       e8 2e fc ff ff          callq  f60 <__printf_chk@plt>
    1332:       bf 08 00 00 00          mov    $0x8,%edi
    1337:       e8 74 fc ff ff          callq  fb0 <exit@plt>
    133c:       e8 1f fb ff ff          callq  e60 <__stack_chk_fail@plt>

0000000000001341 <main>:
    1341:       41 56                   push   %r14
    1343:       41 55                   push   %r13
    1345:       41 54                   push   %r12
    1347:       55                      push   %rbp
    1348:       53                      push   %rbx
    1349:       41 89 fc                mov    %edi,%r12d
    134c:       48 89 f3                mov    %rsi,%rbx
    134f:       48 8d 35 be 0c 00 00    lea    0xcbe(%rip),%rsi        # 2014 <seghandler>
    1356:       bf 0b 00 00 00          mov    $0xb,%edi
    135b:       e8 60 fb ff ff          callq  ec0 <signal@plt>
    1360:       48 8d 35 59 0c 00 00    lea    0xc59(%rip),%rsi        # 1fc0 <bushandler>
    1367:       bf 07 00 00 00          mov    $0x7,%edi
    136c:       e8 4f fb ff ff          callq  ec0 <signal@plt>
    1371:       48 8d 35 f0 0c 00 00    lea    0xcf0(%rip),%rsi        # 2068 <illegalhandler>
    1378:       bf 04 00 00 00          mov    $0x4,%edi
    137d:       e8 3e fb ff ff          callq  ec0 <signal@plt>
    1382:       83 3d 5f 40 20 00 00    cmpl   $0x0,0x20405f(%rip)        # 2053e8 <is_checker>
    1389:       75 26                   jne    13b1 <main+0x70>
    138b:       48 8d 2d 13 1f 00 00    lea    0x1f13(%rip),%rbp        # 32a5 <_IO_stdin_used+0x225>
    1392:       48 8b 05 e7 3f 20 00    mov    0x203fe7(%rip),%rax        # 205380 <stdin@@GLIBC_2.2.5>
    1399:       48 89 05 30 40 20 00    mov    %rax,0x204030(%rip)        # 2053d0 <infile>
    13a0:       41 bd 00 00 00 00       mov    $0x0,%r13d
    13a6:       41 be 00 00 00 00       mov    $0x0,%r14d
    13ac:       e9 8d 00 00 00          jmpq   143e <main+0xfd>
    13b1:       48 8d 35 04 0d 00 00    lea    0xd04(%rip),%rsi        # 20bc <sigalrmhandler>
    13b8:       bf 0e 00 00 00          mov    $0xe,%edi
    13bd:       e8 fe fa ff ff          callq  ec0 <signal@plt>
    13c2:       bf 05 00 00 00          mov    $0x5,%edi
    13c7:       e8 c4 fa ff ff          callq  e90 <alarm@plt>
    13cc:       48 8d 2d d7 1e 00 00    lea    0x1ed7(%rip),%rbp        # 32aa <_IO_stdin_used+0x22a>
    13d3:       eb bd                   jmp    1392 <main+0x51>
    13d5:       48 8b 3b                mov    (%rbx),%rdi
    13d8:       e8 3d fd ff ff          callq  111a <usage>
    13dd:       48 8d 35 29 21 00 00    lea    0x2129(%rip),%rsi        # 350d <_IO_stdin_used+0x48d>
    13e4:       48 8b 3d 9d 3f 20 00    mov    0x203f9d(%rip),%rdi        # 205388 <optarg@@GLIBC_2.2.5>
    13eb:       e8 80 fb ff ff          callq  f70 <fopen@plt>
    13f0:       48 89 05 d9 3f 20 00    mov    %rax,0x203fd9(%rip)        # 2053d0 <infile>
    13f7:       48 85 c0                test   %rax,%rax
    13fa:       75 42                   jne    143e <main+0xfd>
    13fc:       48 8b 0d 85 3f 20 00    mov    0x203f85(%rip),%rcx        # 205388 <optarg@@GLIBC_2.2.5>
    1403:       48 8d 15 a8 1e 00 00    lea    0x1ea8(%rip),%rdx        # 32b2 <_IO_stdin_used+0x232>
    140a:       be 01 00 00 00          mov    $0x1,%esi
    140f:       48 8b 3d 8a 3f 20 00    mov    0x203f8a(%rip),%rdi        # 2053a0 <stderr@@GLIBC_2.2.5>
    1416:       e8 b5 fb ff ff          callq  fd0 <__fprintf_chk@plt>
    141b:       b8 01 00 00 00          mov    $0x1,%eax
    1420:       e9 d9 00 00 00          jmpq   14fe <main+0x1bd>
    1425:       ba 10 00 00 00          mov    $0x10,%edx
    142a:       be 00 00 00 00          mov    $0x0,%esi
    142f:       48 8b 3d 52 3f 20 00    mov    0x203f52(%rip),%rdi        # 205388 <optarg@@GLIBC_2.2.5>
    1436:       e8 55 fb ff ff          callq  f90 <strtoul@plt>
    143b:       41 89 c6                mov    %eax,%r14d
    143e:       48 89 ea                mov    %rbp,%rdx
    1441:       48 89 de                mov    %rbx,%rsi
    1444:       44 89 e7                mov    %r12d,%edi
    1447:       e8 34 fb ff ff          callq  f80 <getopt@plt>
    144c:       3c ff                   cmp    $0xff,%al
    144e:       74 62                   je     14b2 <main+0x171>
    1450:       0f be d0                movsbl %al,%edx
    1453:       83 e8 61                sub    $0x61,%eax
    1456:       3c 10                   cmp    $0x10,%al
    1458:       77 3a                   ja     1494 <main+0x153>
    145a:       0f b6 c0                movzbl %al,%eax
    145d:       48 8d 0d 8c 1e 00 00    lea    0x1e8c(%rip),%rcx        # 32f0 <_IO_stdin_used+0x270>
    1464:       48 63 04 81             movslq (%rcx,%rax,4),%rax
    1468:       48 01 c8                add    %rcx,%rax
    146b:       ff e0                   jmpq   *%rax
    146d:       ba 0a 00 00 00          mov    $0xa,%edx
    1472:       be 00 00 00 00          mov    $0x0,%esi
    1477:       48 8b 3d 0a 3f 20 00    mov    0x203f0a(%rip),%rdi        # 205388 <optarg@@GLIBC_2.2.5>
    147e:       e8 6d fa ff ff          callq  ef0 <strtol@plt>
    1483:       41 89 c5                mov    %eax,%r13d
    1486:       eb b6                   jmp    143e <main+0xfd>
    1488:       c7 05 d6 3e 20 00 00    movl   $0x0,0x203ed6(%rip)        # 205368 <notify>
    148f:       00 00 00
    1492:       eb aa                   jmp    143e <main+0xfd>
    1494:       48 8d 35 34 1e 00 00    lea    0x1e34(%rip),%rsi        # 32cf <_IO_stdin_used+0x24f>
    149b:       bf 01 00 00 00          mov    $0x1,%edi
    14a0:       b8 00 00 00 00          mov    $0x0,%eax
    14a5:       e8 b6 fa ff ff          callq  f60 <__printf_chk@plt>
    14aa:       48 8b 3b                mov    (%rbx),%rdi
    14ad:       e8 68 fc ff ff          callq  111a <usage>
    14b2:       be 00 00 00 00          mov    $0x0,%esi
    14b7:       44 89 ef                mov    %r13d,%edi
    14ba:       e8 f7 fc ff ff          callq  11b6 <initialize_target>
    14bf:       83 3d 22 3f 20 00 00    cmpl   $0x0,0x203f22(%rip)        # 2053e8 <is_checker>
    14c6:       74 09                   je     14d1 <main+0x190>
    14c8:       44 39 35 11 3f 20 00    cmp    %r14d,0x203f11(%rip)        # 2053e0 <authkey>
    14cf:       75 36                   jne    1507 <main+0x1c6>
    14d1:       8b 15 0d 3f 20 00       mov    0x203f0d(%rip),%edx        # 2053e4 <cookie>
    14d7:       48 8d 35 04 1e 00 00    lea    0x1e04(%rip),%rsi        # 32e2 <_IO_stdin_used+0x262>
    14de:       bf 01 00 00 00          mov    $0x1,%edi
    14e3:       b8 00 00 00 00          mov    $0x0,%eax
    14e8:       e8 73 fa ff ff          callq  f60 <__printf_chk@plt>
    14ed:       48 8b 3d 6c 3e 20 00    mov    0x203e6c(%rip),%rdi        # 205360 <buf_offset>
    14f4:       e8 cf 0c 00 00          callq  21c8 <stable_launch>
    14f9:       b8 00 00 00 00          mov    $0x0,%eax
    14fe:       5b                      pop    %rbx
    14ff:       5d                      pop    %rbp
    1500:       41 5c                   pop    %r12
    1502:       41 5d                   pop    %r13
    1504:       41 5e                   pop    %r14
    1506:       c3                      retq
    1507:       44 89 f2                mov    %r14d,%edx
    150a:       48 8d 35 f7 1c 00 00    lea    0x1cf7(%rip),%rsi        # 3208 <_IO_stdin_used+0x188>
    1511:       bf 01 00 00 00          mov    $0x1,%edi
    1516:       b8 00 00 00 00          mov    $0x0,%eax
    151b:       e8 40 fa ff ff          callq  f60 <__printf_chk@plt>
    1520:       b8 00 00 00 00          mov    $0x0,%eax
    1525:       e8 f6 06 00 00          callq  1c20 <check_fail>
    152a:       eb a5                   jmp    14d1 <main+0x190>

000000000000152c <scramble>:
    152c:       48 83 ec 38             sub    $0x38,%rsp
    1530:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    1537:       00 00
    1539:       48 89 44 24 28          mov    %rax,0x28(%rsp)
    153e:       31 c0                   xor    %eax,%eax
    1540:       eb 10                   jmp    1552 <scramble+0x26>
    1542:       69 d0 14 13 00 00       imul   $0x1314,%eax,%edx
    1548:       01 fa                   add    %edi,%edx
    154a:       89 c1                   mov    %eax,%ecx
    154c:       89 14 8c                mov    %edx,(%rsp,%rcx,4)
    154f:       83 c0 01                add    $0x1,%eax
    1552:       83 f8 09                cmp    $0x9,%eax
    1555:       76 eb                   jbe    1542 <scramble+0x16>
    1557:       8b 04 24                mov    (%rsp),%eax
    155a:       69 c0 2b 5a 00 00       imul   $0x5a2b,%eax,%eax
    1560:       89 04 24                mov    %eax,(%rsp)
    1563:       8b 44 24 14             mov    0x14(%rsp),%eax
    1567:       69 c0 5b 47 00 00       imul   $0x475b,%eax,%eax
    156d:       89 44 24 14             mov    %eax,0x14(%rsp)
    1571:       8b 44 24 14             mov    0x14(%rsp),%eax
    1575:       69 c0 b4 20 00 00       imul   $0x20b4,%eax,%eax
    157b:       89 44 24 14             mov    %eax,0x14(%rsp)
    157f:       8b 44 24 08             mov    0x8(%rsp),%eax
    1583:       69 c0 15 fa 00 00       imul   $0xfa15,%eax,%eax
    1589:       89 44 24 08             mov    %eax,0x8(%rsp)
    158d:       8b 44 24 14             mov    0x14(%rsp),%eax
    1591:       69 c0 b9 51 00 00       imul   $0x51b9,%eax,%eax
    1597:       89 44 24 14             mov    %eax,0x14(%rsp)
    159b:       8b 44 24 0c             mov    0xc(%rsp),%eax
    159f:       69 c0 0b 32 00 00       imul   $0x320b,%eax,%eax
    15a5:       89 44 24 0c             mov    %eax,0xc(%rsp)
    15a9:       8b 44 24 18             mov    0x18(%rsp),%eax
    15ad:       69 c0 d5 3b 00 00       imul   $0x3bd5,%eax,%eax
    15b3:       89 44 24 18             mov    %eax,0x18(%rsp)
    15b7:       8b 44 24 0c             mov    0xc(%rsp),%eax
    15bb:       69 c0 5b 57 00 00       imul   $0x575b,%eax,%eax
    15c1:       89 44 24 0c             mov    %eax,0xc(%rsp)
    15c5:       8b 44 24 1c             mov    0x1c(%rsp),%eax
    15c9:       69 c0 f2 bf 00 00       imul   $0xbff2,%eax,%eax
    15cf:       89 44 24 1c             mov    %eax,0x1c(%rsp)
    15d3:       8b 44 24 18             mov    0x18(%rsp),%eax
    15d7:       69 c0 25 89 00 00       imul   $0x8925,%eax,%eax
    15dd:       89 44 24 18             mov    %eax,0x18(%rsp)
    15e1:       8b 04 24                mov    (%rsp),%eax
    15e4:       69 c0 a8 30 00 00       imul   $0x30a8,%eax,%eax
    15ea:       89 04 24                mov    %eax,(%rsp)
    15ed:       8b 44 24 18             mov    0x18(%rsp),%eax
    15f1:       69 c0 e6 db 00 00       imul   $0xdbe6,%eax,%eax
    15f7:       89 44 24 18             mov    %eax,0x18(%rsp)
    15fb:       8b 44 24 08             mov    0x8(%rsp),%eax
    15ff:       69 c0 aa 3d 00 00       imul   $0x3daa,%eax,%eax
    1605:       89 44 24 08             mov    %eax,0x8(%rsp)
    1609:       8b 44 24 04             mov    0x4(%rsp),%eax
    160d:       69 c0 ff 13 00 00       imul   $0x13ff,%eax,%eax
    1613:       89 44 24 04             mov    %eax,0x4(%rsp)
    1617:       8b 04 24                mov    (%rsp),%eax
    161a:       69 c0 17 05 00 00       imul   $0x517,%eax,%eax
    1620:       89 04 24                mov    %eax,(%rsp)
    1623:       8b 44 24 10             mov    0x10(%rsp),%eax
    1627:       69 c0 2f f8 00 00       imul   $0xf82f,%eax,%eax
    162d:       89 44 24 10             mov    %eax,0x10(%rsp)
    1631:       8b 44 24 10             mov    0x10(%rsp),%eax
    1635:       69 c0 d4 f8 00 00       imul   $0xf8d4,%eax,%eax
    163b:       89 44 24 10             mov    %eax,0x10(%rsp)
    163f:       8b 44 24 18             mov    0x18(%rsp),%eax
    1643:       69 c0 7f ee 00 00       imul   $0xee7f,%eax,%eax
    1649:       89 44 24 18             mov    %eax,0x18(%rsp)
    164d:       8b 44 24 10             mov    0x10(%rsp),%eax
    1651:       69 c0 77 b2 00 00       imul   $0xb277,%eax,%eax
    1657:       89 44 24 10             mov    %eax,0x10(%rsp)
    165b:       8b 44 24 10             mov    0x10(%rsp),%eax
    165f:       69 c0 ca e2 00 00       imul   $0xe2ca,%eax,%eax
    1665:       89 44 24 10             mov    %eax,0x10(%rsp)
    1669:       8b 44 24 20             mov    0x20(%rsp),%eax
    166d:       69 c0 ff ea 00 00       imul   $0xeaff,%eax,%eax
    1673:       89 44 24 20             mov    %eax,0x20(%rsp)
    1677:       8b 44 24 0c             mov    0xc(%rsp),%eax
    167b:       69 c0 49 8e 00 00       imul   $0x8e49,%eax,%eax
    1681:       89 44 24 0c             mov    %eax,0xc(%rsp)
    1685:       8b 44 24 04             mov    0x4(%rsp),%eax
    1689:       69 c0 04 fe 00 00       imul   $0xfe04,%eax,%eax
    168f:       89 44 24 04             mov    %eax,0x4(%rsp)
    1693:       8b 04 24                mov    (%rsp),%eax
    1696:       69 c0 8a 8c 00 00       imul   $0x8c8a,%eax,%eax
    169c:       89 04 24                mov    %eax,(%rsp)
    169f:       8b 44 24 0c             mov    0xc(%rsp),%eax
    16a3:       69 c0 d2 95 00 00       imul   $0x95d2,%eax,%eax
    16a9:       89 44 24 0c             mov    %eax,0xc(%rsp)
    16ad:       8b 44 24 0c             mov    0xc(%rsp),%eax
    16b1:       69 c0 f6 8b 00 00       imul   $0x8bf6,%eax,%eax
    16b7:       89 44 24 0c             mov    %eax,0xc(%rsp)
    16bb:       8b 44 24 20             mov    0x20(%rsp),%eax
    16bf:       69 c0 e0 7e 00 00       imul   $0x7ee0,%eax,%eax
    16c5:       89 44 24 20             mov    %eax,0x20(%rsp)
    16c9:       8b 44 24 18             mov    0x18(%rsp),%eax
    16cd:       69 c0 41 ae 00 00       imul   $0xae41,%eax,%eax
    16d3:       89 44 24 18             mov    %eax,0x18(%rsp)
    16d7:       8b 44 24 14             mov    0x14(%rsp),%eax
    16db:       69 c0 5d 39 00 00       imul   $0x395d,%eax,%eax
    16e1:       89 44 24 14             mov    %eax,0x14(%rsp)
    16e5:       8b 44 24 20             mov    0x20(%rsp),%eax
    16e9:       69 c0 a5 a1 00 00       imul   $0xa1a5,%eax,%eax
    16ef:       89 44 24 20             mov    %eax,0x20(%rsp)
    16f3:       8b 44 24 08             mov    0x8(%rsp),%eax
    16f7:       69 c0 45 4e 00 00       imul   $0x4e45,%eax,%eax
    16fd:       89 44 24 08             mov    %eax,0x8(%rsp)
    1701:       8b 04 24                mov    (%rsp),%eax
    1704:       69 c0 b6 9d 00 00       imul   $0x9db6,%eax,%eax
    170a:       89 04 24                mov    %eax,(%rsp)
    170d:       8b 44 24 04             mov    0x4(%rsp),%eax
    1711:       69 c0 5f d9 00 00       imul   $0xd95f,%eax,%eax
    1717:       89 44 24 04             mov    %eax,0x4(%rsp)
    171b:       8b 44 24 08             mov    0x8(%rsp),%eax
    171f:       69 c0 a2 60 00 00       imul   $0x60a2,%eax,%eax
    1725:       89 44 24 08             mov    %eax,0x8(%rsp)
    1729:       8b 44 24 1c             mov    0x1c(%rsp),%eax
    172d:       69 c0 c9 74 00 00       imul   $0x74c9,%eax,%eax
    1733:       89 44 24 1c             mov    %eax,0x1c(%rsp)
    1737:       8b 44 24 24             mov    0x24(%rsp),%eax
    173b:       69 c0 07 90 00 00       imul   $0x9007,%eax,%eax
    1741:       89 44 24 24             mov    %eax,0x24(%rsp)
    1745:       8b 44 24 18             mov    0x18(%rsp),%eax
    1749:       69 c0 43 58 00 00       imul   $0x5843,%eax,%eax
    174f:       89 44 24 18             mov    %eax,0x18(%rsp)
    1753:       8b 44 24 0c             mov    0xc(%rsp),%eax
    1757:       69 c0 9e 86 00 00       imul   $0x869e,%eax,%eax
    175d:       89 44 24 0c             mov    %eax,0xc(%rsp)
    1761:       8b 04 24                mov    (%rsp),%eax
    1764:       69 c0 f5 03 00 00       imul   $0x3f5,%eax,%eax
    176a:       89 04 24                mov    %eax,(%rsp)
    176d:       8b 44 24 20             mov    0x20(%rsp),%eax
    1771:       69 c0 3d 14 00 00       imul   $0x143d,%eax,%eax
    1777:       89 44 24 20             mov    %eax,0x20(%rsp)
    177b:       8b 44 24 10             mov    0x10(%rsp),%eax
    177f:       69 c0 d7 28 00 00       imul   $0x28d7,%eax,%eax
    1785:       89 44 24 10             mov    %eax,0x10(%rsp)
    1789:       8b 44 24 04             mov    0x4(%rsp),%eax
    178d:       69 c0 43 60 00 00       imul   $0x6043,%eax,%eax
    1793:       89 44 24 04             mov    %eax,0x4(%rsp)
    1797:       8b 44 24 10             mov    0x10(%rsp),%eax
    179b:       69 c0 10 08 00 00       imul   $0x810,%eax,%eax
    17a1:       89 44 24 10             mov    %eax,0x10(%rsp)
    17a5:       8b 44 24 1c             mov    0x1c(%rsp),%eax
    17a9:       69 c0 41 64 00 00       imul   $0x6441,%eax,%eax
    17af:       89 44 24 1c             mov    %eax,0x1c(%rsp)
    17b3:       8b 44 24 20             mov    0x20(%rsp),%eax
    17b7:       69 c0 c5 d0 00 00       imul   $0xd0c5,%eax,%eax
    17bd:       89 44 24 20             mov    %eax,0x20(%rsp)
    17c1:       8b 44 24 24             mov    0x24(%rsp),%eax
    17c5:       69 c0 e1 7f 00 00       imul   $0x7fe1,%eax,%eax
    17cb:       89 44 24 24             mov    %eax,0x24(%rsp)
    17cf:       8b 44 24 24             mov    0x24(%rsp),%eax
    17d3:       69 c0 bb 9f 00 00       imul   $0x9fbb,%eax,%eax
    17d9:       89 44 24 24             mov    %eax,0x24(%rsp)
    17dd:       8b 44 24 08             mov    0x8(%rsp),%eax
    17e1:       69 c0 25 66 00 00       imul   $0x6625,%eax,%eax
    17e7:       89 44 24 08             mov    %eax,0x8(%rsp)
    17eb:       8b 44 24 1c             mov    0x1c(%rsp),%eax
    17ef:       69 c0 cc a9 00 00       imul   $0xa9cc,%eax,%eax
    17f5:       89 44 24 1c             mov    %eax,0x1c(%rsp)
    17f9:       8b 04 24                mov    (%rsp),%eax
    17fc:       69 c0 f0 04 00 00       imul   $0x4f0,%eax,%eax
    1802:       89 04 24                mov    %eax,(%rsp)
    1805:       8b 44 24 04             mov    0x4(%rsp),%eax
    1809:       69 c0 34 0a 00 00       imul   $0xa34,%eax,%eax
    180f:       89 44 24 04             mov    %eax,0x4(%rsp)
    1813:       8b 44 24 04             mov    0x4(%rsp),%eax
    1817:       69 c0 5f 7e 00 00       imul   $0x7e5f,%eax,%eax
    181d:       89 44 24 04             mov    %eax,0x4(%rsp)
    1821:       8b 44 24 14             mov    0x14(%rsp),%eax
    1825:       69 c0 48 b3 00 00       imul   $0xb348,%eax,%eax
    182b:       89 44 24 14             mov    %eax,0x14(%rsp)
    182f:       8b 44 24 1c             mov    0x1c(%rsp),%eax
    1833:       69 c0 be b8 00 00       imul   $0xb8be,%eax,%eax
    1839:       89 44 24 1c             mov    %eax,0x1c(%rsp)
    183d:       8b 04 24                mov    (%rsp),%eax
    1840:       69 c0 25 18 00 00       imul   $0x1825,%eax,%eax
    1846:       89 04 24                mov    %eax,(%rsp)
    1849:       8b 04 24                mov    (%rsp),%eax
    184c:       69 c0 05 51 00 00       imul   $0x5105,%eax,%eax
    1852:       89 04 24                mov    %eax,(%rsp)
    1855:       8b 44 24 20             mov    0x20(%rsp),%eax
    1859:       69 c0 30 6d 00 00       imul   $0x6d30,%eax,%eax
    185f:       89 44 24 20             mov    %eax,0x20(%rsp)
    1863:       8b 04 24                mov    (%rsp),%eax
    1866:       69 c0 b4 e8 00 00       imul   $0xe8b4,%eax,%eax
    186c:       89 04 24                mov    %eax,(%rsp)
    186f:       8b 44 24 04             mov    0x4(%rsp),%eax
    1873:       69 c0 cd bf 00 00       imul   $0xbfcd,%eax,%eax
    1879:       89 44 24 04             mov    %eax,0x4(%rsp)
    187d:       8b 44 24 18             mov    0x18(%rsp),%eax
    1881:       69 c0 ae b6 00 00       imul   $0xb6ae,%eax,%eax
    1887:       89 44 24 18             mov    %eax,0x18(%rsp)
    188b:       8b 44 24 1c             mov    0x1c(%rsp),%eax
    188f:       69 c0 dc 52 00 00       imul   $0x52dc,%eax,%eax
    1895:       89 44 24 1c             mov    %eax,0x1c(%rsp)
    1899:       8b 44 24 0c             mov    0xc(%rsp),%eax
    189d:       69 c0 9d af 00 00       imul   $0xaf9d,%eax,%eax
    18a3:       89 44 24 0c             mov    %eax,0xc(%rsp)
    18a7:       8b 44 24 20             mov    0x20(%rsp),%eax
    18ab:       69 c0 27 54 00 00       imul   $0x5427,%eax,%eax
    18b1:       89 44 24 20             mov    %eax,0x20(%rsp)
    18b5:       8b 44 24 24             mov    0x24(%rsp),%eax
    18b9:       69 c0 b1 6b 00 00       imul   $0x6bb1,%eax,%eax
    18bf:       89 44 24 24             mov    %eax,0x24(%rsp)
    18c3:       8b 44 24 24             mov    0x24(%rsp),%eax
    18c7:       69 c0 8a dc 00 00       imul   $0xdc8a,%eax,%eax
    18cd:       89 44 24 24             mov    %eax,0x24(%rsp)
    18d1:       8b 44 24 08             mov    0x8(%rsp),%eax
    18d5:       69 c0 89 1c 00 00       imul   $0x1c89,%eax,%eax
    18db:       89 44 24 08             mov    %eax,0x8(%rsp)
    18df:       8b 44 24 08             mov    0x8(%rsp),%eax
    18e3:       69 c0 99 05 00 00       imul   $0x599,%eax,%eax
    18e9:       89 44 24 08             mov    %eax,0x8(%rsp)
    18ed:       8b 44 24 0c             mov    0xc(%rsp),%eax
    18f1:       69 c0 36 49 00 00       imul   $0x4936,%eax,%eax
    18f7:       89 44 24 0c             mov    %eax,0xc(%rsp)
    18fb:       8b 04 24                mov    (%rsp),%eax
    18fe:       69 c0 e5 9f 00 00       imul   $0x9fe5,%eax,%eax
    1904:       89 04 24                mov    %eax,(%rsp)
    1907:       8b 44 24 10             mov    0x10(%rsp),%eax
    190b:       69 c0 1e 70 00 00       imul   $0x701e,%eax,%eax
    1911:       89 44 24 10             mov    %eax,0x10(%rsp)
    1915:       8b 04 24                mov    (%rsp),%eax
    1918:       69 c0 f0 ce 00 00       imul   $0xcef0,%eax,%eax
    191e:       89 04 24                mov    %eax,(%rsp)
    1921:       8b 44 24 20             mov    0x20(%rsp),%eax
    1925:       69 c0 07 f9 00 00       imul   $0xf907,%eax,%eax
    192b:       89 44 24 20             mov    %eax,0x20(%rsp)
    192f:       8b 44 24 24             mov    0x24(%rsp),%eax
    1933:       69 c0 6c 72 00 00       imul   $0x726c,%eax,%eax
    1939:       89 44 24 24             mov    %eax,0x24(%rsp)
    193d:       8b 44 24 14             mov    0x14(%rsp),%eax
    1941:       69 c0 61 b1 00 00       imul   $0xb161,%eax,%eax
    1947:       89 44 24 14             mov    %eax,0x14(%rsp)
    194b:       8b 44 24 24             mov    0x24(%rsp),%eax
    194f:       69 c0 b0 2e 00 00       imul   $0x2eb0,%eax,%eax
    1955:       89 44 24 24             mov    %eax,0x24(%rsp)
    1959:       8b 44 24 08             mov    0x8(%rsp),%eax
    195d:       69 c0 cc c2 00 00       imul   $0xc2cc,%eax,%eax
    1963:       89 44 24 08             mov    %eax,0x8(%rsp)
    1967:       8b 44 24 04             mov    0x4(%rsp),%eax
    196b:       69 c0 9e 9e 00 00       imul   $0x9e9e,%eax,%eax
    1971:       89 44 24 04             mov    %eax,0x4(%rsp)
    1975:       8b 44 24 14             mov    0x14(%rsp),%eax
    1979:       69 c0 23 74 00 00       imul   $0x7423,%eax,%eax
    197f:       89 44 24 14             mov    %eax,0x14(%rsp)
    1983:       ba 00 00 00 00          mov    $0x0,%edx
    1988:       b8 00 00 00 00          mov    $0x0,%eax
    198d:       eb 0a                   jmp    1999 <scramble+0x46d>
    198f:       89 d1                   mov    %edx,%ecx
    1991:       8b 0c 8c                mov    (%rsp,%rcx,4),%ecx
    1994:       01 c8                   add    %ecx,%eax
    1996:       83 c2 01                add    $0x1,%edx
    1999:       83 fa 09                cmp    $0x9,%edx
    199c:       76 f1                   jbe    198f <scramble+0x463>
    199e:       48 8b 74 24 28          mov    0x28(%rsp),%rsi
    19a3:       64 48 33 34 25 28 00    xor    %fs:0x28,%rsi
    19aa:       00 00
    19ac:       75 05                   jne    19b3 <scramble+0x487>
    19ae:       48 83 c4 38             add    $0x38,%rsp
    19b2:       c3                      retq
    19b3:       e8 a8 f4 ff ff          callq  e60 <__stack_chk_fail@plt>

00000000000019b8 <getbuf>:
    19b8:       48 83 ec 38             sub    $0x38,%rsp
    19bc:       48 89 e7                mov    %rsp,%rdi
    19bf:       e8 94 02 00 00          callq  1c58 <Gets>
    19c4:       b8 01 00 00 00          mov    $0x1,%eax
    19c9:       48 83 c4 38             add    $0x38,%rsp
    19cd:       c3                      retq

00000000000019ce <touch1>:
    19ce:       48 83 ec 08             sub    $0x8,%rsp
    19d2:       c7 05 00 3a 20 00 01    movl   $0x1,0x203a00(%rip)        # 2053dc <vlevel>
    19d9:       00 00 00
    19dc:       48 8d 3d 7f 19 00 00    lea    0x197f(%rip),%rdi        # 3362 <_IO_stdin_used+0x2e2>
    19e3:       e8 58 f4 ff ff          callq  e40 <puts@plt>
    19e8:       bf 01 00 00 00          mov    $0x1,%edi
    19ed:       e8 d6 04 00 00          callq  1ec8 <validate>
    19f2:       bf 00 00 00 00          mov    $0x0,%edi
    19f7:       e8 b4 f5 ff ff          callq  fb0 <exit@plt>

00000000000019fc <touch2>:
    19fc:       48 83 ec 08             sub    $0x8,%rsp
    1a00:       89 fa                   mov    %edi,%edx
    1a02:       c7 05 d0 39 20 00 02    movl   $0x2,0x2039d0(%rip)        # 2053dc <vlevel>
    1a09:       00 00 00
    1a0c:       39 3d d2 39 20 00       cmp    %edi,0x2039d2(%rip)        # 2053e4 <cookie>
    1a12:       74 2a                   je     1a3e <touch2+0x42>
    1a14:       48 8d 35 95 19 00 00    lea    0x1995(%rip),%rsi        # 33b0 <_IO_stdin_used+0x330>
    1a1b:       bf 01 00 00 00          mov    $0x1,%edi
    1a20:       b8 00 00 00 00          mov    $0x0,%eax
    1a25:       e8 36 f5 ff ff          callq  f60 <__printf_chk@plt>
    1a2a:       bf 02 00 00 00          mov    $0x2,%edi
    1a2f:       e8 64 05 00 00          callq  1f98 <fail>
    1a34:       bf 00 00 00 00          mov    $0x0,%edi
    1a39:       e8 72 f5 ff ff          callq  fb0 <exit@plt>
    1a3e:       48 8d 35 43 19 00 00    lea    0x1943(%rip),%rsi        # 3388 <_IO_stdin_used+0x308>
    1a45:       bf 01 00 00 00          mov    $0x1,%edi
    1a4a:       b8 00 00 00 00          mov    $0x0,%eax
    1a4f:       e8 0c f5 ff ff          callq  f60 <__printf_chk@plt>
    1a54:       bf 02 00 00 00          mov    $0x2,%edi
    1a59:       e8 6a 04 00 00          callq  1ec8 <validate>
    1a5e:       eb d4                   jmp    1a34 <touch2+0x38>

0000000000001a60 <hexmatch>:
    1a60:       41 54                   push   %r12
    1a62:       55                      push   %rbp
    1a63:       53                      push   %rbx
    1a64:       48 83 c4 80             add    $0xffffffffffffff80,%rsp
    1a68:       89 fd                   mov    %edi,%ebp
    1a6a:       48 89 f3                mov    %rsi,%rbx
    1a6d:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    1a74:       00 00
    1a76:       48 89 44 24 78          mov    %rax,0x78(%rsp)
    1a7b:       31 c0                   xor    %eax,%eax
    1a7d:       e8 9e f4 ff ff          callq  f20 <random@plt>
    1a82:       48 89 c1                mov    %rax,%rcx
    1a85:       48 ba 0b d7 a3 70 3d    movabs $0xa3d70a3d70a3d70b,%rdx
    1a8c:       0a d7 a3
    1a8f:       48 f7 ea                imul   %rdx
    1a92:       48 01 ca                add    %rcx,%rdx
    1a95:       48 c1 fa 06             sar    $0x6,%rdx
    1a99:       48 89 c8                mov    %rcx,%rax
    1a9c:       48 c1 f8 3f             sar    $0x3f,%rax
    1aa0:       48 29 c2                sub    %rax,%rdx
    1aa3:       48 8d 04 92             lea    (%rdx,%rdx,4),%rax
    1aa7:       48 8d 14 80             lea    (%rax,%rax,4),%rdx
    1aab:       48 8d 04 95 00 00 00    lea    0x0(,%rdx,4),%rax
    1ab2:       00
    1ab3:       48 29 c1                sub    %rax,%rcx
    1ab6:       4c 8d 24 0c             lea    (%rsp,%rcx,1),%r12
    1aba:       41 89 e8                mov    %ebp,%r8d
    1abd:       48 8d 0d bb 18 00 00    lea    0x18bb(%rip),%rcx        # 337f <_IO_stdin_used+0x2ff>
    1ac4:       48 c7 c2 ff ff ff ff    mov    $0xffffffffffffffff,%rdx
    1acb:       be 01 00 00 00          mov    $0x1,%esi
    1ad0:       4c 89 e7                mov    %r12,%rdi
    1ad3:       b8 00 00 00 00          mov    $0x0,%eax
    1ad8:       e8 03 f5 ff ff          callq  fe0 <__sprintf_chk@plt>
    1add:       ba 09 00 00 00          mov    $0x9,%edx
    1ae2:       4c 89 e6                mov    %r12,%rsi
    1ae5:       48 89 df                mov    %rbx,%rdi
    1ae8:       e8 33 f3 ff ff          callq  e20 <strncmp@plt>
    1aed:       85 c0                   test   %eax,%eax
    1aef:       0f 94 c0                sete   %al
    1af2:       48 8b 5c 24 78          mov    0x78(%rsp),%rbx
    1af7:       64 48 33 1c 25 28 00    xor    %fs:0x28,%rbx
    1afe:       00 00
    1b00:       75 0c                   jne    1b0e <hexmatch+0xae>
    1b02:       0f b6 c0                movzbl %al,%eax
    1b05:       48 83 ec 80             sub    $0xffffffffffffff80,%rsp
    1b09:       5b                      pop    %rbx
    1b0a:       5d                      pop    %rbp
    1b0b:       41 5c                   pop    %r12
    1b0d:       c3                      retq
    1b0e:       e8 4d f3 ff ff          callq  e60 <__stack_chk_fail@plt>

0000000000001b13 <touch3>:
    1b13:       53                      push   %rbx
    1b14:       48 89 fb                mov    %rdi,%rbx
    1b17:       c7 05 bb 38 20 00 03    movl   $0x3,0x2038bb(%rip)        # 2053dc <vlevel>
    1b1e:       00 00 00
    1b21:       48 89 fe                mov    %rdi,%rsi
    1b24:       8b 3d ba 38 20 00       mov    0x2038ba(%rip),%edi        # 2053e4 <cookie>
    1b2a:       e8 31 ff ff ff          callq  1a60 <hexmatch>
    1b2f:       85 c0                   test   %eax,%eax
    1b31:       74 2d                   je     1b60 <touch3+0x4d>
    1b33:       48 89 da                mov    %rbx,%rdx
    1b36:       48 8d 35 9b 18 00 00    lea    0x189b(%rip),%rsi        # 33d8 <_IO_stdin_used+0x358>
    1b3d:       bf 01 00 00 00          mov    $0x1,%edi
    1b42:       b8 00 00 00 00          mov    $0x0,%eax
    1b47:       e8 14 f4 ff ff          callq  f60 <__printf_chk@plt>
    1b4c:       bf 03 00 00 00          mov    $0x3,%edi
    1b51:       e8 72 03 00 00          callq  1ec8 <validate>
    1b56:       bf 00 00 00 00          mov    $0x0,%edi
    1b5b:       e8 50 f4 ff ff          callq  fb0 <exit@plt>
    1b60:       48 89 da                mov    %rbx,%rdx
    1b63:       48 8d 35 96 18 00 00    lea    0x1896(%rip),%rsi        # 3400 <_IO_stdin_used+0x380>
    1b6a:       bf 01 00 00 00          mov    $0x1,%edi
    1b6f:       b8 00 00 00 00          mov    $0x0,%eax
    1b74:       e8 e7 f3 ff ff          callq  f60 <__printf_chk@plt>
    1b79:       bf 03 00 00 00          mov    $0x3,%edi
    1b7e:       e8 15 04 00 00          callq  1f98 <fail>
    1b83:       eb d1                   jmp    1b56 <touch3+0x43>

0000000000001b85 <test>:
    1b85:       48 83 ec 08             sub    $0x8,%rsp
    1b89:       b8 00 00 00 00          mov    $0x0,%eax
    1b8e:       e8 25 fe ff ff          callq  19b8 <getbuf>
    1b93:       89 c2                   mov    %eax,%edx
    1b95:       48 8d 35 8c 18 00 00    lea    0x188c(%rip),%rsi        # 3428 <_IO_stdin_used+0x3a8>
    1b9c:       bf 01 00 00 00          mov    $0x1,%edi
    1ba1:       b8 00 00 00 00          mov    $0x0,%eax
    1ba6:       e8 b5 f3 ff ff          callq  f60 <__printf_chk@plt>
    1bab:       48 83 c4 08             add    $0x8,%rsp
    1baf:       c3                      retq

0000000000001bb0 <save_char>:
    1bb0:       8b 05 4e 44 20 00       mov    0x20444e(%rip),%eax        # 206004 <gets_cnt>
    1bb6:       3d ff 03 00 00          cmp    $0x3ff,%eax
    1bbb:       7f 4a                   jg     1c07 <save_char+0x57>
    1bbd:       89 f9                   mov    %edi,%ecx
    1bbf:       c0 e9 04                shr    $0x4,%cl
    1bc2:       8d 14 40                lea    (%rax,%rax,2),%edx
    1bc5:       4c 8d 05 84 1b 00 00    lea    0x1b84(%rip),%r8        # 3750 <trans_char>
    1bcc:       83 e1 0f                and    $0xf,%ecx
    1bcf:       45 0f b6 0c 08          movzbl (%r8,%rcx,1),%r9d
    1bd4:       48 8d 0d 25 38 20 00    lea    0x203825(%rip),%rcx        # 205400 <gets_buf>
    1bdb:       48 63 f2                movslq %edx,%rsi
    1bde:       44 88 0c 31             mov    %r9b,(%rcx,%rsi,1)
    1be2:       8d 72 01                lea    0x1(%rdx),%esi
    1be5:       83 e7 0f                and    $0xf,%edi
    1be8:       41 0f b6 3c 38          movzbl (%r8,%rdi,1),%edi
    1bed:       48 63 f6                movslq %esi,%rsi
    1bf0:       40 88 3c 31             mov    %dil,(%rcx,%rsi,1)
    1bf4:       83 c2 02                add    $0x2,%edx
    1bf7:       48 63 d2                movslq %edx,%rdx
    1bfa:       c6 04 11 20             movb   $0x20,(%rcx,%rdx,1)
    1bfe:       83 c0 01                add    $0x1,%eax
    1c01:       89 05 fd 43 20 00       mov    %eax,0x2043fd(%rip)        # 206004 <gets_cnt>
    1c07:       f3 c3                   repz retq

0000000000001c09 <save_term>:
    1c09:       8b 05 f5 43 20 00       mov    0x2043f5(%rip),%eax        # 206004 <gets_cnt>
    1c0f:       8d 04 40                lea    (%rax,%rax,2),%eax
    1c12:       48 98                   cltq
    1c14:       48 8d 15 e5 37 20 00    lea    0x2037e5(%rip),%rdx        # 205400 <gets_buf>
    1c1b:       c6 04 02 00             movb   $0x0,(%rdx,%rax,1)
    1c1f:       c3                      retq

0000000000001c20 <check_fail>:
    1c20:       48 83 ec 08             sub    $0x8,%rsp
    1c24:       0f be 15 dd 43 20 00    movsbl 0x2043dd(%rip),%edx        # 206008 <target_prefix>
    1c2b:       4c 8d 05 ce 37 20 00    lea    0x2037ce(%rip),%r8        # 205400 <gets_buf>
    1c32:       8b 0d a0 37 20 00       mov    0x2037a0(%rip),%ecx        # 2053d8 <check_level>
    1c38:       48 8d 35 0c 18 00 00    lea    0x180c(%rip),%rsi        # 344b <_IO_stdin_used+0x3cb>
    1c3f:       bf 01 00 00 00          mov    $0x1,%edi
    1c44:       b8 00 00 00 00          mov    $0x0,%eax
    1c49:       e8 12 f3 ff ff          callq  f60 <__printf_chk@plt>
    1c4e:       bf 01 00 00 00          mov    $0x1,%edi
    1c53:       e8 58 f3 ff ff          callq  fb0 <exit@plt>

0000000000001c58 <Gets>:
    1c58:       41 54                   push   %r12
    1c5a:       55                      push   %rbp
    1c5b:       53                      push   %rbx
    1c5c:       49 89 fc                mov    %rdi,%r12
    1c5f:       c7 05 9b 43 20 00 00    movl   $0x0,0x20439b(%rip)        # 206004 <gets_cnt>
    1c66:       00 00 00
    1c69:       48 89 fb                mov    %rdi,%rbx
    1c6c:       eb 11                   jmp    1c7f <Gets+0x27>
    1c6e:       48 8d 6b 01             lea    0x1(%rbx),%rbp
    1c72:       88 03                   mov    %al,(%rbx)
    1c74:       0f b6 f8                movzbl %al,%edi
    1c77:       e8 34 ff ff ff          callq  1bb0 <save_char>
    1c7c:       48 89 eb                mov    %rbp,%rbx
    1c7f:       48 8b 3d 4a 37 20 00    mov    0x20374a(%rip),%rdi        # 2053d0 <infile>
    1c86:       e8 a5 f2 ff ff          callq  f30 <_IO_getc@plt>
    1c8b:       83 f8 ff                cmp    $0xffffffff,%eax
    1c8e:       74 05                   je     1c95 <Gets+0x3d>
    1c90:       83 f8 0a                cmp    $0xa,%eax
    1c93:       75 d9                   jne    1c6e <Gets+0x16>
    1c95:       c6 03 00                movb   $0x0,(%rbx)
    1c98:       b8 00 00 00 00          mov    $0x0,%eax
    1c9d:       e8 67 ff ff ff          callq  1c09 <save_term>
    1ca2:       4c 89 e0                mov    %r12,%rax
    1ca5:       5b                      pop    %rbx
    1ca6:       5d                      pop    %rbp
    1ca7:       41 5c                   pop    %r12
    1ca9:       c3                      retq

0000000000001caa <notify_server>:
    1caa:       55                      push   %rbp
    1cab:       53                      push   %rbx
    1cac:       48 81 ec 18 40 00 00    sub    $0x4018,%rsp
    1cb3:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    1cba:       00 00
    1cbc:       48 89 84 24 08 40 00    mov    %rax,0x4008(%rsp)
    1cc3:       00
    1cc4:       31 c0                   xor    %eax,%eax
    1cc6:       83 3d 1b 37 20 00 00    cmpl   $0x0,0x20371b(%rip)        # 2053e8 <is_checker>
    1ccd:       0f 85 d2 00 00 00       jne    1da5 <notify_server+0xfb>
    1cd3:       89 fb                   mov    %edi,%ebx
    1cd5:       8b 05 29 43 20 00       mov    0x204329(%rip),%eax        # 206004 <gets_cnt>
    1cdb:       83 c0 64                add    $0x64,%eax
    1cde:       3d 00 20 00 00          cmp    $0x2000,%eax
    1ce3:       0f 8f dd 00 00 00       jg     1dc6 <notify_server+0x11c>
    1ce9:       0f be 05 18 43 20 00    movsbl 0x204318(%rip),%eax        # 206008 <target_prefix>
    1cf0:       83 3d 71 36 20 00 00    cmpl   $0x0,0x203671(%rip)        # 205368 <notify>
    1cf7:       0f 84 e9 00 00 00       je     1de6 <notify_server+0x13c>
    1cfd:       8b 15 dd 36 20 00       mov    0x2036dd(%rip),%edx        # 2053e0 <authkey>
    1d03:       85 db                   test   %ebx,%ebx
    1d05:       0f 84 e5 00 00 00       je     1df0 <notify_server+0x146>
    1d0b:       48 8d 2d 4f 17 00 00    lea    0x174f(%rip),%rbp        # 3461 <_IO_stdin_used+0x3e1>
    1d12:       48 89 e7                mov    %rsp,%rdi
    1d15:       48 8d 0d e4 36 20 00    lea    0x2036e4(%rip),%rcx        # 205400 <gets_buf>
    1d1c:       51                      push   %rcx
    1d1d:       56                      push   %rsi
    1d1e:       50                      push   %rax
    1d1f:       52                      push   %rdx
    1d20:       49 89 e9                mov    %rbp,%r9
    1d23:       44 8b 05 e6 32 20 00    mov    0x2032e6(%rip),%r8d        # 205010 <target_id>
    1d2a:       48 8d 0d 3a 17 00 00    lea    0x173a(%rip),%rcx        # 346b <_IO_stdin_used+0x3eb>
    1d31:       ba 00 20 00 00          mov    $0x2000,%edx
    1d36:       be 01 00 00 00          mov    $0x1,%esi
    1d3b:       b8 00 00 00 00          mov    $0x0,%eax
    1d40:       e8 9b f2 ff ff          callq  fe0 <__sprintf_chk@plt>
    1d45:       48 83 c4 20             add    $0x20,%rsp
    1d49:       83 3d 18 36 20 00 00    cmpl   $0x0,0x203618(%rip)        # 205368 <notify>
    1d50:       0f 84 df 00 00 00       je     1e35 <notify_server+0x18b>
    1d56:       85 db                   test   %ebx,%ebx
    1d58:       0f 84 c6 00 00 00       je     1e24 <notify_server+0x17a>
    1d5e:       48 89 e1                mov    %rsp,%rcx
    1d61:       4c 8d 8c 24 00 20 00    lea    0x2000(%rsp),%r9
    1d68:       00
    1d69:       41 b8 00 00 00 00       mov    $0x0,%r8d
    1d6f:       48 8b 15 b2 32 20 00    mov    0x2032b2(%rip),%rdx        # 205028 <lab>
    1d76:       48 8b 35 b3 32 20 00    mov    0x2032b3(%rip),%rsi        # 205030 <course>
    1d7d:       48 8b 3d 9c 32 20 00    mov    0x20329c(%rip),%rdi        # 205020 <user_id>
    1d84:       e8 af 11 00 00          callq  2f38 <driver_post>
    1d89:       85 c0                   test   %eax,%eax
    1d8b:       78 6f                   js     1dfc <notify_server+0x152>
    1d8d:       48 8d 3d 1c 18 00 00    lea    0x181c(%rip),%rdi        # 35b0 <_IO_stdin_used+0x530>
    1d94:       e8 a7 f0 ff ff          callq  e40 <puts@plt>
    1d99:       48 8d 3d f3 16 00 00    lea    0x16f3(%rip),%rdi        # 3493 <_IO_stdin_used+0x413>
    1da0:       e8 9b f0 ff ff          callq  e40 <puts@plt>
    1da5:       48 8b 84 24 08 40 00    mov    0x4008(%rsp),%rax
    1dac:       00
    1dad:       64 48 33 04 25 28 00    xor    %fs:0x28,%rax
    1db4:       00 00
    1db6:       0f 85 07 01 00 00       jne    1ec3 <notify_server+0x219>
    1dbc:       48 81 c4 18 40 00 00    add    $0x4018,%rsp
    1dc3:       5b                      pop    %rbx
    1dc4:       5d                      pop    %rbp
    1dc5:       c3                      retq
    1dc6:       48 8d 35 b3 17 00 00    lea    0x17b3(%rip),%rsi        # 3580 <_IO_stdin_used+0x500>
    1dcd:       bf 01 00 00 00          mov    $0x1,%edi
    1dd2:       b8 00 00 00 00          mov    $0x0,%eax
    1dd7:       e8 84 f1 ff ff          callq  f60 <__printf_chk@plt>
    1ddc:       bf 01 00 00 00          mov    $0x1,%edi
    1de1:       e8 ca f1 ff ff          callq  fb0 <exit@plt>
    1de6:       ba ff ff ff ff          mov    $0xffffffff,%edx
    1deb:       e9 13 ff ff ff          jmpq   1d03 <notify_server+0x59>
    1df0:       48 8d 2d 6f 16 00 00    lea    0x166f(%rip),%rbp        # 3466 <_IO_stdin_used+0x3e6>
    1df7:       e9 16 ff ff ff          jmpq   1d12 <notify_server+0x68>
    1dfc:       48 8d 94 24 00 20 00    lea    0x2000(%rsp),%rdx
    1e03:       00
    1e04:       48 8d 35 7c 16 00 00    lea    0x167c(%rip),%rsi        # 3487 <_IO_stdin_used+0x407>
    1e0b:       bf 01 00 00 00          mov    $0x1,%edi
    1e10:       b8 00 00 00 00          mov    $0x0,%eax
    1e15:       e8 46 f1 ff ff          callq  f60 <__printf_chk@plt>
    1e1a:       bf 01 00 00 00          mov    $0x1,%edi
    1e1f:       e8 8c f1 ff ff          callq  fb0 <exit@plt>
    1e24:       48 8d 3d 72 16 00 00    lea    0x1672(%rip),%rdi        # 349d <_IO_stdin_used+0x41d>
    1e2b:       e8 10 f0 ff ff          callq  e40 <puts@plt>
    1e30:       e9 70 ff ff ff          jmpq   1da5 <notify_server+0xfb>
    1e35:       48 89 ea                mov    %rbp,%rdx
    1e38:       48 8d 35 a9 17 00 00    lea    0x17a9(%rip),%rsi        # 35e8 <_IO_stdin_used+0x568>
    1e3f:       bf 01 00 00 00          mov    $0x1,%edi
    1e44:       b8 00 00 00 00          mov    $0x0,%eax
    1e49:       e8 12 f1 ff ff          callq  f60 <__printf_chk@plt>
    1e4e:       48 8b 15 cb 31 20 00    mov    0x2031cb(%rip),%rdx        # 205020 <user_id>
    1e55:       48 8d 35 48 16 00 00    lea    0x1648(%rip),%rsi        # 34a4 <_IO_stdin_used+0x424>
    1e5c:       bf 01 00 00 00          mov    $0x1,%edi
    1e61:       b8 00 00 00 00          mov    $0x0,%eax
    1e66:       e8 f5 f0 ff ff          callq  f60 <__printf_chk@plt>
    1e6b:       48 8b 15 be 31 20 00    mov    0x2031be(%rip),%rdx        # 205030 <course>
    1e72:       48 8d 35 38 16 00 00    lea    0x1638(%rip),%rsi        # 34b1 <_IO_stdin_used+0x431>
    1e79:       bf 01 00 00 00          mov    $0x1,%edi
    1e7e:       b8 00 00 00 00          mov    $0x0,%eax
    1e83:       e8 d8 f0 ff ff          callq  f60 <__printf_chk@plt>
    1e88:       48 8b 15 99 31 20 00    mov    0x203199(%rip),%rdx        # 205028 <lab>
    1e8f:       48 8d 35 27 16 00 00    lea    0x1627(%rip),%rsi        # 34bd <_IO_stdin_used+0x43d>
    1e96:       bf 01 00 00 00          mov    $0x1,%edi
    1e9b:       b8 00 00 00 00          mov    $0x0,%eax
    1ea0:       e8 bb f0 ff ff          callq  f60 <__printf_chk@plt>
    1ea5:       48 89 e2                mov    %rsp,%rdx
    1ea8:       48 8d 35 17 16 00 00    lea    0x1617(%rip),%rsi        # 34c6 <_IO_stdin_used+0x446>
    1eaf:       bf 01 00 00 00          mov    $0x1,%edi
    1eb4:       b8 00 00 00 00          mov    $0x0,%eax
    1eb9:       e8 a2 f0 ff ff          callq  f60 <__printf_chk@plt>
    1ebe:       e9 e2 fe ff ff          jmpq   1da5 <notify_server+0xfb>
    1ec3:       e8 98 ef ff ff          callq  e60 <__stack_chk_fail@plt>

0000000000001ec8 <validate>:
    1ec8:       53                      push   %rbx
    1ec9:       89 fb                   mov    %edi,%ebx
    1ecb:       83 3d 16 35 20 00 00    cmpl   $0x0,0x203516(%rip)        # 2053e8 <is_checker>
    1ed2:       74 72                   je     1f46 <validate+0x7e>
    1ed4:       39 3d 02 35 20 00       cmp    %edi,0x203502(%rip)        # 2053dc <vlevel>
    1eda:       75 32                   jne    1f0e <validate+0x46>
    1edc:       8b 15 f6 34 20 00       mov    0x2034f6(%rip),%edx        # 2053d8 <check_level>
    1ee2:       39 fa                   cmp    %edi,%edx
    1ee4:       75 3e                   jne    1f24 <validate+0x5c>
    1ee6:       0f be 15 1b 41 20 00    movsbl 0x20411b(%rip),%edx        # 206008 <target_prefix>
    1eed:       4c 8d 05 0c 35 20 00    lea    0x20350c(%rip),%r8        # 205400 <gets_buf>
    1ef4:       89 f9                   mov    %edi,%ecx
    1ef6:       48 8d 35 f3 15 00 00    lea    0x15f3(%rip),%rsi        # 34f0 <_IO_stdin_used+0x470>
    1efd:       bf 01 00 00 00          mov    $0x1,%edi
    1f02:       b8 00 00 00 00          mov    $0x0,%eax
    1f07:       e8 54 f0 ff ff          callq  f60 <__printf_chk@plt>
    1f0c:       5b                      pop    %rbx
    1f0d:       c3                      retq
    1f0e:       48 8d 3d bd 15 00 00    lea    0x15bd(%rip),%rdi        # 34d2 <_IO_stdin_used+0x452>
    1f15:       e8 26 ef ff ff          callq  e40 <puts@plt>
    1f1a:       b8 00 00 00 00          mov    $0x0,%eax
    1f1f:       e8 fc fc ff ff          callq  1c20 <check_fail>
    1f24:       89 f9                   mov    %edi,%ecx
    1f26:       48 8d 35 e3 16 00 00    lea    0x16e3(%rip),%rsi        # 3610 <_IO_stdin_used+0x590>
    1f2d:       bf 01 00 00 00          mov    $0x1,%edi
    1f32:       b8 00 00 00 00          mov    $0x0,%eax
    1f37:       e8 24 f0 ff ff          callq  f60 <__printf_chk@plt>
    1f3c:       b8 00 00 00 00          mov    $0x0,%eax
    1f41:       e8 da fc ff ff          callq  1c20 <check_fail>
    1f46:       39 3d 90 34 20 00       cmp    %edi,0x203490(%rip)        # 2053dc <vlevel>
    1f4c:       74 1a                   je     1f68 <validate+0xa0>
    1f4e:       48 8d 3d 7d 15 00 00    lea    0x157d(%rip),%rdi        # 34d2 <_IO_stdin_used+0x452>
    1f55:       e8 e6 ee ff ff          callq  e40 <puts@plt>
    1f5a:       89 de                   mov    %ebx,%esi
    1f5c:       bf 00 00 00 00          mov    $0x0,%edi
    1f61:       e8 44 fd ff ff          callq  1caa <notify_server>
    1f66:       eb a4                   jmp    1f0c <validate+0x44>
    1f68:       0f be 0d 99 40 20 00    movsbl 0x204099(%rip),%ecx        # 206008 <target_prefix>
    1f6f:       89 fa                   mov    %edi,%edx
    1f71:       48 8d 35 c0 16 00 00    lea    0x16c0(%rip),%rsi        # 3638 <_IO_stdin_used+0x5b8>
    1f78:       bf 01 00 00 00          mov    $0x1,%edi
    1f7d:       b8 00 00 00 00          mov    $0x0,%eax
    1f82:       e8 d9 ef ff ff          callq  f60 <__printf_chk@plt>
    1f87:       89 de                   mov    %ebx,%esi
    1f89:       bf 01 00 00 00          mov    $0x1,%edi
    1f8e:       e8 17 fd ff ff          callq  1caa <notify_server>
    1f93:       e9 74 ff ff ff          jmpq   1f0c <validate+0x44>

0000000000001f98 <fail>:
    1f98:       48 83 ec 08             sub    $0x8,%rsp
    1f9c:       83 3d 45 34 20 00 00    cmpl   $0x0,0x203445(%rip)        # 2053e8 <is_checker>
    1fa3:       75 11                   jne    1fb6 <fail+0x1e>
    1fa5:       89 fe                   mov    %edi,%esi
    1fa7:       bf 00 00 00 00          mov    $0x0,%edi
    1fac:       e8 f9 fc ff ff          callq  1caa <notify_server>
    1fb1:       48 83 c4 08             add    $0x8,%rsp
    1fb5:       c3                      retq
    1fb6:       b8 00 00 00 00          mov    $0x0,%eax
    1fbb:       e8 60 fc ff ff          callq  1c20 <check_fail>

0000000000001fc0 <bushandler>:
    1fc0:       48 83 ec 08             sub    $0x8,%rsp
    1fc4:       83 3d 1d 34 20 00 00    cmpl   $0x0,0x20341d(%rip)        # 2053e8 <is_checker>
    1fcb:       74 16                   je     1fe3 <bushandler+0x23>
    1fcd:       48 8d 3d 31 15 00 00    lea    0x1531(%rip),%rdi        # 3505 <_IO_stdin_used+0x485>
    1fd4:       e8 67 ee ff ff          callq  e40 <puts@plt>
    1fd9:       b8 00 00 00 00          mov    $0x0,%eax
    1fde:       e8 3d fc ff ff          callq  1c20 <check_fail>
    1fe3:       48 8d 3d 86 16 00 00    lea    0x1686(%rip),%rdi        # 3670 <_IO_stdin_used+0x5f0>
    1fea:       e8 51 ee ff ff          callq  e40 <puts@plt>
    1fef:       48 8d 3d 19 15 00 00    lea    0x1519(%rip),%rdi        # 350f <_IO_stdin_used+0x48f>
    1ff6:       e8 45 ee ff ff          callq  e40 <puts@plt>
    1ffb:       be 00 00 00 00          mov    $0x0,%esi
    2000:       bf 00 00 00 00          mov    $0x0,%edi
    2005:       e8 a0 fc ff ff          callq  1caa <notify_server>
    200a:       bf 01 00 00 00          mov    $0x1,%edi
    200f:       e8 9c ef ff ff          callq  fb0 <exit@plt>

0000000000002014 <seghandler>:
    2014:       48 83 ec 08             sub    $0x8,%rsp
    2018:       83 3d c9 33 20 00 00    cmpl   $0x0,0x2033c9(%rip)        # 2053e8 <is_checker>
    201f:       74 16                   je     2037 <seghandler+0x23>
    2021:       48 8d 3d fd 14 00 00    lea    0x14fd(%rip),%rdi        # 3525 <_IO_stdin_used+0x4a5>
    2028:       e8 13 ee ff ff          callq  e40 <puts@plt>
    202d:       b8 00 00 00 00          mov    $0x0,%eax
    2032:       e8 e9 fb ff ff          callq  1c20 <check_fail>
    2037:       48 8d 3d 52 16 00 00    lea    0x1652(%rip),%rdi        # 3690 <_IO_stdin_used+0x610>
    203e:       e8 fd ed ff ff          callq  e40 <puts@plt>
    2043:       48 8d 3d c5 14 00 00    lea    0x14c5(%rip),%rdi        # 350f <_IO_stdin_used+0x48f>
    204a:       e8 f1 ed ff ff          callq  e40 <puts@plt>
    204f:       be 00 00 00 00          mov    $0x0,%esi
    2054:       bf 00 00 00 00          mov    $0x0,%edi
    2059:       e8 4c fc ff ff          callq  1caa <notify_server>
    205e:       bf 01 00 00 00          mov    $0x1,%edi
    2063:       e8 48 ef ff ff          callq  fb0 <exit@plt>

0000000000002068 <illegalhandler>:
    2068:       48 83 ec 08             sub    $0x8,%rsp
    206c:       83 3d 75 33 20 00 00    cmpl   $0x0,0x203375(%rip)        # 2053e8 <is_checker>
    2073:       74 16                   je     208b <illegalhandler+0x23>
    2075:       48 8d 3d bc 14 00 00    lea    0x14bc(%rip),%rdi        # 3538 <_IO_stdin_used+0x4b8>
    207c:       e8 bf ed ff ff          callq  e40 <puts@plt>
    2081:       b8 00 00 00 00          mov    $0x0,%eax
    2086:       e8 95 fb ff ff          callq  1c20 <check_fail>
    208b:       48 8d 3d 26 16 00 00    lea    0x1626(%rip),%rdi        # 36b8 <_IO_stdin_used+0x638>
    2092:       e8 a9 ed ff ff          callq  e40 <puts@plt>
    2097:       48 8d 3d 71 14 00 00    lea    0x1471(%rip),%rdi        # 350f <_IO_stdin_used+0x48f>
    209e:       e8 9d ed ff ff          callq  e40 <puts@plt>
    20a3:       be 00 00 00 00          mov    $0x0,%esi
    20a8:       bf 00 00 00 00          mov    $0x0,%edi
    20ad:       e8 f8 fb ff ff          callq  1caa <notify_server>
    20b2:       bf 01 00 00 00          mov    $0x1,%edi
    20b7:       e8 f4 ee ff ff          callq  fb0 <exit@plt>

00000000000020bc <sigalrmhandler>:
    20bc:       48 83 ec 08             sub    $0x8,%rsp
    20c0:       83 3d 21 33 20 00 00    cmpl   $0x0,0x203321(%rip)        # 2053e8 <is_checker>
    20c7:       74 16                   je     20df <sigalrmhandler+0x23>
    20c9:       48 8d 3d 7c 14 00 00    lea    0x147c(%rip),%rdi        # 354c <_IO_stdin_used+0x4cc>
    20d0:       e8 6b ed ff ff          callq  e40 <puts@plt>
    20d5:       b8 00 00 00 00          mov    $0x0,%eax
    20da:       e8 41 fb ff ff          callq  1c20 <check_fail>
    20df:       ba 05 00 00 00          mov    $0x5,%edx
    20e4:       48 8d 35 fd 15 00 00    lea    0x15fd(%rip),%rsi        # 36e8 <_IO_stdin_used+0x668>
    20eb:       bf 01 00 00 00          mov    $0x1,%edi
    20f0:       b8 00 00 00 00          mov    $0x0,%eax
    20f5:       e8 66 ee ff ff          callq  f60 <__printf_chk@plt>
    20fa:       be 00 00 00 00          mov    $0x0,%esi
    20ff:       bf 00 00 00 00          mov    $0x0,%edi
    2104:       e8 a1 fb ff ff          callq  1caa <notify_server>
    2109:       bf 01 00 00 00          mov    $0x1,%edi
    210e:       e8 9d ee ff ff          callq  fb0 <exit@plt>

0000000000002113 <launch>:
    2113:       55                      push   %rbp
    2114:       48 89 e5                mov    %rsp,%rbp
    2117:       48 83 ec 10             sub    $0x10,%rsp
    211b:       48 89 fa                mov    %rdi,%rdx
    211e:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    2125:       00 00
    2127:       48 89 45 f8             mov    %rax,-0x8(%rbp)
    212b:       31 c0                   xor    %eax,%eax
    212d:       48 8d 47 1e             lea    0x1e(%rdi),%rax
    2131:       48 83 e0 f0             and    $0xfffffffffffffff0,%rax
    2135:       48 29 c4                sub    %rax,%rsp
    2138:       48 8d 7c 24 0f          lea    0xf(%rsp),%rdi
    213d:       48 83 e7 f0             and    $0xfffffffffffffff0,%rdi
    2141:       be f4 00 00 00          mov    $0xf4,%esi
    2146:       e8 35 ed ff ff          callq  e80 <memset@plt>
    214b:       48 8b 05 2e 32 20 00    mov    0x20322e(%rip),%rax        # 205380 <stdin@@GLIBC_2.2.5>
    2152:       48 39 05 77 32 20 00    cmp    %rax,0x203277(%rip)        # 2053d0 <infile>
    2159:       74 3a                   je     2195 <launch+0x82>
    215b:       c7 05 77 32 20 00 00    movl   $0x0,0x203277(%rip)        # 2053dc <vlevel>
    2162:       00 00 00
    2165:       b8 00 00 00 00          mov    $0x0,%eax
    216a:       e8 16 fa ff ff          callq  1b85 <test>
    216f:       83 3d 72 32 20 00 00    cmpl   $0x0,0x203272(%rip)        # 2053e8 <is_checker>
    2176:       75 35                   jne    21ad <launch+0x9a>
    2178:       48 8d 3d ed 13 00 00    lea    0x13ed(%rip),%rdi        # 356c <_IO_stdin_used+0x4ec>
    217f:       e8 bc ec ff ff          callq  e40 <puts@plt>
    2184:       48 8b 45 f8             mov    -0x8(%rbp),%rax
    2188:       64 48 33 04 25 28 00    xor    %fs:0x28,%rax
    218f:       00 00
    2191:       75 30                   jne    21c3 <launch+0xb0>
    2193:       c9                      leaveq
    2194:       c3                      retq
    2195:       48 8d 35 b8 13 00 00    lea    0x13b8(%rip),%rsi        # 3554 <_IO_stdin_used+0x4d4>
    219c:       bf 01 00 00 00          mov    $0x1,%edi
    21a1:       b8 00 00 00 00          mov    $0x0,%eax
    21a6:       e8 b5 ed ff ff          callq  f60 <__printf_chk@plt>
    21ab:       eb ae                   jmp    215b <launch+0x48>
    21ad:       48 8d 3d ad 13 00 00    lea    0x13ad(%rip),%rdi        # 3561 <_IO_stdin_used+0x4e1>
    21b4:       e8 87 ec ff ff          callq  e40 <puts@plt>
    21b9:       b8 00 00 00 00          mov    $0x0,%eax
    21be:       e8 5d fa ff ff          callq  1c20 <check_fail>
    21c3:       e8 98 ec ff ff          callq  e60 <__stack_chk_fail@plt>

00000000000021c8 <stable_launch>:
    21c8:       53                      push   %rbx
    21c9:       48 89 3d f8 31 20 00    mov    %rdi,0x2031f8(%rip)        # 2053c8 <global_offset>
    21d0:       41 b9 00 00 00 00       mov    $0x0,%r9d
    21d6:       41 b8 00 00 00 00       mov    $0x0,%r8d
    21dc:       b9 32 01 00 00          mov    $0x132,%ecx
    21e1:       ba 07 00 00 00          mov    $0x7,%edx
    21e6:       be 00 00 10 00          mov    $0x100000,%esi
    21eb:       bf 00 60 58 55          mov    $0x55586000,%edi
    21f0:       e8 7b ec ff ff          callq  e70 <mmap@plt>
    21f5:       48 89 c3                mov    %rax,%rbx
    21f8:       48 3d 00 60 58 55       cmp    $0x55586000,%rax
    21fe:       75 43                   jne    2243 <stable_launch+0x7b>
    2200:       48 8d 90 f8 ff 0f 00    lea    0xffff8(%rax),%rdx
    2207:       48 89 15 02 3e 20 00    mov    %rdx,0x203e02(%rip)        # 206010 <stack_top>
    220e:       48 89 e0                mov    %rsp,%rax
    2211:       48 89 d4                mov    %rdx,%rsp
    2214:       48 89 c2                mov    %rax,%rdx
    2217:       48 89 15 a2 31 20 00    mov    %rdx,0x2031a2(%rip)        # 2053c0 <global_save_stack>
    221e:       48 8b 3d a3 31 20 00    mov    0x2031a3(%rip),%rdi        # 2053c8 <global_offset>
    2225:       e8 e9 fe ff ff          callq  2113 <launch>
    222a:       48 8b 05 8f 31 20 00    mov    0x20318f(%rip),%rax        # 2053c0 <global_save_stack>
    2231:       48 89 c4                mov    %rax,%rsp
    2234:       be 00 00 10 00          mov    $0x100000,%esi
    2239:       48 89 df                mov    %rbx,%rdi
    223c:       e8 0f ed ff ff          callq  f50 <munmap@plt>
    2241:       5b                      pop    %rbx
    2242:       c3                      retq
    2243:       be 00 00 10 00          mov    $0x100000,%esi
    2248:       48 89 c7                mov    %rax,%rdi
    224b:       e8 00 ed ff ff          callq  f50 <munmap@plt>
    2250:       b9 00 60 58 55          mov    $0x55586000,%ecx
    2255:       48 8d 15 c4 14 00 00    lea    0x14c4(%rip),%rdx        # 3720 <_IO_stdin_used+0x6a0>
    225c:       be 01 00 00 00          mov    $0x1,%esi
    2261:       48 8b 3d 38 31 20 00    mov    0x203138(%rip),%rdi        # 2053a0 <stderr@@GLIBC_2.2.5>
    2268:       b8 00 00 00 00          mov    $0x0,%eax
    226d:       e8 5e ed ff ff          callq  fd0 <__fprintf_chk@plt>
    2272:       bf 01 00 00 00          mov    $0x1,%edi
    2277:       e8 34 ed ff ff          callq  fb0 <exit@plt>

000000000000227c <rio_readinitb>:
    227c:       89 37                   mov    %esi,(%rdi)
    227e:       c7 47 04 00 00 00 00    movl   $0x0,0x4(%rdi)
    2285:       48 8d 47 10             lea    0x10(%rdi),%rax
    2289:       48 89 47 08             mov    %rax,0x8(%rdi)
    228d:       c3                      retq

000000000000228e <sigalrm_handler>:
    228e:       48 83 ec 08             sub    $0x8,%rsp
    2292:       b9 00 00 00 00          mov    $0x0,%ecx
    2297:       48 8d 15 c2 14 00 00    lea    0x14c2(%rip),%rdx        # 3760 <trans_char+0x10>
    229e:       be 01 00 00 00          mov    $0x1,%esi
    22a3:       48 8b 3d f6 30 20 00    mov    0x2030f6(%rip),%rdi        # 2053a0 <stderr@@GLIBC_2.2.5>
    22aa:       b8 00 00 00 00          mov    $0x0,%eax
    22af:       e8 1c ed ff ff          callq  fd0 <__fprintf_chk@plt>
    22b4:       bf 01 00 00 00          mov    $0x1,%edi
    22b9:       e8 f2 ec ff ff          callq  fb0 <exit@plt>

00000000000022be <rio_writen>:
    22be:       41 55                   push   %r13
    22c0:       41 54                   push   %r12
    22c2:       55                      push   %rbp
    22c3:       53                      push   %rbx
    22c4:       48 83 ec 08             sub    $0x8,%rsp
    22c8:       41 89 fc                mov    %edi,%r12d
    22cb:       48 89 f5                mov    %rsi,%rbp
    22ce:       49 89 d5                mov    %rdx,%r13
    22d1:       48 89 d3                mov    %rdx,%rbx
    22d4:       eb 06                   jmp    22dc <rio_writen+0x1e>
    22d6:       48 29 c3                sub    %rax,%rbx
    22d9:       48 01 c5                add    %rax,%rbp
    22dc:       48 85 db                test   %rbx,%rbx
    22df:       74 24                   je     2305 <rio_writen+0x47>
    22e1:       48 89 da                mov    %rbx,%rdx
    22e4:       48 89 ee                mov    %rbp,%rsi
    22e7:       44 89 e7                mov    %r12d,%edi
    22ea:       e8 61 eb ff ff          callq  e50 <write@plt>
    22ef:       48 85 c0                test   %rax,%rax
    22f2:       7f e2                   jg     22d6 <rio_writen+0x18>
    22f4:       e8 07 eb ff ff          callq  e00 <__errno_location@plt>
    22f9:       83 38 04                cmpl   $0x4,(%rax)
    22fc:       75 15                   jne    2313 <rio_writen+0x55>
    22fe:       b8 00 00 00 00          mov    $0x0,%eax
    2303:       eb d1                   jmp    22d6 <rio_writen+0x18>
    2305:       4c 89 e8                mov    %r13,%rax
    2308:       48 83 c4 08             add    $0x8,%rsp
    230c:       5b                      pop    %rbx
    230d:       5d                      pop    %rbp
    230e:       41 5c                   pop    %r12
    2310:       41 5d                   pop    %r13
    2312:       c3                      retq
    2313:       48 c7 c0 ff ff ff ff    mov    $0xffffffffffffffff,%rax
    231a:       eb ec                   jmp    2308 <rio_writen+0x4a>

000000000000231c <rio_read>:
    231c:       41 55                   push   %r13
    231e:       41 54                   push   %r12
    2320:       55                      push   %rbp
    2321:       53                      push   %rbx
    2322:       48 83 ec 08             sub    $0x8,%rsp
    2326:       48 89 fb                mov    %rdi,%rbx
    2329:       49 89 f5                mov    %rsi,%r13
    232c:       49 89 d4                mov    %rdx,%r12
    232f:       eb 0a                   jmp    233b <rio_read+0x1f>
    2331:       e8 ca ea ff ff          callq  e00 <__errno_location@plt>
    2336:       83 38 04                cmpl   $0x4,(%rax)
    2339:       75 5c                   jne    2397 <rio_read+0x7b>
    233b:       8b 6b 04                mov    0x4(%rbx),%ebp
    233e:       85 ed                   test   %ebp,%ebp
    2340:       7f 24                   jg     2366 <rio_read+0x4a>
    2342:       48 8d 6b 10             lea    0x10(%rbx),%rbp
    2346:       8b 3b                   mov    (%rbx),%edi
    2348:       ba 00 20 00 00          mov    $0x2000,%edx
    234d:       48 89 ee                mov    %rbp,%rsi
    2350:       e8 5b eb ff ff          callq  eb0 <read@plt>
    2355:       89 43 04                mov    %eax,0x4(%rbx)
    2358:       85 c0                   test   %eax,%eax
    235a:       78 d5                   js     2331 <rio_read+0x15>
    235c:       85 c0                   test   %eax,%eax
    235e:       74 40                   je     23a0 <rio_read+0x84>
    2360:       48 89 6b 08             mov    %rbp,0x8(%rbx)
    2364:       eb d5                   jmp    233b <rio_read+0x1f>
    2366:       89 e8                   mov    %ebp,%eax
    2368:       4c 39 e0                cmp    %r12,%rax
    236b:       72 03                   jb     2370 <rio_read+0x54>
    236d:       44 89 e5                mov    %r12d,%ebp
    2370:       4c 63 e5                movslq %ebp,%r12
    2373:       48 8b 73 08             mov    0x8(%rbx),%rsi
    2377:       4c 89 e2                mov    %r12,%rdx
    237a:       4c 89 ef                mov    %r13,%rdi
    237d:       e8 7e eb ff ff          callq  f00 <memcpy@plt>
    2382:       4c 01 63 08             add    %r12,0x8(%rbx)
    2386:       29 6b 04                sub    %ebp,0x4(%rbx)
    2389:       4c 89 e0                mov    %r12,%rax
    238c:       48 83 c4 08             add    $0x8,%rsp
    2390:       5b                      pop    %rbx
    2391:       5d                      pop    %rbp
    2392:       41 5c                   pop    %r12
    2394:       41 5d                   pop    %r13
    2396:       c3                      retq
    2397:       48 c7 c0 ff ff ff ff    mov    $0xffffffffffffffff,%rax
    239e:       eb ec                   jmp    238c <rio_read+0x70>
    23a0:       b8 00 00 00 00          mov    $0x0,%eax
    23a5:       eb e5                   jmp    238c <rio_read+0x70>

00000000000023a7 <rio_readlineb>:
    23a7:       41 55                   push   %r13
    23a9:       41 54                   push   %r12
    23ab:       55                      push   %rbp
    23ac:       53                      push   %rbx
    23ad:       48 83 ec 18             sub    $0x18,%rsp
    23b1:       49 89 fd                mov    %rdi,%r13
    23b4:       48 89 f5                mov    %rsi,%rbp
    23b7:       49 89 d4                mov    %rdx,%r12
    23ba:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    23c1:       00 00
    23c3:       48 89 44 24 08          mov    %rax,0x8(%rsp)
    23c8:       31 c0                   xor    %eax,%eax
    23ca:       bb 01 00 00 00          mov    $0x1,%ebx
    23cf:       4c 39 e3                cmp    %r12,%rbx
    23d2:       73 47                   jae    241b <rio_readlineb+0x74>
    23d4:       48 8d 74 24 07          lea    0x7(%rsp),%rsi
    23d9:       ba 01 00 00 00          mov    $0x1,%edx
    23de:       4c 89 ef                mov    %r13,%rdi
    23e1:       e8 36 ff ff ff          callq  231c <rio_read>
    23e6:       83 f8 01                cmp    $0x1,%eax
    23e9:       75 1c                   jne    2407 <rio_readlineb+0x60>
    23eb:       48 8d 45 01             lea    0x1(%rbp),%rax
    23ef:       0f b6 54 24 07          movzbl 0x7(%rsp),%edx
    23f4:       88 55 00                mov    %dl,0x0(%rbp)
    23f7:       80 7c 24 07 0a          cmpb   $0xa,0x7(%rsp)
    23fc:       74 1a                   je     2418 <rio_readlineb+0x71>
    23fe:       48 83 c3 01             add    $0x1,%rbx
    2402:       48 89 c5                mov    %rax,%rbp
    2405:       eb c8                   jmp    23cf <rio_readlineb+0x28>
    2407:       85 c0                   test   %eax,%eax
    2409:       75 32                   jne    243d <rio_readlineb+0x96>
    240b:       48 83 fb 01             cmp    $0x1,%rbx
    240f:       75 0a                   jne    241b <rio_readlineb+0x74>
    2411:       b8 00 00 00 00          mov    $0x0,%eax
    2416:       eb 0a                   jmp    2422 <rio_readlineb+0x7b>
    2418:       48 89 c5                mov    %rax,%rbp
    241b:       c6 45 00 00             movb   $0x0,0x0(%rbp)
    241f:       48 89 d8                mov    %rbx,%rax
    2422:       48 8b 4c 24 08          mov    0x8(%rsp),%rcx
    2427:       64 48 33 0c 25 28 00    xor    %fs:0x28,%rcx
    242e:       00 00
    2430:       75 14                   jne    2446 <rio_readlineb+0x9f>
    2432:       48 83 c4 18             add    $0x18,%rsp
    2436:       5b                      pop    %rbx
    2437:       5d                      pop    %rbp
    2438:       41 5c                   pop    %r12
    243a:       41 5d                   pop    %r13
    243c:       c3                      retq
    243d:       48 c7 c0 ff ff ff ff    mov    $0xffffffffffffffff,%rax
    2444:       eb dc                   jmp    2422 <rio_readlineb+0x7b>
    2446:       e8 15 ea ff ff          callq  e60 <__stack_chk_fail@plt>

000000000000244b <urlencode>:
    244b:       41 54                   push   %r12
    244d:       55                      push   %rbp
    244e:       53                      push   %rbx
    244f:       48 83 ec 10             sub    $0x10,%rsp
    2453:       48 89 fb                mov    %rdi,%rbx
    2456:       48 89 f5                mov    %rsi,%rbp
    2459:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    2460:       00 00
    2462:       48 89 44 24 08          mov    %rax,0x8(%rsp)
    2467:       31 c0                   xor    %eax,%eax
    2469:       48 c7 c1 ff ff ff ff    mov    $0xffffffffffffffff,%rcx
    2470:       f2 ae                   repnz scas %es:(%rdi),%al
    2472:       48 89 ce                mov    %rcx,%rsi
    2475:       48 f7 d6                not    %rsi
    2478:       8d 46 ff                lea    -0x1(%rsi),%eax
    247b:       eb 0f                   jmp    248c <urlencode+0x41>
    247d:       44 88 45 00             mov    %r8b,0x0(%rbp)
    2481:       48 8d 6d 01             lea    0x1(%rbp),%rbp
    2485:       48 83 c3 01             add    $0x1,%rbx
    2489:       44 89 e0                mov    %r12d,%eax
    248c:       44 8d 60 ff             lea    -0x1(%rax),%r12d
    2490:       85 c0                   test   %eax,%eax
    2492:       0f 84 a8 00 00 00       je     2540 <urlencode+0xf5>
    2498:       44 0f b6 03             movzbl (%rbx),%r8d
    249c:       41 80 f8 2a             cmp    $0x2a,%r8b
    24a0:       0f 94 c2                sete   %dl
    24a3:       41 80 f8 2d             cmp    $0x2d,%r8b
    24a7:       0f 94 c0                sete   %al
    24aa:       08 c2                   or     %al,%dl
    24ac:       75 cf                   jne    247d <urlencode+0x32>
    24ae:       41 80 f8 2e             cmp    $0x2e,%r8b
    24b2:       74 c9                   je     247d <urlencode+0x32>
    24b4:       41 80 f8 5f             cmp    $0x5f,%r8b
    24b8:       74 c3                   je     247d <urlencode+0x32>
    24ba:       41 8d 40 d0             lea    -0x30(%r8),%eax
    24be:       3c 09                   cmp    $0x9,%al
    24c0:       76 bb                   jbe    247d <urlencode+0x32>
    24c2:       41 8d 40 bf             lea    -0x41(%r8),%eax
    24c6:       3c 19                   cmp    $0x19,%al
    24c8:       76 b3                   jbe    247d <urlencode+0x32>
    24ca:       41 8d 40 9f             lea    -0x61(%r8),%eax
    24ce:       3c 19                   cmp    $0x19,%al
    24d0:       76 ab                   jbe    247d <urlencode+0x32>
    24d2:       41 80 f8 20             cmp    $0x20,%r8b
    24d6:       74 56                   je     252e <urlencode+0xe3>
    24d8:       41 8d 40 e0             lea    -0x20(%r8),%eax
    24dc:       3c 5f                   cmp    $0x5f,%al
    24de:       0f 96 c2                setbe  %dl
    24e1:       41 80 f8 09             cmp    $0x9,%r8b
    24e5:       0f 94 c0                sete   %al
    24e8:       08 c2                   or     %al,%dl
    24ea:       74 4f                   je     253b <urlencode+0xf0>
    24ec:       48 89 e7                mov    %rsp,%rdi
    24ef:       45 0f b6 c0             movzbl %r8b,%r8d
    24f3:       48 8d 0d fe 12 00 00    lea    0x12fe(%rip),%rcx        # 37f8 <trans_char+0xa8>
    24fa:       ba 08 00 00 00          mov    $0x8,%edx
    24ff:       be 01 00 00 00          mov    $0x1,%esi
    2504:       b8 00 00 00 00          mov    $0x0,%eax
    2509:       e8 d2 ea ff ff          callq  fe0 <__sprintf_chk@plt>
    250e:       0f b6 04 24             movzbl (%rsp),%eax
    2512:       88 45 00                mov    %al,0x0(%rbp)
    2515:       0f b6 44 24 01          movzbl 0x1(%rsp),%eax
    251a:       88 45 01                mov    %al,0x1(%rbp)
    251d:       0f b6 44 24 02          movzbl 0x2(%rsp),%eax
    2522:       88 45 02                mov    %al,0x2(%rbp)
    2525:       48 8d 6d 03             lea    0x3(%rbp),%rbp
    2529:       e9 57 ff ff ff          jmpq   2485 <urlencode+0x3a>
    252e:       c6 45 00 2b             movb   $0x2b,0x0(%rbp)
    2532:       48 8d 6d 01             lea    0x1(%rbp),%rbp
    2536:       e9 4a ff ff ff          jmpq   2485 <urlencode+0x3a>
    253b:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2540:       48 8b 74 24 08          mov    0x8(%rsp),%rsi
    2545:       64 48 33 34 25 28 00    xor    %fs:0x28,%rsi
    254c:       00 00
    254e:       75 09                   jne    2559 <urlencode+0x10e>
    2550:       48 83 c4 10             add    $0x10,%rsp
    2554:       5b                      pop    %rbx
    2555:       5d                      pop    %rbp
    2556:       41 5c                   pop    %r12
    2558:       c3                      retq
    2559:       e8 02 e9 ff ff          callq  e60 <__stack_chk_fail@plt>

000000000000255e <submitr>:
    255e:       41 57                   push   %r15
    2560:       41 56                   push   %r14
    2562:       41 55                   push   %r13
    2564:       41 54                   push   %r12
    2566:       55                      push   %rbp
    2567:       53                      push   %rbx
    2568:       48 81 ec 68 a0 00 00    sub    $0xa068,%rsp
    256f:       49 89 fd                mov    %rdi,%r13
    2572:       89 74 24 14             mov    %esi,0x14(%rsp)
    2576:       49 89 d7                mov    %rdx,%r15
    2579:       48 89 4c 24 08          mov    %rcx,0x8(%rsp)
    257e:       4c 89 44 24 18          mov    %r8,0x18(%rsp)
    2583:       4d 89 ce                mov    %r9,%r14
    2586:       48 8b ac 24 a0 a0 00    mov    0xa0a0(%rsp),%rbp
    258d:       00
    258e:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    2595:       00 00
    2597:       48 89 84 24 58 a0 00    mov    %rax,0xa058(%rsp)
    259e:       00
    259f:       31 c0                   xor    %eax,%eax
    25a1:       c7 44 24 2c 00 00 00    movl   $0x0,0x2c(%rsp)
    25a8:       00
    25a9:       ba 00 00 00 00          mov    $0x0,%edx
    25ae:       be 01 00 00 00          mov    $0x1,%esi
    25b3:       bf 02 00 00 00          mov    $0x2,%edi
    25b8:       e8 33 ea ff ff          callq  ff0 <socket@plt>
    25bd:       85 c0                   test   %eax,%eax
    25bf:       0f 88 a9 02 00 00       js     286e <submitr+0x310>
    25c5:       89 c3                   mov    %eax,%ebx
    25c7:       4c 89 ef                mov    %r13,%rdi
    25ca:       e8 01 e9 ff ff          callq  ed0 <gethostbyname@plt>
    25cf:       48 85 c0                test   %rax,%rax
    25d2:       0f 84 e2 02 00 00       je     28ba <submitr+0x35c>
    25d8:       4c 8d 64 24 30          lea    0x30(%rsp),%r12
    25dd:       48 c7 44 24 32 00 00    movq   $0x0,0x32(%rsp)
    25e4:       00 00
    25e6:       c7 44 24 3a 00 00 00    movl   $0x0,0x3a(%rsp)
    25ed:       00
    25ee:       66 c7 44 24 3e 00 00    movw   $0x0,0x3e(%rsp)
    25f5:       66 c7 44 24 30 02 00    movw   $0x2,0x30(%rsp)
    25fc:       48 63 50 14             movslq 0x14(%rax),%rdx
    2600:       48 8b 40 18             mov    0x18(%rax),%rax
    2604:       48 8b 30                mov    (%rax),%rsi
    2607:       48 8d 7c 24 34          lea    0x34(%rsp),%rdi
    260c:       b9 0c 00 00 00          mov    $0xc,%ecx
    2611:       e8 ca e8 ff ff          callq  ee0 <__memmove_chk@plt>
    2616:       0f b7 44 24 14          movzwl 0x14(%rsp),%eax
    261b:       66 c1 c8 08             ror    $0x8,%ax
    261f:       66 89 44 24 32          mov    %ax,0x32(%rsp)
    2624:       ba 10 00 00 00          mov    $0x10,%edx
    2629:       4c 89 e6                mov    %r12,%rsi
    262c:       89 df                   mov    %ebx,%edi
    262e:       e8 8d e9 ff ff          callq  fc0 <connect@plt>
    2633:       85 c0                   test   %eax,%eax
    2635:       0f 88 e7 02 00 00       js     2922 <submitr+0x3c4>
    263b:       48 c7 c6 ff ff ff ff    mov    $0xffffffffffffffff,%rsi
    2642:       b8 00 00 00 00          mov    $0x0,%eax
    2647:       48 89 f1                mov    %rsi,%rcx
    264a:       4c 89 f7                mov    %r14,%rdi
    264d:       f2 ae                   repnz scas %es:(%rdi),%al
    264f:       48 89 ca                mov    %rcx,%rdx
    2652:       48 f7 d2                not    %rdx
    2655:       48 89 f1                mov    %rsi,%rcx
    2658:       4c 89 ff                mov    %r15,%rdi
    265b:       f2 ae                   repnz scas %es:(%rdi),%al
    265d:       48 f7 d1                not    %rcx
    2660:       49 89 c8                mov    %rcx,%r8
    2663:       48 89 f1                mov    %rsi,%rcx
    2666:       48 8b 7c 24 08          mov    0x8(%rsp),%rdi
    266b:       f2 ae                   repnz scas %es:(%rdi),%al
    266d:       48 f7 d1                not    %rcx
    2670:       4d 8d 44 08 fe          lea    -0x2(%r8,%rcx,1),%r8
    2675:       48 89 f1                mov    %rsi,%rcx
    2678:       48 8b 7c 24 18          mov    0x18(%rsp),%rdi
    267d:       f2 ae                   repnz scas %es:(%rdi),%al
    267f:       48 89 c8                mov    %rcx,%rax
    2682:       48 f7 d0                not    %rax
    2685:       49 8d 4c 00 ff          lea    -0x1(%r8,%rax,1),%rcx
    268a:       48 8d 44 52 fd          lea    -0x3(%rdx,%rdx,2),%rax
    268f:       48 8d 84 01 80 00 00    lea    0x80(%rcx,%rax,1),%rax
    2696:       00
    2697:       48 3d 00 20 00 00       cmp    $0x2000,%rax
    269d:       0f 87 d9 02 00 00       ja     297c <submitr+0x41e>
    26a3:       48 8d b4 24 50 40 00    lea    0x4050(%rsp),%rsi
    26aa:       00
    26ab:       b9 00 04 00 00          mov    $0x400,%ecx
    26b0:       b8 00 00 00 00          mov    $0x0,%eax
    26b5:       48 89 f7                mov    %rsi,%rdi
    26b8:       f3 48 ab                rep stos %rax,%es:(%rdi)
    26bb:       4c 89 f7                mov    %r14,%rdi
    26be:       e8 88 fd ff ff          callq  244b <urlencode>
    26c3:       85 c0                   test   %eax,%eax
    26c5:       0f 88 24 03 00 00       js     29ef <submitr+0x491>
    26cb:       4c 8d a4 24 50 20 00    lea    0x2050(%rsp),%r12
    26d2:       00
    26d3:       41 55                   push   %r13
    26d5:       48 8d 84 24 58 40 00    lea    0x4058(%rsp),%rax
    26dc:       00
    26dd:       50                      push   %rax
    26de:       4d 89 f9                mov    %r15,%r9
    26e1:       4c 8b 44 24 18          mov    0x18(%rsp),%r8
    26e6:       48 8d 0d 9b 10 00 00    lea    0x109b(%rip),%rcx        # 3788 <trans_char+0x38>
    26ed:       ba 00 20 00 00          mov    $0x2000,%edx
    26f2:       be 01 00 00 00          mov    $0x1,%esi
    26f7:       4c 89 e7                mov    %r12,%rdi
    26fa:       b8 00 00 00 00          mov    $0x0,%eax
    26ff:       e8 dc e8 ff ff          callq  fe0 <__sprintf_chk@plt>
    2704:       48 c7 c1 ff ff ff ff    mov    $0xffffffffffffffff,%rcx
    270b:       b8 00 00 00 00          mov    $0x0,%eax
    2710:       4c 89 e7                mov    %r12,%rdi
    2713:       f2 ae                   repnz scas %es:(%rdi),%al
    2715:       48 89 ca                mov    %rcx,%rdx
    2718:       48 f7 d2                not    %rdx
    271b:       48 8d 52 ff             lea    -0x1(%rdx),%rdx
    271f:       4c 89 e6                mov    %r12,%rsi
    2722:       89 df                   mov    %ebx,%edi
    2724:       e8 95 fb ff ff          callq  22be <rio_writen>
    2729:       48 83 c4 10             add    $0x10,%rsp
    272d:       48 85 c0                test   %rax,%rax
    2730:       0f 88 44 03 00 00       js     2a7a <submitr+0x51c>
    2736:       4c 8d 64 24 40          lea    0x40(%rsp),%r12
    273b:       89 de                   mov    %ebx,%esi
    273d:       4c 89 e7                mov    %r12,%rdi
    2740:       e8 37 fb ff ff          callq  227c <rio_readinitb>
    2745:       48 8d b4 24 50 20 00    lea    0x2050(%rsp),%rsi
    274c:       00
    274d:       ba 00 20 00 00          mov    $0x2000,%edx
    2752:       4c 89 e7                mov    %r12,%rdi
    2755:       e8 4d fc ff ff          callq  23a7 <rio_readlineb>
    275a:       48 85 c0                test   %rax,%rax
    275d:       0f 8e 86 03 00 00       jle    2ae9 <submitr+0x58b>
    2763:       48 8d 4c 24 2c          lea    0x2c(%rsp),%rcx
    2768:       48 8d 94 24 50 60 00    lea    0x6050(%rsp),%rdx
    276f:       00
    2770:       48 8d bc 24 50 20 00    lea    0x2050(%rsp),%rdi
    2777:       00
    2778:       4c 8d 84 24 50 80 00    lea    0x8050(%rsp),%r8
    277f:       00
    2780:       48 8d 35 78 10 00 00    lea    0x1078(%rip),%rsi        # 37ff <trans_char+0xaf>
    2787:       b8 00 00 00 00          mov    $0x0,%eax
    278c:       e8 af e7 ff ff          callq  f40 <__isoc99_sscanf@plt>
    2791:       48 8d b4 24 50 20 00    lea    0x2050(%rsp),%rsi
    2798:       00
    2799:       b9 03 00 00 00          mov    $0x3,%ecx
    279e:       48 8d 3d 71 10 00 00    lea    0x1071(%rip),%rdi        # 3816 <trans_char+0xc6>
    27a5:       f3 a6                   repz cmpsb %es:(%rdi),%ds:(%rsi)
    27a7:       0f 97 c0                seta   %al
    27aa:       1c 00                   sbb    $0x0,%al
    27ac:       84 c0                   test   %al,%al
    27ae:       0f 84 b3 03 00 00       je     2b67 <submitr+0x609>
    27b4:       48 8d b4 24 50 20 00    lea    0x2050(%rsp),%rsi
    27bb:       00
    27bc:       48 8d 7c 24 40          lea    0x40(%rsp),%rdi
    27c1:       ba 00 20 00 00          mov    $0x2000,%edx
    27c6:       e8 dc fb ff ff          callq  23a7 <rio_readlineb>
    27cb:       48 85 c0                test   %rax,%rax
    27ce:       7f c1                   jg     2791 <submitr+0x233>
    27d0:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
    27d7:       3a 20 43
    27da:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
    27e1:       20 75 6e
    27e4:       48 89 45 00             mov    %rax,0x0(%rbp)
    27e8:       48 89 55 08             mov    %rdx,0x8(%rbp)
    27ec:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    27f3:       74 6f 20
    27f6:       48 ba 72 65 61 64 20    movabs $0x6165682064616572,%rdx
    27fd:       68 65 61
    2800:       48 89 45 10             mov    %rax,0x10(%rbp)
    2804:       48 89 55 18             mov    %rdx,0x18(%rbp)
    2808:       48 b8 64 65 72 73 20    movabs $0x6f72662073726564,%rax
    280f:       66 72 6f
    2812:       48 ba 6d 20 74 68 65    movabs $0x657220656874206d,%rdx
    2819:       20 72 65
    281c:       48 89 45 20             mov    %rax,0x20(%rbp)
    2820:       48 89 55 28             mov    %rdx,0x28(%rbp)
    2824:       48 b8 73 75 6c 74 20    movabs $0x72657320746c7573,%rax
    282b:       73 65 72
    282e:       48 89 45 30             mov    %rax,0x30(%rbp)
    2832:       c7 45 38 76 65 72 00    movl   $0x726576,0x38(%rbp)
    2839:       89 df                   mov    %ebx,%edi
    283b:       e8 60 e6 ff ff          callq  ea0 <close@plt>
    2840:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2845:       48 8b 9c 24 58 a0 00    mov    0xa058(%rsp),%rbx
    284c:       00
    284d:       64 48 33 1c 25 28 00    xor    %fs:0x28,%rbx
    2854:       00 00
    2856:       0f 85 7e 04 00 00       jne    2cda <submitr+0x77c>
    285c:       48 81 c4 68 a0 00 00    add    $0xa068,%rsp
    2863:       5b                      pop    %rbx
    2864:       5d                      pop    %rbp
    2865:       41 5c                   pop    %r12
    2867:       41 5d                   pop    %r13
    2869:       41 5e                   pop    %r14
    286b:       41 5f                   pop    %r15
    286d:       c3                      retq
    286e:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
    2875:       3a 20 43
    2878:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
    287f:       20 75 6e
    2882:       48 89 45 00             mov    %rax,0x0(%rbp)
    2886:       48 89 55 08             mov    %rdx,0x8(%rbp)
    288a:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    2891:       74 6f 20
    2894:       48 ba 63 72 65 61 74    movabs $0x7320657461657263,%rdx
    289b:       65 20 73
    289e:       48 89 45 10             mov    %rax,0x10(%rbp)
    28a2:       48 89 55 18             mov    %rdx,0x18(%rbp)
    28a6:       c7 45 20 6f 63 6b 65    movl   $0x656b636f,0x20(%rbp)
    28ad:       66 c7 45 24 74 00       movw   $0x74,0x24(%rbp)
    28b3:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    28b8:       eb 8b                   jmp    2845 <submitr+0x2e7>
    28ba:       48 b8 45 72 72 6f 72    movabs $0x44203a726f727245,%rax
    28c1:       3a 20 44
    28c4:       48 ba 4e 53 20 69 73    movabs $0x6e7520736920534e,%rdx
    28cb:       20 75 6e
    28ce:       48 89 45 00             mov    %rax,0x0(%rbp)
    28d2:       48 89 55 08             mov    %rdx,0x8(%rbp)
    28d6:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    28dd:       74 6f 20
    28e0:       48 ba 72 65 73 6f 6c    movabs $0x2065766c6f736572,%rdx
    28e7:       76 65 20
    28ea:       48 89 45 10             mov    %rax,0x10(%rbp)
    28ee:       48 89 55 18             mov    %rdx,0x18(%rbp)
    28f2:       48 b8 73 65 72 76 65    movabs $0x6120726576726573,%rax
    28f9:       72 20 61
    28fc:       48 89 45 20             mov    %rax,0x20(%rbp)
    2900:       c7 45 28 64 64 72 65    movl   $0x65726464,0x28(%rbp)
    2907:       66 c7 45 2c 73 73       movw   $0x7373,0x2c(%rbp)
    290d:       c6 45 2e 00             movb   $0x0,0x2e(%rbp)
    2911:       89 df                   mov    %ebx,%edi
    2913:       e8 88 e5 ff ff          callq  ea0 <close@plt>
    2918:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    291d:       e9 23 ff ff ff          jmpq   2845 <submitr+0x2e7>
    2922:       48 b8 45 72 72 6f 72    movabs $0x55203a726f727245,%rax
    2929:       3a 20 55
    292c:       48 ba 6e 61 62 6c 65    movabs $0x6f7420656c62616e,%rdx
    2933:       20 74 6f
    2936:       48 89 45 00             mov    %rax,0x0(%rbp)
    293a:       48 89 55 08             mov    %rdx,0x8(%rbp)
    293e:       48 b8 20 63 6f 6e 6e    movabs $0x7463656e6e6f6320,%rax
    2945:       65 63 74
    2948:       48 ba 20 74 6f 20 74    movabs $0x20656874206f7420,%rdx
    294f:       68 65 20
    2952:       48 89 45 10             mov    %rax,0x10(%rbp)
    2956:       48 89 55 18             mov    %rdx,0x18(%rbp)
    295a:       c7 45 20 73 65 72 76    movl   $0x76726573,0x20(%rbp)
    2961:       66 c7 45 24 65 72       movw   $0x7265,0x24(%rbp)
    2967:       c6 45 26 00             movb   $0x0,0x26(%rbp)
    296b:       89 df                   mov    %ebx,%edi
    296d:       e8 2e e5 ff ff          callq  ea0 <close@plt>
    2972:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2977:       e9 c9 fe ff ff          jmpq   2845 <submitr+0x2e7>
    297c:       48 b8 45 72 72 6f 72    movabs $0x52203a726f727245,%rax
    2983:       3a 20 52
    2986:       48 ba 65 73 75 6c 74    movabs $0x747320746c757365,%rdx
    298d:       20 73 74
    2990:       48 89 45 00             mov    %rax,0x0(%rbp)
    2994:       48 89 55 08             mov    %rdx,0x8(%rbp)
    2998:       48 b8 72 69 6e 67 20    movabs $0x6f6f7420676e6972,%rax
    299f:       74 6f 6f
    29a2:       48 ba 20 6c 61 72 67    movabs $0x202e656772616c20,%rdx
    29a9:       65 2e 20
    29ac:       48 89 45 10             mov    %rax,0x10(%rbp)
    29b0:       48 89 55 18             mov    %rdx,0x18(%rbp)
    29b4:       48 b8 49 6e 63 72 65    movabs $0x6573616572636e49,%rax
    29bb:       61 73 65
    29be:       48 ba 20 53 55 42 4d    movabs $0x5254494d42555320,%rdx
    29c5:       49 54 52
    29c8:       48 89 45 20             mov    %rax,0x20(%rbp)
    29cc:       48 89 55 28             mov    %rdx,0x28(%rbp)
    29d0:       48 b8 5f 4d 41 58 42    movabs $0x46554258414d5f,%rax
    29d7:       55 46 00
    29da:       48 89 45 30             mov    %rax,0x30(%rbp)
    29de:       89 df                   mov    %ebx,%edi
    29e0:       e8 bb e4 ff ff          callq  ea0 <close@plt>
    29e5:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    29ea:       e9 56 fe ff ff          jmpq   2845 <submitr+0x2e7>
    29ef:       48 b8 45 72 72 6f 72    movabs $0x52203a726f727245,%rax
    29f6:       3a 20 52
    29f9:       48 ba 65 73 75 6c 74    movabs $0x747320746c757365,%rdx
    2a00:       20 73 74
    2a03:       48 89 45 00             mov    %rax,0x0(%rbp)
    2a07:       48 89 55 08             mov    %rdx,0x8(%rbp)
    2a0b:       48 b8 72 69 6e 67 20    movabs $0x6e6f6320676e6972,%rax
    2a12:       63 6f 6e
    2a15:       48 ba 74 61 69 6e 73    movabs $0x6e6120736e696174,%rdx
    2a1c:       20 61 6e
    2a1f:       48 89 45 10             mov    %rax,0x10(%rbp)
    2a23:       48 89 55 18             mov    %rdx,0x18(%rbp)
    2a27:       48 b8 20 69 6c 6c 65    movabs $0x6c6167656c6c6920,%rax
    2a2e:       67 61 6c
    2a31:       48 ba 20 6f 72 20 75    movabs $0x72706e7520726f20,%rdx
    2a38:       6e 70 72
    2a3b:       48 89 45 20             mov    %rax,0x20(%rbp)
    2a3f:       48 89 55 28             mov    %rdx,0x28(%rbp)
    2a43:       48 b8 69 6e 74 61 62    movabs $0x20656c6261746e69,%rax
    2a4a:       6c 65 20
    2a4d:       48 ba 63 68 61 72 61    movabs $0x6574636172616863,%rdx
    2a54:       63 74 65
    2a57:       48 89 45 30             mov    %rax,0x30(%rbp)
    2a5b:       48 89 55 38             mov    %rdx,0x38(%rbp)
    2a5f:       66 c7 45 40 72 2e       movw   $0x2e72,0x40(%rbp)
    2a65:       c6 45 42 00             movb   $0x0,0x42(%rbp)
    2a69:       89 df                   mov    %ebx,%edi
    2a6b:       e8 30 e4 ff ff          callq  ea0 <close@plt>
    2a70:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2a75:       e9 cb fd ff ff          jmpq   2845 <submitr+0x2e7>
    2a7a:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
    2a81:       3a 20 43
    2a84:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
    2a8b:       20 75 6e
    2a8e:       48 89 45 00             mov    %rax,0x0(%rbp)
    2a92:       48 89 55 08             mov    %rdx,0x8(%rbp)
    2a96:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    2a9d:       74 6f 20
    2aa0:       48 ba 77 72 69 74 65    movabs $0x6f74206574697277,%rdx
    2aa7:       20 74 6f
    2aaa:       48 89 45 10             mov    %rax,0x10(%rbp)
    2aae:       48 89 55 18             mov    %rdx,0x18(%rbp)
    2ab2:       48 b8 20 74 68 65 20    movabs $0x7365722065687420,%rax
    2ab9:       72 65 73
    2abc:       48 ba 75 6c 74 20 73    movabs $0x7672657320746c75,%rdx
    2ac3:       65 72 76
    2ac6:       48 89 45 20             mov    %rax,0x20(%rbp)
    2aca:       48 89 55 28             mov    %rdx,0x28(%rbp)
    2ace:       66 c7 45 30 65 72       movw   $0x7265,0x30(%rbp)
    2ad4:       c6 45 32 00             movb   $0x0,0x32(%rbp)
    2ad8:       89 df                   mov    %ebx,%edi
    2ada:       e8 c1 e3 ff ff          callq  ea0 <close@plt>
    2adf:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2ae4:       e9 5c fd ff ff          jmpq   2845 <submitr+0x2e7>
    2ae9:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
    2af0:       3a 20 43
    2af3:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
    2afa:       20 75 6e
    2afd:       48 89 45 00             mov    %rax,0x0(%rbp)
    2b01:       48 89 55 08             mov    %rdx,0x8(%rbp)
    2b05:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    2b0c:       74 6f 20
    2b0f:       48 ba 72 65 61 64 20    movabs $0x7269662064616572,%rdx
    2b16:       66 69 72
    2b19:       48 89 45 10             mov    %rax,0x10(%rbp)
    2b1d:       48 89 55 18             mov    %rdx,0x18(%rbp)
    2b21:       48 b8 73 74 20 68 65    movabs $0x6564616568207473,%rax
    2b28:       61 64 65
    2b2b:       48 ba 72 20 66 72 6f    movabs $0x72206d6f72662072,%rdx
    2b32:       6d 20 72
    2b35:       48 89 45 20             mov    %rax,0x20(%rbp)
    2b39:       48 89 55 28             mov    %rdx,0x28(%rbp)
    2b3d:       48 b8 65 73 75 6c 74    movabs $0x657320746c757365,%rax
    2b44:       20 73 65
    2b47:       48 89 45 30             mov    %rax,0x30(%rbp)
    2b4b:       c7 45 38 72 76 65 72    movl   $0x72657672,0x38(%rbp)
    2b52:       c6 45 3c 00             movb   $0x0,0x3c(%rbp)
    2b56:       89 df                   mov    %ebx,%edi
    2b58:       e8 43 e3 ff ff          callq  ea0 <close@plt>
    2b5d:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2b62:       e9 de fc ff ff          jmpq   2845 <submitr+0x2e7>
    2b67:       48 8d b4 24 50 20 00    lea    0x2050(%rsp),%rsi
    2b6e:       00
    2b6f:       48 8d 7c 24 40          lea    0x40(%rsp),%rdi
    2b74:       ba 00 20 00 00          mov    $0x2000,%edx
    2b79:       e8 29 f8 ff ff          callq  23a7 <rio_readlineb>
    2b7e:       48 85 c0                test   %rax,%rax
    2b81:       0f 8e 96 00 00 00       jle    2c1d <submitr+0x6bf>
    2b87:       44 8b 44 24 2c          mov    0x2c(%rsp),%r8d
    2b8c:       41 81 f8 c8 00 00 00    cmp    $0xc8,%r8d
    2b93:       0f 85 08 01 00 00       jne    2ca1 <submitr+0x743>
    2b99:       48 8d b4 24 50 20 00    lea    0x2050(%rsp),%rsi
    2ba0:       00
    2ba1:       48 89 ef                mov    %rbp,%rdi
    2ba4:       e8 87 e2 ff ff          callq  e30 <strcpy@plt>
    2ba9:       89 df                   mov    %ebx,%edi
    2bab:       e8 f0 e2 ff ff          callq  ea0 <close@plt>
    2bb0:       b9 04 00 00 00          mov    $0x4,%ecx
    2bb5:       48 8d 3d 54 0c 00 00    lea    0xc54(%rip),%rdi        # 3810 <trans_char+0xc0>
    2bbc:       48 89 ee                mov    %rbp,%rsi
    2bbf:       f3 a6                   repz cmpsb %es:(%rdi),%ds:(%rsi)
    2bc1:       0f 97 c0                seta   %al
    2bc4:       1c 00                   sbb    $0x0,%al
    2bc6:       0f be c0                movsbl %al,%eax
    2bc9:       85 c0                   test   %eax,%eax
    2bcb:       0f 84 74 fc ff ff       je     2845 <submitr+0x2e7>
    2bd1:       b9 05 00 00 00          mov    $0x5,%ecx
    2bd6:       48 8d 3d 37 0c 00 00    lea    0xc37(%rip),%rdi        # 3814 <trans_char+0xc4>
    2bdd:       48 89 ee                mov    %rbp,%rsi
    2be0:       f3 a6                   repz cmpsb %es:(%rdi),%ds:(%rsi)
    2be2:       0f 97 c0                seta   %al
    2be5:       1c 00                   sbb    $0x0,%al
    2be7:       0f be c0                movsbl %al,%eax
    2bea:       85 c0                   test   %eax,%eax
    2bec:       0f 84 53 fc ff ff       je     2845 <submitr+0x2e7>
    2bf2:       b9 03 00 00 00          mov    $0x3,%ecx
    2bf7:       48 8d 3d 1b 0c 00 00    lea    0xc1b(%rip),%rdi        # 3819 <trans_char+0xc9>
    2bfe:       48 89 ee                mov    %rbp,%rsi
    2c01:       f3 a6                   repz cmpsb %es:(%rdi),%ds:(%rsi)
    2c03:       0f 97 c0                seta   %al
    2c06:       1c 00                   sbb    $0x0,%al
    2c08:       0f be c0                movsbl %al,%eax
    2c0b:       85 c0                   test   %eax,%eax
    2c0d:       0f 84 32 fc ff ff       je     2845 <submitr+0x2e7>
    2c13:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2c18:       e9 28 fc ff ff          jmpq   2845 <submitr+0x2e7>
    2c1d:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
    2c24:       3a 20 43
    2c27:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
    2c2e:       20 75 6e
    2c31:       48 89 45 00             mov    %rax,0x0(%rbp)
    2c35:       48 89 55 08             mov    %rdx,0x8(%rbp)
    2c39:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    2c40:       74 6f 20
    2c43:       48 ba 72 65 61 64 20    movabs $0x6174732064616572,%rdx
    2c4a:       73 74 61
    2c4d:       48 89 45 10             mov    %rax,0x10(%rbp)
    2c51:       48 89 55 18             mov    %rdx,0x18(%rbp)
    2c55:       48 b8 74 75 73 20 6d    movabs $0x7373656d20737574,%rax
    2c5c:       65 73 73
    2c5f:       48 ba 61 67 65 20 66    movabs $0x6d6f726620656761,%rdx
    2c66:       72 6f 6d
    2c69:       48 89 45 20             mov    %rax,0x20(%rbp)
    2c6d:       48 89 55 28             mov    %rdx,0x28(%rbp)
    2c71:       48 b8 20 72 65 73 75    movabs $0x20746c7573657220,%rax
    2c78:       6c 74 20
    2c7b:       48 89 45 30             mov    %rax,0x30(%rbp)
    2c7f:       c7 45 38 73 65 72 76    movl   $0x76726573,0x38(%rbp)
    2c86:       66 c7 45 3c 65 72       movw   $0x7265,0x3c(%rbp)
    2c8c:       c6 45 3e 00             movb   $0x0,0x3e(%rbp)
    2c90:       89 df                   mov    %ebx,%edi
    2c92:       e8 09 e2 ff ff          callq  ea0 <close@plt>
    2c97:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2c9c:       e9 a4 fb ff ff          jmpq   2845 <submitr+0x2e7>
    2ca1:       4c 8d 8c 24 50 80 00    lea    0x8050(%rsp),%r9
    2ca8:       00
    2ca9:       48 8d 0d 18 0b 00 00    lea    0xb18(%rip),%rcx        # 37c8 <trans_char+0x78>
    2cb0:       48 c7 c2 ff ff ff ff    mov    $0xffffffffffffffff,%rdx
    2cb7:       be 01 00 00 00          mov    $0x1,%esi
    2cbc:       48 89 ef                mov    %rbp,%rdi
    2cbf:       b8 00 00 00 00          mov    $0x0,%eax
    2cc4:       e8 17 e3 ff ff          callq  fe0 <__sprintf_chk@plt>
    2cc9:       89 df                   mov    %ebx,%edi
    2ccb:       e8 d0 e1 ff ff          callq  ea0 <close@plt>
    2cd0:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2cd5:       e9 6b fb ff ff          jmpq   2845 <submitr+0x2e7>
    2cda:       e8 81 e1 ff ff          callq  e60 <__stack_chk_fail@plt>

0000000000002cdf <init_timeout>:
    2cdf:       85 ff                   test   %edi,%edi
    2ce1:       74 28                   je     2d0b <init_timeout+0x2c>
    2ce3:       53                      push   %rbx
    2ce4:       89 fb                   mov    %edi,%ebx
    2ce6:       85 ff                   test   %edi,%edi
    2ce8:       78 1a                   js     2d04 <init_timeout+0x25>
    2cea:       48 8d 35 9d f5 ff ff    lea    -0xa63(%rip),%rsi        # 228e <sigalrm_handler>
    2cf1:       bf 0e 00 00 00          mov    $0xe,%edi
    2cf6:       e8 c5 e1 ff ff          callq  ec0 <signal@plt>
    2cfb:       89 df                   mov    %ebx,%edi
    2cfd:       e8 8e e1 ff ff          callq  e90 <alarm@plt>
    2d02:       5b                      pop    %rbx
    2d03:       c3                      retq
    2d04:       bb 00 00 00 00          mov    $0x0,%ebx
    2d09:       eb df                   jmp    2cea <init_timeout+0xb>
    2d0b:       f3 c3                   repz retq

0000000000002d0d <init_driver>:
    2d0d:       41 54                   push   %r12
    2d0f:       55                      push   %rbp
    2d10:       53                      push   %rbx
    2d11:       48 83 ec 20             sub    $0x20,%rsp
    2d15:       49 89 fc                mov    %rdi,%r12
    2d18:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    2d1f:       00 00
    2d21:       48 89 44 24 18          mov    %rax,0x18(%rsp)
    2d26:       31 c0                   xor    %eax,%eax
    2d28:       be 01 00 00 00          mov    $0x1,%esi
    2d2d:       bf 0d 00 00 00          mov    $0xd,%edi
    2d32:       e8 89 e1 ff ff          callq  ec0 <signal@plt>
    2d37:       be 01 00 00 00          mov    $0x1,%esi
    2d3c:       bf 1d 00 00 00          mov    $0x1d,%edi
    2d41:       e8 7a e1 ff ff          callq  ec0 <signal@plt>
    2d46:       be 01 00 00 00          mov    $0x1,%esi
    2d4b:       bf 1d 00 00 00          mov    $0x1d,%edi
    2d50:       e8 6b e1 ff ff          callq  ec0 <signal@plt>
    2d55:       ba 00 00 00 00          mov    $0x0,%edx
    2d5a:       be 01 00 00 00          mov    $0x1,%esi
    2d5f:       bf 02 00 00 00          mov    $0x2,%edi
    2d64:       e8 87 e2 ff ff          callq  ff0 <socket@plt>
    2d69:       85 c0                   test   %eax,%eax
    2d6b:       0f 88 a3 00 00 00       js     2e14 <init_driver+0x107>
    2d71:       89 c3                   mov    %eax,%ebx
    2d73:       48 8d 3d a2 0a 00 00    lea    0xaa2(%rip),%rdi        # 381c <trans_char+0xcc>
    2d7a:       e8 51 e1 ff ff          callq  ed0 <gethostbyname@plt>
    2d7f:       48 85 c0                test   %rax,%rax
    2d82:       0f 84 df 00 00 00       je     2e67 <init_driver+0x15a>
    2d88:       48 89 e5                mov    %rsp,%rbp
    2d8b:       48 c7 44 24 02 00 00    movq   $0x0,0x2(%rsp)
    2d92:       00 00
    2d94:       c7 45 0a 00 00 00 00    movl   $0x0,0xa(%rbp)
    2d9b:       66 c7 45 0e 00 00       movw   $0x0,0xe(%rbp)
    2da1:       66 c7 04 24 02 00       movw   $0x2,(%rsp)
    2da7:       48 63 50 14             movslq 0x14(%rax),%rdx
    2dab:       48 8b 40 18             mov    0x18(%rax),%rax
    2daf:       48 8b 30                mov    (%rax),%rsi
    2db2:       48 8d 7d 04             lea    0x4(%rbp),%rdi
    2db6:       b9 0c 00 00 00          mov    $0xc,%ecx
    2dbb:       e8 20 e1 ff ff          callq  ee0 <__memmove_chk@plt>
    2dc0:       66 c7 44 24 02 3c 9a    movw   $0x9a3c,0x2(%rsp)
    2dc7:       ba 10 00 00 00          mov    $0x10,%edx
    2dcc:       48 89 ee                mov    %rbp,%rsi
    2dcf:       89 df                   mov    %ebx,%edi
    2dd1:       e8 ea e1 ff ff          callq  fc0 <connect@plt>
    2dd6:       85 c0                   test   %eax,%eax
    2dd8:       0f 88 fb 00 00 00       js     2ed9 <init_driver+0x1cc>
    2dde:       89 df                   mov    %ebx,%edi
    2de0:       e8 bb e0 ff ff          callq  ea0 <close@plt>
    2de5:       66 41 c7 04 24 4f 4b    movw   $0x4b4f,(%r12)
    2dec:       41 c6 44 24 02 00       movb   $0x0,0x2(%r12)
    2df2:       b8 00 00 00 00          mov    $0x0,%eax
    2df7:       48 8b 4c 24 18          mov    0x18(%rsp),%rcx
    2dfc:       64 48 33 0c 25 28 00    xor    %fs:0x28,%rcx
    2e03:       00 00
    2e05:       0f 85 28 01 00 00       jne    2f33 <init_driver+0x226>
    2e0b:       48 83 c4 20             add    $0x20,%rsp
    2e0f:       5b                      pop    %rbx
    2e10:       5d                      pop    %rbp
    2e11:       41 5c                   pop    %r12
    2e13:       c3                      retq
    2e14:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
    2e1b:       3a 20 43
    2e1e:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
    2e25:       20 75 6e
    2e28:       49 89 04 24             mov    %rax,(%r12)
    2e2c:       49 89 54 24 08          mov    %rdx,0x8(%r12)
    2e31:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    2e38:       74 6f 20
    2e3b:       48 ba 63 72 65 61 74    movabs $0x7320657461657263,%rdx
    2e42:       65 20 73
    2e45:       49 89 44 24 10          mov    %rax,0x10(%r12)
    2e4a:       49 89 54 24 18          mov    %rdx,0x18(%r12)
    2e4f:       41 c7 44 24 20 6f 63    movl   $0x656b636f,0x20(%r12)
    2e56:       6b 65
    2e58:       66 41 c7 44 24 24 74    movw   $0x74,0x24(%r12)
    2e5f:       00
    2e60:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2e65:       eb 90                   jmp    2df7 <init_driver+0xea>
    2e67:       48 b8 45 72 72 6f 72    movabs $0x44203a726f727245,%rax
    2e6e:       3a 20 44
    2e71:       48 ba 4e 53 20 69 73    movabs $0x6e7520736920534e,%rdx
    2e78:       20 75 6e
    2e7b:       49 89 04 24             mov    %rax,(%r12)
    2e7f:       49 89 54 24 08          mov    %rdx,0x8(%r12)
    2e84:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    2e8b:       74 6f 20
    2e8e:       48 ba 72 65 73 6f 6c    movabs $0x2065766c6f736572,%rdx
    2e95:       76 65 20
    2e98:       49 89 44 24 10          mov    %rax,0x10(%r12)
    2e9d:       49 89 54 24 18          mov    %rdx,0x18(%r12)
    2ea2:       48 b8 73 65 72 76 65    movabs $0x6120726576726573,%rax
    2ea9:       72 20 61
    2eac:       49 89 44 24 20          mov    %rax,0x20(%r12)
    2eb1:       41 c7 44 24 28 64 64    movl   $0x65726464,0x28(%r12)
    2eb8:       72 65
    2eba:       66 41 c7 44 24 2c 73    movw   $0x7373,0x2c(%r12)
    2ec1:       73
    2ec2:       41 c6 44 24 2e 00       movb   $0x0,0x2e(%r12)
    2ec8:       89 df                   mov    %ebx,%edi
    2eca:       e8 d1 df ff ff          callq  ea0 <close@plt>
    2ecf:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2ed4:       e9 1e ff ff ff          jmpq   2df7 <init_driver+0xea>
    2ed9:       48 b8 45 72 72 6f 72    movabs $0x55203a726f727245,%rax
    2ee0:       3a 20 55
    2ee3:       48 ba 6e 61 62 6c 65    movabs $0x6f7420656c62616e,%rdx
    2eea:       20 74 6f
    2eed:       49 89 04 24             mov    %rax,(%r12)
    2ef1:       49 89 54 24 08          mov    %rdx,0x8(%r12)
    2ef6:       48 b8 20 63 6f 6e 6e    movabs $0x7463656e6e6f6320,%rax
    2efd:       65 63 74
    2f00:       48 ba 20 74 6f 20 73    movabs $0x76726573206f7420,%rdx
    2f07:       65 72 76
    2f0a:       49 89 44 24 10          mov    %rax,0x10(%r12)
    2f0f:       49 89 54 24 18          mov    %rdx,0x18(%r12)
    2f14:       66 41 c7 44 24 20 65    movw   $0x7265,0x20(%r12)
    2f1b:       72
    2f1c:       41 c6 44 24 22 00       movb   $0x0,0x22(%r12)
    2f22:       89 df                   mov    %ebx,%edi
    2f24:       e8 77 df ff ff          callq  ea0 <close@plt>
    2f29:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2f2e:       e9 c4 fe ff ff          jmpq   2df7 <init_driver+0xea>
    2f33:       e8 28 df ff ff          callq  e60 <__stack_chk_fail@plt>

0000000000002f38 <driver_post>:
    2f38:       53                      push   %rbx
    2f39:       4c 89 cb                mov    %r9,%rbx
    2f3c:       45 85 c0                test   %r8d,%r8d
    2f3f:       75 18                   jne    2f59 <driver_post+0x21>
    2f41:       48 85 ff                test   %rdi,%rdi
    2f44:       74 05                   je     2f4b <driver_post+0x13>
    2f46:       80 3f 00                cmpb   $0x0,(%rdi)
    2f49:       75 37                   jne    2f82 <driver_post+0x4a>
    2f4b:       66 c7 03 4f 4b          movw   $0x4b4f,(%rbx)
    2f50:       c6 43 02 00             movb   $0x0,0x2(%rbx)
    2f54:       44 89 c0                mov    %r8d,%eax
    2f57:       5b                      pop    %rbx
    2f58:       c3                      retq
    2f59:       48 89 ca                mov    %rcx,%rdx
    2f5c:       48 8d 35 c9 08 00 00    lea    0x8c9(%rip),%rsi        # 382c <trans_char+0xdc>
    2f63:       bf 01 00 00 00          mov    $0x1,%edi
    2f68:       b8 00 00 00 00          mov    $0x0,%eax
    2f6d:       e8 ee df ff ff          callq  f60 <__printf_chk@plt>
    2f72:       66 c7 03 4f 4b          movw   $0x4b4f,(%rbx)
    2f77:       c6 43 02 00             movb   $0x0,0x2(%rbx)
    2f7b:       b8 00 00 00 00          mov    $0x0,%eax
    2f80:       eb d5                   jmp    2f57 <driver_post+0x1f>
    2f82:       48 83 ec 08             sub    $0x8,%rsp
    2f86:       41 51                   push   %r9
    2f88:       49 89 c9                mov    %rcx,%r9
    2f8b:       49 89 d0                mov    %rdx,%r8
    2f8e:       48 89 f9                mov    %rdi,%rcx
    2f91:       48 89 f2                mov    %rsi,%rdx
    2f94:       be 9a 3c 00 00          mov    $0x3c9a,%esi
    2f99:       48 8d 3d 7c 08 00 00    lea    0x87c(%rip),%rdi        # 381c <trans_char+0xcc>
    2fa0:       e8 b9 f5 ff ff          callq  255e <submitr>
    2fa5:       48 83 c4 10             add    $0x10,%rsp
    2fa9:       eb ac                   jmp    2f57 <driver_post+0x1f>

0000000000002fab <check>:
    2fab:       89 f8                   mov    %edi,%eax
    2fad:       c1 e8 1c                shr    $0x1c,%eax
    2fb0:       85 c0                   test   %eax,%eax
    2fb2:       74 1d                   je     2fd1 <check+0x26>
    2fb4:       b9 00 00 00 00          mov    $0x0,%ecx
    2fb9:       83 f9 1f                cmp    $0x1f,%ecx
    2fbc:       7f 0d                   jg     2fcb <check+0x20>
    2fbe:       89 f8                   mov    %edi,%eax
    2fc0:       d3 e8                   shr    %cl,%eax
    2fc2:       3c 0a                   cmp    $0xa,%al
    2fc4:       74 11                   je     2fd7 <check+0x2c>
    2fc6:       83 c1 08                add    $0x8,%ecx
    2fc9:       eb ee                   jmp    2fb9 <check+0xe>
    2fcb:       b8 01 00 00 00          mov    $0x1,%eax
    2fd0:       c3                      retq
    2fd1:       b8 00 00 00 00          mov    $0x0,%eax
    2fd6:       c3                      retq
    2fd7:       b8 00 00 00 00          mov    $0x0,%eax
    2fdc:       c3                      retq

0000000000002fdd <gencookie>:
    2fdd:       53                      push   %rbx
    2fde:       83 c7 01                add    $0x1,%edi
    2fe1:       e8 2a de ff ff          callq  e10 <srandom@plt>
    2fe6:       e8 35 df ff ff          callq  f20 <random@plt>
    2feb:       89 c3                   mov    %eax,%ebx
    2fed:       89 c7                   mov    %eax,%edi
    2fef:       e8 b7 ff ff ff          callq  2fab <check>
    2ff4:       85 c0                   test   %eax,%eax
    2ff6:       74 ee                   je     2fe6 <gencookie+0x9>
    2ff8:       89 d8                   mov    %ebx,%eax
    2ffa:       5b                      pop    %rbx
    2ffb:       c3                      retq
    2ffc:       0f 1f 40 00             nopl   0x0(%rax)

0000000000003000 <__libc_csu_init>:
    3000:       41 57                   push   %r15
    3002:       41 56                   push   %r14
    3004:       49 89 d7                mov    %rdx,%r15
    3007:       41 55                   push   %r13
    3009:       41 54                   push   %r12
    300b:       4c 8d 25 a6 1c 20 00    lea    0x201ca6(%rip),%r12        # 204cb8 <__frame_dummy_init_array_entry>
    3012:       55                      push   %rbp
    3013:       48 8d 2d a6 1c 20 00    lea    0x201ca6(%rip),%rbp        # 204cc0 <__init_array_end>
    301a:       53                      push   %rbx
    301b:       41 89 fd                mov    %edi,%r13d
    301e:       49 89 f6                mov    %rsi,%r14
    3021:       4c 29 e5                sub    %r12,%rbp
    3024:       48 83 ec 08             sub    $0x8,%rsp
    3028:       48 c1 fd 03             sar    $0x3,%rbp
    302c:       e8 97 dd ff ff          callq  dc8 <_init>
    3031:       48 85 ed                test   %rbp,%rbp
    3034:       74 20                   je     3056 <__libc_csu_init+0x56>
    3036:       31 db                   xor    %ebx,%ebx
    3038:       0f 1f 84 00 00 00 00    nopl   0x0(%rax,%rax,1)
    303f:       00
    3040:       4c 89 fa                mov    %r15,%rdx
    3043:       4c 89 f6                mov    %r14,%rsi
    3046:       44 89 ef                mov    %r13d,%edi
    3049:       41 ff 14 dc             callq  *(%r12,%rbx,8)
    304d:       48 83 c3 01             add    $0x1,%rbx
    3051:       48 39 dd                cmp    %rbx,%rbp
    3054:       75 ea                   jne    3040 <__libc_csu_init+0x40>
    3056:       48 83 c4 08             add    $0x8,%rsp
    305a:       5b                      pop    %rbx
    305b:       5d                      pop    %rbp
    305c:       41 5c                   pop    %r12
    305e:       41 5d                   pop    %r13
    3060:       41 5e                   pop    %r14
    3062:       41 5f                   pop    %r15
    3064:       c3                      retq
    3065:       90                      nop
    3066:       66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
    306d:       00 00 00

0000000000003070 <__libc_csu_fini>:
    3070:       f3 c3                   repz retq

Disassembly of section .fini:

0000000000003074 <_fini>:
    3074:       48 83 ec 08             sub    $0x8,%rsp
    3078:       48 83 c4 08             add    $0x8,%rsp
    307c:       c3                      retq