rtarget:     file format elf64-x86-64


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
    101f:       4c 8d 05 6a 21 00 00    lea    0x216a(%rip),%r8        # 3190 <__libc_csu_fini>
    1026:       48 8d 0d f3 20 00 00    lea    0x20f3(%rip),%rcx        # 3120 <__libc_csu_init>
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
    112a:       48 8d 35 77 20 00 00    lea    0x2077(%rip),%rsi        # 31a8 <_IO_stdin_used+0x8>
    1131:       bf 01 00 00 00          mov    $0x1,%edi
    1136:       b8 00 00 00 00          mov    $0x0,%eax
    113b:       e8 20 fe ff ff          callq  f60 <__printf_chk@plt>
    1140:       48 8d 3d 99 20 00 00    lea    0x2099(%rip),%rdi        # 31e0 <_IO_stdin_used+0x40>
    1147:       e8 f4 fc ff ff          callq  e40 <puts@plt>
    114c:       48 8d 3d 05 22 00 00    lea    0x2205(%rip),%rdi        # 3358 <_IO_stdin_used+0x1b8>
    1153:       e8 e8 fc ff ff          callq  e40 <puts@plt>
    1158:       48 8d 3d a9 20 00 00    lea    0x20a9(%rip),%rdi        # 3208 <_IO_stdin_used+0x68>
    115f:       e8 dc fc ff ff          callq  e40 <puts@plt>
    1164:       48 8d 3d 07 22 00 00    lea    0x2207(%rip),%rdi        # 3372 <_IO_stdin_used+0x1d2>
    116b:       e8 d0 fc ff ff          callq  e40 <puts@plt>
    1170:       bf 00 00 00 00          mov    $0x0,%edi
    1175:       e8 36 fe ff ff          callq  fb0 <exit@plt>
    117a:       48 8d 35 0d 22 00 00    lea    0x220d(%rip),%rsi        # 338e <_IO_stdin_used+0x1ee>
    1181:       bf 01 00 00 00          mov    $0x1,%edi
    1186:       b8 00 00 00 00          mov    $0x0,%eax
    118b:       e8 d0 fd ff ff          callq  f60 <__printf_chk@plt>
    1190:       48 8d 3d 99 20 00 00    lea    0x2099(%rip),%rdi        # 3230 <_IO_stdin_used+0x90>
    1197:       e8 a4 fc ff ff          callq  e40 <puts@plt>
    119c:       48 8d 3d b5 20 00 00    lea    0x20b5(%rip),%rdi        # 3258 <_IO_stdin_used+0xb8>
    11a3:       e8 98 fc ff ff          callq  e40 <puts@plt>
    11a8:       48 8d 3d fd 21 00 00    lea    0x21fd(%rip),%rdi        # 33ac <_IO_stdin_used+0x20c>
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
    11e0:       e8 11 1f 00 00          callq  30f6 <gencookie>
    11e5:       89 05 f9 41 20 00       mov    %eax,0x2041f9(%rip)        # 2053e4 <cookie>
    11eb:       89 c7                   mov    %eax,%edi
    11ed:       e8 04 1f 00 00          callq  30f6 <gencookie>
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
    1232:       c6 05 cf 4d 20 00 72    movb   $0x72,0x204dcf(%rip)        # 206008 <target_prefix>
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
    12bd:       48 8d 3d c4 1f 00 00    lea    0x1fc4(%rip),%rdi        # 3288 <_IO_stdin_used+0xe8>
    12c4:       e8 77 fb ff ff          callq  e40 <puts@plt>
    12c9:       bf 08 00 00 00          mov    $0x8,%edi
    12ce:       e8 dd fc ff ff          callq  fb0 <exit@plt>
    12d3:       bd 01 00 00 00          mov    $0x1,%ebp
    12d8:       85 ed                   test   %ebp,%ebp
    12da:       74 3d                   je     1319 <initialize_target+0x163>
    12dc:       48 8d bc 24 00 01 00    lea    0x100(%rsp),%rdi
    12e3:       00
    12e4:       e8 3d 1b 00 00          callq  2e26 <init_driver>
    12e9:       85 c0                   test   %eax,%eax
    12eb:       0f 89 5a ff ff ff       jns    124b <initialize_target+0x95>
    12f1:       48 8d 94 24 00 01 00    lea    0x100(%rsp),%rdx
    12f8:       00
    12f9:       48 8d 35 00 20 00 00    lea    0x2000(%rip),%rsi        # 3300 <_IO_stdin_used+0x160>
    1300:       bf 01 00 00 00          mov    $0x1,%edi
    1305:       b8 00 00 00 00          mov    $0x0,%eax
    130a:       e8 51 fc ff ff          callq  f60 <__printf_chk@plt>
    130f:       bf 08 00 00 00          mov    $0x8,%edi
    1314:       e8 97 fc ff ff          callq  fb0 <exit@plt>
    1319:       48 89 e2                mov    %rsp,%rdx
    131c:       48 8d 35 9d 1f 00 00    lea    0x1f9d(%rip),%rsi        # 32c0 <_IO_stdin_used+0x120>
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
    134f:       48 8d 35 d7 0d 00 00    lea    0xdd7(%rip),%rsi        # 212d <seghandler>
    1356:       bf 0b 00 00 00          mov    $0xb,%edi
    135b:       e8 60 fb ff ff          callq  ec0 <signal@plt>
    1360:       48 8d 35 72 0d 00 00    lea    0xd72(%rip),%rsi        # 20d9 <bushandler>
    1367:       bf 07 00 00 00          mov    $0x7,%edi
    136c:       e8 4f fb ff ff          callq  ec0 <signal@plt>
    1371:       48 8d 35 09 0e 00 00    lea    0xe09(%rip),%rsi        # 2181 <illegalhandler>
    1378:       bf 04 00 00 00          mov    $0x4,%edi
    137d:       e8 3e fb ff ff          callq  ec0 <signal@plt>
    1382:       83 3d 5f 40 20 00 00    cmpl   $0x0,0x20405f(%rip)        # 2053e8 <is_checker>
    1389:       75 26                   jne    13b1 <main+0x70>
    138b:       48 8d 2d 33 20 00 00    lea    0x2033(%rip),%rbp        # 33c5 <_IO_stdin_used+0x225>
    1392:       48 8b 05 e7 3f 20 00    mov    0x203fe7(%rip),%rax        # 205380 <stdin@@GLIBC_2.2.5>
    1399:       48 89 05 30 40 20 00    mov    %rax,0x204030(%rip)        # 2053d0 <infile>
    13a0:       41 bd 00 00 00 00       mov    $0x0,%r13d
    13a6:       41 be 00 00 00 00       mov    $0x0,%r14d
    13ac:       e9 8d 00 00 00          jmpq   143e <main+0xfd>
    13b1:       48 8d 35 1d 0e 00 00    lea    0xe1d(%rip),%rsi        # 21d5 <sigalrmhandler>
    13b8:       bf 0e 00 00 00          mov    $0xe,%edi
    13bd:       e8 fe fa ff ff          callq  ec0 <signal@plt>
    13c2:       bf 05 00 00 00          mov    $0x5,%edi
    13c7:       e8 c4 fa ff ff          callq  e90 <alarm@plt>
    13cc:       48 8d 2d f7 1f 00 00    lea    0x1ff7(%rip),%rbp        # 33ca <_IO_stdin_used+0x22a>
    13d3:       eb bd                   jmp    1392 <main+0x51>
    13d5:       48 8b 3b                mov    (%rbx),%rdi
    13d8:       e8 3d fd ff ff          callq  111a <usage>
    13dd:       48 8d 35 49 22 00 00    lea    0x2249(%rip),%rsi        # 362d <_IO_stdin_used+0x48d>
    13e4:       48 8b 3d 9d 3f 20 00    mov    0x203f9d(%rip),%rdi        # 205388 <optarg@@GLIBC_2.2.5>
    13eb:       e8 80 fb ff ff          callq  f70 <fopen@plt>
    13f0:       48 89 05 d9 3f 20 00    mov    %rax,0x203fd9(%rip)        # 2053d0 <infile>
    13f7:       48 85 c0                test   %rax,%rax
    13fa:       75 42                   jne    143e <main+0xfd>
    13fc:       48 8b 0d 85 3f 20 00    mov    0x203f85(%rip),%rcx        # 205388 <optarg@@GLIBC_2.2.5>
    1403:       48 8d 15 c8 1f 00 00    lea    0x1fc8(%rip),%rdx        # 33d2 <_IO_stdin_used+0x232>
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
    145d:       48 8d 0d ac 1f 00 00    lea    0x1fac(%rip),%rcx        # 3410 <_IO_stdin_used+0x270>
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
    1494:       48 8d 35 54 1f 00 00    lea    0x1f54(%rip),%rsi        # 33ef <_IO_stdin_used+0x24f>
    149b:       bf 01 00 00 00          mov    $0x1,%edi
    14a0:       b8 00 00 00 00          mov    $0x0,%eax
    14a5:       e8 b6 fa ff ff          callq  f60 <__printf_chk@plt>
    14aa:       48 8b 3b                mov    (%rbx),%rdi
    14ad:       e8 68 fc ff ff          callq  111a <usage>
    14b2:       be 01 00 00 00          mov    $0x1,%esi
    14b7:       44 89 ef                mov    %r13d,%edi
    14ba:       e8 f7 fc ff ff          callq  11b6 <initialize_target>
    14bf:       83 3d 22 3f 20 00 00    cmpl   $0x0,0x203f22(%rip)        # 2053e8 <is_checker>
    14c6:       74 09                   je     14d1 <main+0x190>
    14c8:       44 39 35 11 3f 20 00    cmp    %r14d,0x203f11(%rip)        # 2053e0 <authkey>
    14cf:       75 36                   jne    1507 <main+0x1c6>
    14d1:       8b 15 0d 3f 20 00       mov    0x203f0d(%rip),%edx        # 2053e4 <cookie>
    14d7:       48 8d 35 24 1f 00 00    lea    0x1f24(%rip),%rsi        # 3402 <_IO_stdin_used+0x262>
    14de:       bf 01 00 00 00          mov    $0x1,%edi
    14e3:       b8 00 00 00 00          mov    $0x0,%eax
    14e8:       e8 73 fa ff ff          callq  f60 <__printf_chk@plt>
    14ed:       48 8b 3d 6c 3e 20 00    mov    0x203e6c(%rip),%rdi        # 205360 <buf_offset>
    14f4:       e8 33 0d 00 00          callq  222c <launch>
    14f9:       b8 00 00 00 00          mov    $0x0,%eax
    14fe:       5b                      pop    %rbx
    14ff:       5d                      pop    %rbp
    1500:       41 5c                   pop    %r12
    1502:       41 5d                   pop    %r13
    1504:       41 5e                   pop    %r14
    1506:       c3                      retq
    1507:       44 89 f2                mov    %r14d,%edx
    150a:       48 8d 35 17 1e 00 00    lea    0x1e17(%rip),%rsi        # 3328 <_IO_stdin_used+0x188>
    1511:       bf 01 00 00 00          mov    $0x1,%edi
    1516:       b8 00 00 00 00          mov    $0x0,%eax
    151b:       e8 40 fa ff ff          callq  f60 <__printf_chk@plt>
    1520:       b8 00 00 00 00          mov    $0x0,%eax
    1525:       e8 0f 08 00 00          callq  1d39 <check_fail>
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
    19bf:       e8 ad 03 00 00          callq  1d71 <Gets>
    19c4:       b8 01 00 00 00          mov    $0x1,%eax
    19c9:       48 83 c4 38             add    $0x38,%rsp
    19cd:       c3                      retq

00000000000019ce <touch1>:
    19ce:       48 83 ec 08             sub    $0x8,%rsp
    19d2:       c7 05 00 3a 20 00 01    movl   $0x1,0x203a00(%rip)        # 2053dc <vlevel>
    19d9:       00 00 00
    19dc:       48 8d 3d 9f 1a 00 00    lea    0x1a9f(%rip),%rdi        # 3482 <_IO_stdin_used+0x2e2>
    19e3:       e8 58 f4 ff ff          callq  e40 <puts@plt>
    19e8:       bf 01 00 00 00          mov    $0x1,%edi
    19ed:       e8 ef 05 00 00          callq  1fe1 <validate>
    19f2:       bf 00 00 00 00          mov    $0x0,%edi
    19f7:       e8 b4 f5 ff ff          callq  fb0 <exit@plt>

00000000000019fc <touch2>:
    19fc:       48 83 ec 08             sub    $0x8,%rsp
    1a00:       89 fa                   mov    %edi,%edx
    1a02:       c7 05 d0 39 20 00 02    movl   $0x2,0x2039d0(%rip)        # 2053dc <vlevel>
    1a09:       00 00 00
    1a0c:       39 3d d2 39 20 00       cmp    %edi,0x2039d2(%rip)        # 2053e4 <cookie>
    1a12:       74 2a                   je     1a3e <touch2+0x42>
    1a14:       48 8d 35 b5 1a 00 00    lea    0x1ab5(%rip),%rsi        # 34d0 <_IO_stdin_used+0x330>
    1a1b:       bf 01 00 00 00          mov    $0x1,%edi
    1a20:       b8 00 00 00 00          mov    $0x0,%eax
    1a25:       e8 36 f5 ff ff          callq  f60 <__printf_chk@plt>
    1a2a:       bf 02 00 00 00          mov    $0x2,%edi
    1a2f:       e8 7d 06 00 00          callq  20b1 <fail>
    1a34:       bf 00 00 00 00          mov    $0x0,%edi
    1a39:       e8 72 f5 ff ff          callq  fb0 <exit@plt>
    1a3e:       48 8d 35 63 1a 00 00    lea    0x1a63(%rip),%rsi        # 34a8 <_IO_stdin_used+0x308>
    1a45:       bf 01 00 00 00          mov    $0x1,%edi
    1a4a:       b8 00 00 00 00          mov    $0x0,%eax
    1a4f:       e8 0c f5 ff ff          callq  f60 <__printf_chk@plt>
    1a54:       bf 02 00 00 00          mov    $0x2,%edi
    1a59:       e8 83 05 00 00          callq  1fe1 <validate>
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
    1abd:       48 8d 0d db 19 00 00    lea    0x19db(%rip),%rcx        # 349f <_IO_stdin_used+0x2ff>
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
    1b36:       48 8d 35 bb 19 00 00    lea    0x19bb(%rip),%rsi        # 34f8 <_IO_stdin_used+0x358>
    1b3d:       bf 01 00 00 00          mov    $0x1,%edi
    1b42:       b8 00 00 00 00          mov    $0x0,%eax
    1b47:       e8 14 f4 ff ff          callq  f60 <__printf_chk@plt>
    1b4c:       bf 03 00 00 00          mov    $0x3,%edi
    1b51:       e8 8b 04 00 00          callq  1fe1 <validate>
    1b56:       bf 00 00 00 00          mov    $0x0,%edi
    1b5b:       e8 50 f4 ff ff          callq  fb0 <exit@plt>
    1b60:       48 89 da                mov    %rbx,%rdx
    1b63:       48 8d 35 b6 19 00 00    lea    0x19b6(%rip),%rsi        # 3520 <_IO_stdin_used+0x380>
    1b6a:       bf 01 00 00 00          mov    $0x1,%edi
    1b6f:       b8 00 00 00 00          mov    $0x0,%eax
    1b74:       e8 e7 f3 ff ff          callq  f60 <__printf_chk@plt>
    1b79:       bf 03 00 00 00          mov    $0x3,%edi
    1b7e:       e8 2e 05 00 00          callq  20b1 <fail>
    1b83:       eb d1                   jmp    1b56 <touch3+0x43>

0000000000001b85 <test>:
    1b85:       48 83 ec 08             sub    $0x8,%rsp
    1b89:       b8 00 00 00 00          mov    $0x0,%eax
    1b8e:       e8 25 fe ff ff          callq  19b8 <getbuf>
    1b93:       89 c2                   mov    %eax,%edx
    1b95:       48 8d 35 ac 19 00 00    lea    0x19ac(%rip),%rsi        # 3548 <_IO_stdin_used+0x3a8>
    1b9c:       bf 01 00 00 00          mov    $0x1,%edi
    1ba1:       b8 00 00 00 00          mov    $0x0,%eax
    1ba6:       e8 b5 f3 ff ff          callq  f60 <__printf_chk@plt>
    1bab:       48 83 c4 08             add    $0x8,%rsp
    1baf:       c3                      retq

0000000000001bb0 <start_farm>:
    1bb0:       b8 01 00 00 00          mov    $0x1,%eax
    1bb5:       c3                      retq

0000000000001bb6 <getval_127>:
    1bb6:       b8 b0 4c 89 c7          mov    $0xc7894cb0,%eax
    1bbb:       c3                      retq

0000000000001bbc <getval_386>:
    1bbc:       b8 06 35 be 58          mov    $0x58be3506,%eax
    1bc1:       c3                      retq

0000000000001bc2 <addval_142>:
    1bc2:       8d 87 48 89 c7 c3       lea    -0x3c3876b8(%rdi),%eax
    1bc8:       c3                      retq

0000000000001bc9 <getval_420>:
    1bc9:       b8 58 94 90 90          mov    $0x90909458,%eax
    1bce:       c3                      retq

0000000000001bcf <getval_444>:
    1bcf:       b8 f6 48 89 c7          mov    $0xc78948f6,%eax
    1bd4:       c3                      retq

0000000000001bd5 <addval_165>:
    1bd5:       8d 87 4a 89 c7 90       lea    -0x6f3876b6(%rdi),%eax
    1bdb:       c3                      retq

0000000000001bdc <setval_201>:
    1bdc:       c7 07 4a 58 91 90       movl   $0x9091584a,(%rdi)
    1be2:       c3                      retq

0000000000001be3 <getval_404>:
    1be3:       b8 58 90 c3 ee          mov    $0xeec39058,%eax
    1be8:       c3                      retq

0000000000001be9 <mid_farm>:
    1be9:       b8 01 00 00 00          mov    $0x1,%eax
    1bee:       c3                      retq

0000000000001bef <add_xy>:
    1bef:       48 8d 04 37             lea    (%rdi,%rsi,1),%rax
    1bf3:       c3                      retq

0000000000001bf4 <getval_221>:
    1bf4:       b8 89 ce 94 c3          mov    $0xc394ce89,%eax
    1bf9:       c3                      retq

0000000000001bfa <setval_147>:
    1bfa:       c7 07 89 ce 78 d2       movl   $0xd278ce89,(%rdi)
    1c00:       c3                      retq

0000000000001c01 <addval_321>:
    1c01:       8d 87 89 ce 38 c0       lea    -0x3fc73177(%rdi),%eax
    1c07:       c3                      retq

0000000000001c08 <getval_102>:
    1c08:       b8 81 d1 08 c0          mov    $0xc008d181,%eax
    1c0d:       c3                      retq

0000000000001c0e <getval_307>:
    1c0e:       b8 48 89 e0 90          mov    $0x90e08948,%eax
    1c13:       c3                      retq

0000000000001c14 <addval_137>:
    1c14:       8d 87 89 ce c2 1f       lea    0x1fc2ce89(%rdi),%eax
    1c1a:       c3                      retq

0000000000001c1b <addval_491>:
    1c1b:       8d 87 48 89 e0 94       lea    -0x6b1f76b8(%rdi),%eax
    1c21:       c3                      retq

0000000000001c22 <getval_299>:
    1c22:       b8 89 d1 00 c0          mov    $0xc000d189,%eax
    1c27:       c3                      retq

0000000000001c28 <getval_373>:
    1c28:       b8 89 c2 94 90          mov    $0x9094c289,%eax
    1c2d:       c3                      retq

0000000000001c2e <getval_305>:
    1c2e:       b8 8b d1 08 db          mov    $0xdb08d18b,%eax
    1c33:       c3                      retq

0000000000001c34 <setval_320>:
    1c34:       c7 07 89 ce 94 c3       movl   $0xc394ce89,(%rdi)
    1c3a:       c3                      retq

0000000000001c3b <getval_385>:
    1c3b:       b8 48 89 e0 90          mov    $0x90e08948,%eax
    1c40:       c3                      retq

0000000000001c41 <getval_116>:
    1c41:       b8 81 d1 c3 94          mov    $0x94c3d181,%eax
    1c46:       c3                      retq

0000000000001c47 <getval_391>:
    1c47:       b8 89 c2 94 90          mov    $0x9094c289,%eax
    1c4c:       c3                      retq

0000000000001c4d <setval_234>:
    1c4d:       c7 07 89 c2 28 d2       movl   $0xd228c289,(%rdi)
    1c53:       c3                      retq

0000000000001c54 <getval_313>:
    1c54:       b8 8b ce 38 c0          mov    $0xc038ce8b,%eax
    1c59:       c3                      retq

0000000000001c5a <addval_480>:
    1c5a:       8d 87 89 c2 c3 db       lea    -0x243c3d77(%rdi),%eax
    1c60:       c3                      retq

0000000000001c61 <setval_247>:
    1c61:       c7 07 88 c2 84 c9       movl   $0xc984c288,(%rdi)
    1c67:       c3                      retq

0000000000001c68 <getval_216>:
    1c68:       b8 4a 89 e0 c3          mov    $0xc3e0894a,%eax
    1c6d:       c3                      retq

0000000000001c6e <getval_225>:
    1c6e:       b8 1f 99 d1 c3          mov    $0xc3d1991f,%eax
    1c73:       c3                      retq

0000000000001c74 <getval_454>:
    1c74:       b8 89 ce 38 db          mov    $0xdb38ce89,%eax
    1c79:       c3                      retq

0000000000001c7a <addval_445>:
    1c7a:       8d 87 89 d1 08 db       lea    -0x24f72e77(%rdi),%eax
    1c80:       c3                      retq

0000000000001c81 <getval_400>:
    1c81:       b8 89 d1 08 c9          mov    $0xc908d189,%eax
    1c86:       c3                      retq

0000000000001c87 <getval_464>:
    1c87:       b8 a7 49 89 e0          mov    $0xe08949a7,%eax
    1c8c:       c3                      retq

0000000000001c8d <getval_108>:
    1c8d:       b8 76 99 c2 c3          mov    $0xc3c29976,%eax
    1c92:       c3                      retq

0000000000001c93 <setval_393>:
    1c93:       c7 07 58 89 e0 c3       movl   $0xc3e08958,(%rdi)
    1c99:       c3                      retq

0000000000001c9a <addval_341>:
    1c9a:       8d 87 81 c2 38 c9       lea    -0x36c73d7f(%rdi),%eax
    1ca0:       c3                      retq

0000000000001ca1 <setval_156>:
    1ca1:       c7 07 89 c2 84 d2       movl   $0xd284c289,(%rdi)
    1ca7:       c3                      retq

0000000000001ca8 <setval_463>:
    1ca8:       c7 07 89 d1 91 90       movl   $0x9091d189,(%rdi)
    1cae:       c3                      retq

0000000000001caf <getval_121>:
    1caf:       b8 89 ce 94 90          mov    $0x9094ce89,%eax
    1cb4:       c3                      retq

0000000000001cb5 <setval_136>:
    1cb5:       c7 07 48 89 e0 c1       movl   $0xc1e08948,(%rdi)
    1cbb:       c3                      retq

0000000000001cbc <addval_369>:
    1cbc:       8d 87 48 81 e0 90       lea    -0x6f1f7eb8(%rdi),%eax
    1cc2:       c3                      retq

0000000000001cc3 <end_farm>:
    1cc3:       b8 01 00 00 00          mov    $0x1,%eax
    1cc8:       c3                      retq

0000000000001cc9 <save_char>:
    1cc9:       8b 05 35 43 20 00       mov    0x204335(%rip),%eax        # 206004 <gets_cnt>
    1ccf:       3d ff 03 00 00          cmp    $0x3ff,%eax
    1cd4:       7f 4a                   jg     1d20 <save_char+0x57>
    1cd6:       89 f9                   mov    %edi,%ecx
    1cd8:       c0 e9 04                shr    $0x4,%cl
    1cdb:       8d 14 40                lea    (%rax,%rax,2),%edx
    1cde:       4c 8d 05 8b 1b 00 00    lea    0x1b8b(%rip),%r8        # 3870 <trans_char>
    1ce5:       83 e1 0f                and    $0xf,%ecx
    1ce8:       45 0f b6 0c 08          movzbl (%r8,%rcx,1),%r9d
    1ced:       48 8d 0d 0c 37 20 00    lea    0x20370c(%rip),%rcx        # 205400 <gets_buf>
    1cf4:       48 63 f2                movslq %edx,%rsi
    1cf7:       44 88 0c 31             mov    %r9b,(%rcx,%rsi,1)
    1cfb:       8d 72 01                lea    0x1(%rdx),%esi
    1cfe:       83 e7 0f                and    $0xf,%edi
    1d01:       41 0f b6 3c 38          movzbl (%r8,%rdi,1),%edi
    1d06:       48 63 f6                movslq %esi,%rsi
    1d09:       40 88 3c 31             mov    %dil,(%rcx,%rsi,1)
    1d0d:       83 c2 02                add    $0x2,%edx
    1d10:       48 63 d2                movslq %edx,%rdx
    1d13:       c6 04 11 20             movb   $0x20,(%rcx,%rdx,1)
    1d17:       83 c0 01                add    $0x1,%eax
    1d1a:       89 05 e4 42 20 00       mov    %eax,0x2042e4(%rip)        # 206004 <gets_cnt>
    1d20:       f3 c3                   repz retq

0000000000001d22 <save_term>:
    1d22:       8b 05 dc 42 20 00       mov    0x2042dc(%rip),%eax        # 206004 <gets_cnt>
    1d28:       8d 04 40                lea    (%rax,%rax,2),%eax
    1d2b:       48 98                   cltq
    1d2d:       48 8d 15 cc 36 20 00    lea    0x2036cc(%rip),%rdx        # 205400 <gets_buf>
    1d34:       c6 04 02 00             movb   $0x0,(%rdx,%rax,1)
    1d38:       c3                      retq

0000000000001d39 <check_fail>:
    1d39:       48 83 ec 08             sub    $0x8,%rsp
    1d3d:       0f be 15 c4 42 20 00    movsbl 0x2042c4(%rip),%edx        # 206008 <target_prefix>
    1d44:       4c 8d 05 b5 36 20 00    lea    0x2036b5(%rip),%r8        # 205400 <gets_buf>
    1d4b:       8b 0d 87 36 20 00       mov    0x203687(%rip),%ecx        # 2053d8 <check_level>
    1d51:       48 8d 35 13 18 00 00    lea    0x1813(%rip),%rsi        # 356b <_IO_stdin_used+0x3cb>
    1d58:       bf 01 00 00 00          mov    $0x1,%edi
    1d5d:       b8 00 00 00 00          mov    $0x0,%eax
    1d62:       e8 f9 f1 ff ff          callq  f60 <__printf_chk@plt>
    1d67:       bf 01 00 00 00          mov    $0x1,%edi
    1d6c:       e8 3f f2 ff ff          callq  fb0 <exit@plt>

0000000000001d71 <Gets>:
    1d71:       41 54                   push   %r12
    1d73:       55                      push   %rbp
    1d74:       53                      push   %rbx
    1d75:       49 89 fc                mov    %rdi,%r12
    1d78:       c7 05 82 42 20 00 00    movl   $0x0,0x204282(%rip)        # 206004 <gets_cnt>
    1d7f:       00 00 00
    1d82:       48 89 fb                mov    %rdi,%rbx
    1d85:       eb 11                   jmp    1d98 <Gets+0x27>
    1d87:       48 8d 6b 01             lea    0x1(%rbx),%rbp
    1d8b:       88 03                   mov    %al,(%rbx)
    1d8d:       0f b6 f8                movzbl %al,%edi
    1d90:       e8 34 ff ff ff          callq  1cc9 <save_char>
    1d95:       48 89 eb                mov    %rbp,%rbx
    1d98:       48 8b 3d 31 36 20 00    mov    0x203631(%rip),%rdi        # 2053d0 <infile>
    1d9f:       e8 8c f1 ff ff          callq  f30 <_IO_getc@plt>
    1da4:       83 f8 ff                cmp    $0xffffffff,%eax
    1da7:       74 05                   je     1dae <Gets+0x3d>
    1da9:       83 f8 0a                cmp    $0xa,%eax
    1dac:       75 d9                   jne    1d87 <Gets+0x16>
    1dae:       c6 03 00                movb   $0x0,(%rbx)
    1db1:       b8 00 00 00 00          mov    $0x0,%eax
    1db6:       e8 67 ff ff ff          callq  1d22 <save_term>
    1dbb:       4c 89 e0                mov    %r12,%rax
    1dbe:       5b                      pop    %rbx
    1dbf:       5d                      pop    %rbp
    1dc0:       41 5c                   pop    %r12
    1dc2:       c3                      retq

0000000000001dc3 <notify_server>:
    1dc3:       55                      push   %rbp
    1dc4:       53                      push   %rbx
    1dc5:       48 81 ec 18 40 00 00    sub    $0x4018,%rsp
    1dcc:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    1dd3:       00 00
    1dd5:       48 89 84 24 08 40 00    mov    %rax,0x4008(%rsp)
    1ddc:       00
    1ddd:       31 c0                   xor    %eax,%eax
    1ddf:       83 3d 02 36 20 00 00    cmpl   $0x0,0x203602(%rip)        # 2053e8 <is_checker>
    1de6:       0f 85 d2 00 00 00       jne    1ebe <notify_server+0xfb>
    1dec:       89 fb                   mov    %edi,%ebx
    1dee:       8b 05 10 42 20 00       mov    0x204210(%rip),%eax        # 206004 <gets_cnt>
    1df4:       83 c0 64                add    $0x64,%eax
    1df7:       3d 00 20 00 00          cmp    $0x2000,%eax
    1dfc:       0f 8f dd 00 00 00       jg     1edf <notify_server+0x11c>
    1e02:       0f be 05 ff 41 20 00    movsbl 0x2041ff(%rip),%eax        # 206008 <target_prefix>
    1e09:       83 3d 58 35 20 00 00    cmpl   $0x0,0x203558(%rip)        # 205368 <notify>
    1e10:       0f 84 e9 00 00 00       je     1eff <notify_server+0x13c>
    1e16:       8b 15 c4 35 20 00       mov    0x2035c4(%rip),%edx        # 2053e0 <authkey>
    1e1c:       85 db                   test   %ebx,%ebx
    1e1e:       0f 84 e5 00 00 00       je     1f09 <notify_server+0x146>
    1e24:       48 8d 2d 56 17 00 00    lea    0x1756(%rip),%rbp        # 3581 <_IO_stdin_used+0x3e1>
    1e2b:       48 89 e7                mov    %rsp,%rdi
    1e2e:       48 8d 0d cb 35 20 00    lea    0x2035cb(%rip),%rcx        # 205400 <gets_buf>
    1e35:       51                      push   %rcx
    1e36:       56                      push   %rsi
    1e37:       50                      push   %rax
    1e38:       52                      push   %rdx
    1e39:       49 89 e9                mov    %rbp,%r9
    1e3c:       44 8b 05 cd 31 20 00    mov    0x2031cd(%rip),%r8d        # 205010 <target_id>
    1e43:       48 8d 0d 41 17 00 00    lea    0x1741(%rip),%rcx        # 358b <_IO_stdin_used+0x3eb>
    1e4a:       ba 00 20 00 00          mov    $0x2000,%edx
    1e4f:       be 01 00 00 00          mov    $0x1,%esi
    1e54:       b8 00 00 00 00          mov    $0x0,%eax
    1e59:       e8 82 f1 ff ff          callq  fe0 <__sprintf_chk@plt>
    1e5e:       48 83 c4 20             add    $0x20,%rsp
    1e62:       83 3d ff 34 20 00 00    cmpl   $0x0,0x2034ff(%rip)        # 205368 <notify>
    1e69:       0f 84 df 00 00 00       je     1f4e <notify_server+0x18b>
    1e6f:       85 db                   test   %ebx,%ebx
    1e71:       0f 84 c6 00 00 00       je     1f3d <notify_server+0x17a>
    1e77:       48 89 e1                mov    %rsp,%rcx
    1e7a:       4c 8d 8c 24 00 20 00    lea    0x2000(%rsp),%r9
    1e81:       00
    1e82:       41 b8 00 00 00 00       mov    $0x0,%r8d
    1e88:       48 8b 15 99 31 20 00    mov    0x203199(%rip),%rdx        # 205028 <lab>
    1e8f:       48 8b 35 9a 31 20 00    mov    0x20319a(%rip),%rsi        # 205030 <course>
    1e96:       48 8b 3d 83 31 20 00    mov    0x203183(%rip),%rdi        # 205020 <user_id>
    1e9d:       e8 af 11 00 00          callq  3051 <driver_post>
    1ea2:       85 c0                   test   %eax,%eax
    1ea4:       78 6f                   js     1f15 <notify_server+0x152>
    1ea6:       48 8d 3d 23 18 00 00    lea    0x1823(%rip),%rdi        # 36d0 <_IO_stdin_used+0x530>
    1ead:       e8 8e ef ff ff          callq  e40 <puts@plt>
    1eb2:       48 8d 3d fa 16 00 00    lea    0x16fa(%rip),%rdi        # 35b3 <_IO_stdin_used+0x413>
    1eb9:       e8 82 ef ff ff          callq  e40 <puts@plt>
    1ebe:       48 8b 84 24 08 40 00    mov    0x4008(%rsp),%rax
    1ec5:       00
    1ec6:       64 48 33 04 25 28 00    xor    %fs:0x28,%rax
    1ecd:       00 00
    1ecf:       0f 85 07 01 00 00       jne    1fdc <notify_server+0x219>
    1ed5:       48 81 c4 18 40 00 00    add    $0x4018,%rsp
    1edc:       5b                      pop    %rbx
    1edd:       5d                      pop    %rbp
    1ede:       c3                      retq
    1edf:       48 8d 35 ba 17 00 00    lea    0x17ba(%rip),%rsi        # 36a0 <_IO_stdin_used+0x500>
    1ee6:       bf 01 00 00 00          mov    $0x1,%edi
    1eeb:       b8 00 00 00 00          mov    $0x0,%eax
    1ef0:       e8 6b f0 ff ff          callq  f60 <__printf_chk@plt>
    1ef5:       bf 01 00 00 00          mov    $0x1,%edi
    1efa:       e8 b1 f0 ff ff          callq  fb0 <exit@plt>
    1eff:       ba ff ff ff ff          mov    $0xffffffff,%edx
    1f04:       e9 13 ff ff ff          jmpq   1e1c <notify_server+0x59>
    1f09:       48 8d 2d 76 16 00 00    lea    0x1676(%rip),%rbp        # 3586 <_IO_stdin_used+0x3e6>
    1f10:       e9 16 ff ff ff          jmpq   1e2b <notify_server+0x68>
    1f15:       48 8d 94 24 00 20 00    lea    0x2000(%rsp),%rdx
    1f1c:       00
    1f1d:       48 8d 35 83 16 00 00    lea    0x1683(%rip),%rsi        # 35a7 <_IO_stdin_used+0x407>
    1f24:       bf 01 00 00 00          mov    $0x1,%edi
    1f29:       b8 00 00 00 00          mov    $0x0,%eax
    1f2e:       e8 2d f0 ff ff          callq  f60 <__printf_chk@plt>
    1f33:       bf 01 00 00 00          mov    $0x1,%edi
    1f38:       e8 73 f0 ff ff          callq  fb0 <exit@plt>
    1f3d:       48 8d 3d 79 16 00 00    lea    0x1679(%rip),%rdi        # 35bd <_IO_stdin_used+0x41d>
    1f44:       e8 f7 ee ff ff          callq  e40 <puts@plt>
    1f49:       e9 70 ff ff ff          jmpq   1ebe <notify_server+0xfb>
    1f4e:       48 89 ea                mov    %rbp,%rdx
    1f51:       48 8d 35 b0 17 00 00    lea    0x17b0(%rip),%rsi        # 3708 <_IO_stdin_used+0x568>
    1f58:       bf 01 00 00 00          mov    $0x1,%edi
    1f5d:       b8 00 00 00 00          mov    $0x0,%eax
    1f62:       e8 f9 ef ff ff          callq  f60 <__printf_chk@plt>
    1f67:       48 8b 15 b2 30 20 00    mov    0x2030b2(%rip),%rdx        # 205020 <user_id>
    1f6e:       48 8d 35 4f 16 00 00    lea    0x164f(%rip),%rsi        # 35c4 <_IO_stdin_used+0x424>
    1f75:       bf 01 00 00 00          mov    $0x1,%edi
    1f7a:       b8 00 00 00 00          mov    $0x0,%eax
    1f7f:       e8 dc ef ff ff          callq  f60 <__printf_chk@plt>
    1f84:       48 8b 15 a5 30 20 00    mov    0x2030a5(%rip),%rdx        # 205030 <course>
    1f8b:       48 8d 35 3f 16 00 00    lea    0x163f(%rip),%rsi        # 35d1 <_IO_stdin_used+0x431>
    1f92:       bf 01 00 00 00          mov    $0x1,%edi
    1f97:       b8 00 00 00 00          mov    $0x0,%eax
    1f9c:       e8 bf ef ff ff          callq  f60 <__printf_chk@plt>
    1fa1:       48 8b 15 80 30 20 00    mov    0x203080(%rip),%rdx        # 205028 <lab>
    1fa8:       48 8d 35 2e 16 00 00    lea    0x162e(%rip),%rsi        # 35dd <_IO_stdin_used+0x43d>
    1faf:       bf 01 00 00 00          mov    $0x1,%edi
    1fb4:       b8 00 00 00 00          mov    $0x0,%eax
    1fb9:       e8 a2 ef ff ff          callq  f60 <__printf_chk@plt>
    1fbe:       48 89 e2                mov    %rsp,%rdx
    1fc1:       48 8d 35 1e 16 00 00    lea    0x161e(%rip),%rsi        # 35e6 <_IO_stdin_used+0x446>
    1fc8:       bf 01 00 00 00          mov    $0x1,%edi
    1fcd:       b8 00 00 00 00          mov    $0x0,%eax
    1fd2:       e8 89 ef ff ff          callq  f60 <__printf_chk@plt>
    1fd7:       e9 e2 fe ff ff          jmpq   1ebe <notify_server+0xfb>
    1fdc:       e8 7f ee ff ff          callq  e60 <__stack_chk_fail@plt>

0000000000001fe1 <validate>:
    1fe1:       53                      push   %rbx
    1fe2:       89 fb                   mov    %edi,%ebx
    1fe4:       83 3d fd 33 20 00 00    cmpl   $0x0,0x2033fd(%rip)        # 2053e8 <is_checker>
    1feb:       74 72                   je     205f <validate+0x7e>
    1fed:       39 3d e9 33 20 00       cmp    %edi,0x2033e9(%rip)        # 2053dc <vlevel>
    1ff3:       75 32                   jne    2027 <validate+0x46>
    1ff5:       8b 15 dd 33 20 00       mov    0x2033dd(%rip),%edx        # 2053d8 <check_level>
    1ffb:       39 fa                   cmp    %edi,%edx
    1ffd:       75 3e                   jne    203d <validate+0x5c>
    1fff:       0f be 15 02 40 20 00    movsbl 0x204002(%rip),%edx        # 206008 <target_prefix>
    2006:       4c 8d 05 f3 33 20 00    lea    0x2033f3(%rip),%r8        # 205400 <gets_buf>
    200d:       89 f9                   mov    %edi,%ecx
    200f:       48 8d 35 fa 15 00 00    lea    0x15fa(%rip),%rsi        # 3610 <_IO_stdin_used+0x470>
    2016:       bf 01 00 00 00          mov    $0x1,%edi
    201b:       b8 00 00 00 00          mov    $0x0,%eax
    2020:       e8 3b ef ff ff          callq  f60 <__printf_chk@plt>
    2025:       5b                      pop    %rbx
    2026:       c3                      retq
    2027:       48 8d 3d c4 15 00 00    lea    0x15c4(%rip),%rdi        # 35f2 <_IO_stdin_used+0x452>
    202e:       e8 0d ee ff ff          callq  e40 <puts@plt>
    2033:       b8 00 00 00 00          mov    $0x0,%eax
    2038:       e8 fc fc ff ff          callq  1d39 <check_fail>
    203d:       89 f9                   mov    %edi,%ecx
    203f:       48 8d 35 ea 16 00 00    lea    0x16ea(%rip),%rsi        # 3730 <_IO_stdin_used+0x590>
    2046:       bf 01 00 00 00          mov    $0x1,%edi
    204b:       b8 00 00 00 00          mov    $0x0,%eax
    2050:       e8 0b ef ff ff          callq  f60 <__printf_chk@plt>
    2055:       b8 00 00 00 00          mov    $0x0,%eax
    205a:       e8 da fc ff ff          callq  1d39 <check_fail>
    205f:       39 3d 77 33 20 00       cmp    %edi,0x203377(%rip)        # 2053dc <vlevel>
    2065:       74 1a                   je     2081 <validate+0xa0>
    2067:       48 8d 3d 84 15 00 00    lea    0x1584(%rip),%rdi        # 35f2 <_IO_stdin_used+0x452>
    206e:       e8 cd ed ff ff          callq  e40 <puts@plt>
    2073:       89 de                   mov    %ebx,%esi
    2075:       bf 00 00 00 00          mov    $0x0,%edi
    207a:       e8 44 fd ff ff          callq  1dc3 <notify_server>
    207f:       eb a4                   jmp    2025 <validate+0x44>
    2081:       0f be 0d 80 3f 20 00    movsbl 0x203f80(%rip),%ecx        # 206008 <target_prefix>
    2088:       89 fa                   mov    %edi,%edx
    208a:       48 8d 35 c7 16 00 00    lea    0x16c7(%rip),%rsi        # 3758 <_IO_stdin_used+0x5b8>
    2091:       bf 01 00 00 00          mov    $0x1,%edi
    2096:       b8 00 00 00 00          mov    $0x0,%eax
    209b:       e8 c0 ee ff ff          callq  f60 <__printf_chk@plt>
    20a0:       89 de                   mov    %ebx,%esi
    20a2:       bf 01 00 00 00          mov    $0x1,%edi
    20a7:       e8 17 fd ff ff          callq  1dc3 <notify_server>
    20ac:       e9 74 ff ff ff          jmpq   2025 <validate+0x44>

00000000000020b1 <fail>:
    20b1:       48 83 ec 08             sub    $0x8,%rsp
    20b5:       83 3d 2c 33 20 00 00    cmpl   $0x0,0x20332c(%rip)        # 2053e8 <is_checker>
    20bc:       75 11                   jne    20cf <fail+0x1e>
    20be:       89 fe                   mov    %edi,%esi
    20c0:       bf 00 00 00 00          mov    $0x0,%edi
    20c5:       e8 f9 fc ff ff          callq  1dc3 <notify_server>
    20ca:       48 83 c4 08             add    $0x8,%rsp
    20ce:       c3                      retq
    20cf:       b8 00 00 00 00          mov    $0x0,%eax
    20d4:       e8 60 fc ff ff          callq  1d39 <check_fail>

00000000000020d9 <bushandler>:
    20d9:       48 83 ec 08             sub    $0x8,%rsp
    20dd:       83 3d 04 33 20 00 00    cmpl   $0x0,0x203304(%rip)        # 2053e8 <is_checker>
    20e4:       74 16                   je     20fc <bushandler+0x23>
    20e6:       48 8d 3d 38 15 00 00    lea    0x1538(%rip),%rdi        # 3625 <_IO_stdin_used+0x485>
    20ed:       e8 4e ed ff ff          callq  e40 <puts@plt>
    20f2:       b8 00 00 00 00          mov    $0x0,%eax
    20f7:       e8 3d fc ff ff          callq  1d39 <check_fail>
    20fc:       48 8d 3d 8d 16 00 00    lea    0x168d(%rip),%rdi        # 3790 <_IO_stdin_used+0x5f0>
    2103:       e8 38 ed ff ff          callq  e40 <puts@plt>
    2108:       48 8d 3d 20 15 00 00    lea    0x1520(%rip),%rdi        # 362f <_IO_stdin_used+0x48f>
    210f:       e8 2c ed ff ff          callq  e40 <puts@plt>
    2114:       be 00 00 00 00          mov    $0x0,%esi
    2119:       bf 00 00 00 00          mov    $0x0,%edi
    211e:       e8 a0 fc ff ff          callq  1dc3 <notify_server>
    2123:       bf 01 00 00 00          mov    $0x1,%edi
    2128:       e8 83 ee ff ff          callq  fb0 <exit@plt>

000000000000212d <seghandler>:
    212d:       48 83 ec 08             sub    $0x8,%rsp
    2131:       83 3d b0 32 20 00 00    cmpl   $0x0,0x2032b0(%rip)        # 2053e8 <is_checker>
    2138:       74 16                   je     2150 <seghandler+0x23>
    213a:       48 8d 3d 04 15 00 00    lea    0x1504(%rip),%rdi        # 3645 <_IO_stdin_used+0x4a5>
    2141:       e8 fa ec ff ff          callq  e40 <puts@plt>
    2146:       b8 00 00 00 00          mov    $0x0,%eax
    214b:       e8 e9 fb ff ff          callq  1d39 <check_fail>
    2150:       48 8d 3d 59 16 00 00    lea    0x1659(%rip),%rdi        # 37b0 <_IO_stdin_used+0x610>
    2157:       e8 e4 ec ff ff          callq  e40 <puts@plt>
    215c:       48 8d 3d cc 14 00 00    lea    0x14cc(%rip),%rdi        # 362f <_IO_stdin_used+0x48f>
    2163:       e8 d8 ec ff ff          callq  e40 <puts@plt>
    2168:       be 00 00 00 00          mov    $0x0,%esi
    216d:       bf 00 00 00 00          mov    $0x0,%edi
    2172:       e8 4c fc ff ff          callq  1dc3 <notify_server>
    2177:       bf 01 00 00 00          mov    $0x1,%edi
    217c:       e8 2f ee ff ff          callq  fb0 <exit@plt>

0000000000002181 <illegalhandler>:
    2181:       48 83 ec 08             sub    $0x8,%rsp
    2185:       83 3d 5c 32 20 00 00    cmpl   $0x0,0x20325c(%rip)        # 2053e8 <is_checker>
    218c:       74 16                   je     21a4 <illegalhandler+0x23>
    218e:       48 8d 3d c3 14 00 00    lea    0x14c3(%rip),%rdi        # 3658 <_IO_stdin_used+0x4b8>
    2195:       e8 a6 ec ff ff          callq  e40 <puts@plt>
    219a:       b8 00 00 00 00          mov    $0x0,%eax
    219f:       e8 95 fb ff ff          callq  1d39 <check_fail>
    21a4:       48 8d 3d 2d 16 00 00    lea    0x162d(%rip),%rdi        # 37d8 <_IO_stdin_used+0x638>
    21ab:       e8 90 ec ff ff          callq  e40 <puts@plt>
    21b0:       48 8d 3d 78 14 00 00    lea    0x1478(%rip),%rdi        # 362f <_IO_stdin_used+0x48f>
    21b7:       e8 84 ec ff ff          callq  e40 <puts@plt>
    21bc:       be 00 00 00 00          mov    $0x0,%esi
    21c1:       bf 00 00 00 00          mov    $0x0,%edi
    21c6:       e8 f8 fb ff ff          callq  1dc3 <notify_server>
    21cb:       bf 01 00 00 00          mov    $0x1,%edi
    21d0:       e8 db ed ff ff          callq  fb0 <exit@plt>

00000000000021d5 <sigalrmhandler>:
    21d5:       48 83 ec 08             sub    $0x8,%rsp
    21d9:       83 3d 08 32 20 00 00    cmpl   $0x0,0x203208(%rip)        # 2053e8 <is_checker>
    21e0:       74 16                   je     21f8 <sigalrmhandler+0x23>
    21e2:       48 8d 3d 83 14 00 00    lea    0x1483(%rip),%rdi        # 366c <_IO_stdin_used+0x4cc>
    21e9:       e8 52 ec ff ff          callq  e40 <puts@plt>
    21ee:       b8 00 00 00 00          mov    $0x0,%eax
    21f3:       e8 41 fb ff ff          callq  1d39 <check_fail>
    21f8:       ba 05 00 00 00          mov    $0x5,%edx
    21fd:       48 8d 35 04 16 00 00    lea    0x1604(%rip),%rsi        # 3808 <_IO_stdin_used+0x668>
    2204:       bf 01 00 00 00          mov    $0x1,%edi
    2209:       b8 00 00 00 00          mov    $0x0,%eax
    220e:       e8 4d ed ff ff          callq  f60 <__printf_chk@plt>
    2213:       be 00 00 00 00          mov    $0x0,%esi
    2218:       bf 00 00 00 00          mov    $0x0,%edi
    221d:       e8 a1 fb ff ff          callq  1dc3 <notify_server>
    2222:       bf 01 00 00 00          mov    $0x1,%edi
    2227:       e8 84 ed ff ff          callq  fb0 <exit@plt>

000000000000222c <launch>:
    222c:       55                      push   %rbp
    222d:       48 89 e5                mov    %rsp,%rbp
    2230:       48 83 ec 10             sub    $0x10,%rsp
    2234:       48 89 fa                mov    %rdi,%rdx
    2237:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    223e:       00 00
    2240:       48 89 45 f8             mov    %rax,-0x8(%rbp)
    2244:       31 c0                   xor    %eax,%eax
    2246:       48 8d 47 1e             lea    0x1e(%rdi),%rax
    224a:       48 83 e0 f0             and    $0xfffffffffffffff0,%rax
    224e:       48 29 c4                sub    %rax,%rsp
    2251:       48 8d 7c 24 0f          lea    0xf(%rsp),%rdi
    2256:       48 83 e7 f0             and    $0xfffffffffffffff0,%rdi
    225a:       be f4 00 00 00          mov    $0xf4,%esi
    225f:       e8 1c ec ff ff          callq  e80 <memset@plt>
    2264:       48 8b 05 15 31 20 00    mov    0x203115(%rip),%rax        # 205380 <stdin@@GLIBC_2.2.5>
    226b:       48 39 05 5e 31 20 00    cmp    %rax,0x20315e(%rip)        # 2053d0 <infile>
    2272:       74 3a                   je     22ae <launch+0x82>
    2274:       c7 05 5e 31 20 00 00    movl   $0x0,0x20315e(%rip)        # 2053dc <vlevel>
    227b:       00 00 00
    227e:       b8 00 00 00 00          mov    $0x0,%eax
    2283:       e8 fd f8 ff ff          callq  1b85 <test>
    2288:       83 3d 59 31 20 00 00    cmpl   $0x0,0x203159(%rip)        # 2053e8 <is_checker>
    228f:       75 35                   jne    22c6 <launch+0x9a>
    2291:       48 8d 3d f4 13 00 00    lea    0x13f4(%rip),%rdi        # 368c <_IO_stdin_used+0x4ec>
    2298:       e8 a3 eb ff ff          callq  e40 <puts@plt>
    229d:       48 8b 45 f8             mov    -0x8(%rbp),%rax
    22a1:       64 48 33 04 25 28 00    xor    %fs:0x28,%rax
    22a8:       00 00
    22aa:       75 30                   jne    22dc <launch+0xb0>
    22ac:       c9                      leaveq
    22ad:       c3                      retq
    22ae:       48 8d 35 bf 13 00 00    lea    0x13bf(%rip),%rsi        # 3674 <_IO_stdin_used+0x4d4>
    22b5:       bf 01 00 00 00          mov    $0x1,%edi
    22ba:       b8 00 00 00 00          mov    $0x0,%eax
    22bf:       e8 9c ec ff ff          callq  f60 <__printf_chk@plt>
    22c4:       eb ae                   jmp    2274 <launch+0x48>
    22c6:       48 8d 3d b4 13 00 00    lea    0x13b4(%rip),%rdi        # 3681 <_IO_stdin_used+0x4e1>
    22cd:       e8 6e eb ff ff          callq  e40 <puts@plt>
    22d2:       b8 00 00 00 00          mov    $0x0,%eax
    22d7:       e8 5d fa ff ff          callq  1d39 <check_fail>
    22dc:       e8 7f eb ff ff          callq  e60 <__stack_chk_fail@plt>

00000000000022e1 <stable_launch>:
    22e1:       53                      push   %rbx
    22e2:       48 89 3d df 30 20 00    mov    %rdi,0x2030df(%rip)        # 2053c8 <global_offset>
    22e9:       41 b9 00 00 00 00       mov    $0x0,%r9d
    22ef:       41 b8 00 00 00 00       mov    $0x0,%r8d
    22f5:       b9 32 01 00 00          mov    $0x132,%ecx
    22fa:       ba 07 00 00 00          mov    $0x7,%edx
    22ff:       be 00 00 10 00          mov    $0x100000,%esi
    2304:       bf 00 60 58 55          mov    $0x55586000,%edi
    2309:       e8 62 eb ff ff          callq  e70 <mmap@plt>
    230e:       48 89 c3                mov    %rax,%rbx
    2311:       48 3d 00 60 58 55       cmp    $0x55586000,%rax
    2317:       75 43                   jne    235c <stable_launch+0x7b>
    2319:       48 8d 90 f8 ff 0f 00    lea    0xffff8(%rax),%rdx
    2320:       48 89 15 e9 3c 20 00    mov    %rdx,0x203ce9(%rip)        # 206010 <stack_top>
    2327:       48 89 e0                mov    %rsp,%rax
    232a:       48 89 d4                mov    %rdx,%rsp
    232d:       48 89 c2                mov    %rax,%rdx
    2330:       48 89 15 89 30 20 00    mov    %rdx,0x203089(%rip)        # 2053c0 <global_save_stack>
    2337:       48 8b 3d 8a 30 20 00    mov    0x20308a(%rip),%rdi        # 2053c8 <global_offset>
    233e:       e8 e9 fe ff ff          callq  222c <launch>
    2343:       48 8b 05 76 30 20 00    mov    0x203076(%rip),%rax        # 2053c0 <global_save_stack>
    234a:       48 89 c4                mov    %rax,%rsp
    234d:       be 00 00 10 00          mov    $0x100000,%esi
    2352:       48 89 df                mov    %rbx,%rdi
    2355:       e8 f6 eb ff ff          callq  f50 <munmap@plt>
    235a:       5b                      pop    %rbx
    235b:       c3                      retq
    235c:       be 00 00 10 00          mov    $0x100000,%esi
    2361:       48 89 c7                mov    %rax,%rdi
    2364:       e8 e7 eb ff ff          callq  f50 <munmap@plt>
    2369:       b9 00 60 58 55          mov    $0x55586000,%ecx
    236e:       48 8d 15 cb 14 00 00    lea    0x14cb(%rip),%rdx        # 3840 <_IO_stdin_used+0x6a0>
    2375:       be 01 00 00 00          mov    $0x1,%esi
    237a:       48 8b 3d 1f 30 20 00    mov    0x20301f(%rip),%rdi        # 2053a0 <stderr@@GLIBC_2.2.5>
    2381:       b8 00 00 00 00          mov    $0x0,%eax
    2386:       e8 45 ec ff ff          callq  fd0 <__fprintf_chk@plt>
    238b:       bf 01 00 00 00          mov    $0x1,%edi
    2390:       e8 1b ec ff ff          callq  fb0 <exit@plt>

0000000000002395 <rio_readinitb>:
    2395:       89 37                   mov    %esi,(%rdi)
    2397:       c7 47 04 00 00 00 00    movl   $0x0,0x4(%rdi)
    239e:       48 8d 47 10             lea    0x10(%rdi),%rax
    23a2:       48 89 47 08             mov    %rax,0x8(%rdi)
    23a6:       c3                      retq

00000000000023a7 <sigalrm_handler>:
    23a7:       48 83 ec 08             sub    $0x8,%rsp
    23ab:       b9 00 00 00 00          mov    $0x0,%ecx
    23b0:       48 8d 15 c9 14 00 00    lea    0x14c9(%rip),%rdx        # 3880 <trans_char+0x10>
    23b7:       be 01 00 00 00          mov    $0x1,%esi
    23bc:       48 8b 3d dd 2f 20 00    mov    0x202fdd(%rip),%rdi        # 2053a0 <stderr@@GLIBC_2.2.5>
    23c3:       b8 00 00 00 00          mov    $0x0,%eax
    23c8:       e8 03 ec ff ff          callq  fd0 <__fprintf_chk@plt>
    23cd:       bf 01 00 00 00          mov    $0x1,%edi
    23d2:       e8 d9 eb ff ff          callq  fb0 <exit@plt>

00000000000023d7 <rio_writen>:
    23d7:       41 55                   push   %r13
    23d9:       41 54                   push   %r12
    23db:       55                      push   %rbp
    23dc:       53                      push   %rbx
    23dd:       48 83 ec 08             sub    $0x8,%rsp
    23e1:       41 89 fc                mov    %edi,%r12d
    23e4:       48 89 f5                mov    %rsi,%rbp
    23e7:       49 89 d5                mov    %rdx,%r13
    23ea:       48 89 d3                mov    %rdx,%rbx
    23ed:       eb 06                   jmp    23f5 <rio_writen+0x1e>
    23ef:       48 29 c3                sub    %rax,%rbx
    23f2:       48 01 c5                add    %rax,%rbp
    23f5:       48 85 db                test   %rbx,%rbx
    23f8:       74 24                   je     241e <rio_writen+0x47>
    23fa:       48 89 da                mov    %rbx,%rdx
    23fd:       48 89 ee                mov    %rbp,%rsi
    2400:       44 89 e7                mov    %r12d,%edi
    2403:       e8 48 ea ff ff          callq  e50 <write@plt>
    2408:       48 85 c0                test   %rax,%rax
    240b:       7f e2                   jg     23ef <rio_writen+0x18>
    240d:       e8 ee e9 ff ff          callq  e00 <__errno_location@plt>
    2412:       83 38 04                cmpl   $0x4,(%rax)
    2415:       75 15                   jne    242c <rio_writen+0x55>
    2417:       b8 00 00 00 00          mov    $0x0,%eax
    241c:       eb d1                   jmp    23ef <rio_writen+0x18>
    241e:       4c 89 e8                mov    %r13,%rax
    2421:       48 83 c4 08             add    $0x8,%rsp
    2425:       5b                      pop    %rbx
    2426:       5d                      pop    %rbp
    2427:       41 5c                   pop    %r12
    2429:       41 5d                   pop    %r13
    242b:       c3                      retq
    242c:       48 c7 c0 ff ff ff ff    mov    $0xffffffffffffffff,%rax
    2433:       eb ec                   jmp    2421 <rio_writen+0x4a>

0000000000002435 <rio_read>:
    2435:       41 55                   push   %r13
    2437:       41 54                   push   %r12
    2439:       55                      push   %rbp
    243a:       53                      push   %rbx
    243b:       48 83 ec 08             sub    $0x8,%rsp
    243f:       48 89 fb                mov    %rdi,%rbx
    2442:       49 89 f5                mov    %rsi,%r13
    2445:       49 89 d4                mov    %rdx,%r12
    2448:       eb 0a                   jmp    2454 <rio_read+0x1f>
    244a:       e8 b1 e9 ff ff          callq  e00 <__errno_location@plt>
    244f:       83 38 04                cmpl   $0x4,(%rax)
    2452:       75 5c                   jne    24b0 <rio_read+0x7b>
    2454:       8b 6b 04                mov    0x4(%rbx),%ebp
    2457:       85 ed                   test   %ebp,%ebp
    2459:       7f 24                   jg     247f <rio_read+0x4a>
    245b:       48 8d 6b 10             lea    0x10(%rbx),%rbp
    245f:       8b 3b                   mov    (%rbx),%edi
    2461:       ba 00 20 00 00          mov    $0x2000,%edx
    2466:       48 89 ee                mov    %rbp,%rsi
    2469:       e8 42 ea ff ff          callq  eb0 <read@plt>
    246e:       89 43 04                mov    %eax,0x4(%rbx)
    2471:       85 c0                   test   %eax,%eax
    2473:       78 d5                   js     244a <rio_read+0x15>
    2475:       85 c0                   test   %eax,%eax
    2477:       74 40                   je     24b9 <rio_read+0x84>
    2479:       48 89 6b 08             mov    %rbp,0x8(%rbx)
    247d:       eb d5                   jmp    2454 <rio_read+0x1f>
    247f:       89 e8                   mov    %ebp,%eax
    2481:       4c 39 e0                cmp    %r12,%rax
    2484:       72 03                   jb     2489 <rio_read+0x54>
    2486:       44 89 e5                mov    %r12d,%ebp
    2489:       4c 63 e5                movslq %ebp,%r12
    248c:       48 8b 73 08             mov    0x8(%rbx),%rsi
    2490:       4c 89 e2                mov    %r12,%rdx
    2493:       4c 89 ef                mov    %r13,%rdi
    2496:       e8 65 ea ff ff          callq  f00 <memcpy@plt>
    249b:       4c 01 63 08             add    %r12,0x8(%rbx)
    249f:       29 6b 04                sub    %ebp,0x4(%rbx)
    24a2:       4c 89 e0                mov    %r12,%rax
    24a5:       48 83 c4 08             add    $0x8,%rsp
    24a9:       5b                      pop    %rbx
    24aa:       5d                      pop    %rbp
    24ab:       41 5c                   pop    %r12
    24ad:       41 5d                   pop    %r13
    24af:       c3                      retq
    24b0:       48 c7 c0 ff ff ff ff    mov    $0xffffffffffffffff,%rax
    24b7:       eb ec                   jmp    24a5 <rio_read+0x70>
    24b9:       b8 00 00 00 00          mov    $0x0,%eax
    24be:       eb e5                   jmp    24a5 <rio_read+0x70>

00000000000024c0 <rio_readlineb>:
    24c0:       41 55                   push   %r13
    24c2:       41 54                   push   %r12
    24c4:       55                      push   %rbp
    24c5:       53                      push   %rbx
    24c6:       48 83 ec 18             sub    $0x18,%rsp
    24ca:       49 89 fd                mov    %rdi,%r13
    24cd:       48 89 f5                mov    %rsi,%rbp
    24d0:       49 89 d4                mov    %rdx,%r12
    24d3:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    24da:       00 00
    24dc:       48 89 44 24 08          mov    %rax,0x8(%rsp)
    24e1:       31 c0                   xor    %eax,%eax
    24e3:       bb 01 00 00 00          mov    $0x1,%ebx
    24e8:       4c 39 e3                cmp    %r12,%rbx
    24eb:       73 47                   jae    2534 <rio_readlineb+0x74>
    24ed:       48 8d 74 24 07          lea    0x7(%rsp),%rsi
    24f2:       ba 01 00 00 00          mov    $0x1,%edx
    24f7:       4c 89 ef                mov    %r13,%rdi
    24fa:       e8 36 ff ff ff          callq  2435 <rio_read>
    24ff:       83 f8 01                cmp    $0x1,%eax
    2502:       75 1c                   jne    2520 <rio_readlineb+0x60>
    2504:       48 8d 45 01             lea    0x1(%rbp),%rax
    2508:       0f b6 54 24 07          movzbl 0x7(%rsp),%edx
    250d:       88 55 00                mov    %dl,0x0(%rbp)
    2510:       80 7c 24 07 0a          cmpb   $0xa,0x7(%rsp)
    2515:       74 1a                   je     2531 <rio_readlineb+0x71>
    2517:       48 83 c3 01             add    $0x1,%rbx
    251b:       48 89 c5                mov    %rax,%rbp
    251e:       eb c8                   jmp    24e8 <rio_readlineb+0x28>
    2520:       85 c0                   test   %eax,%eax
    2522:       75 32                   jne    2556 <rio_readlineb+0x96>
    2524:       48 83 fb 01             cmp    $0x1,%rbx
    2528:       75 0a                   jne    2534 <rio_readlineb+0x74>
    252a:       b8 00 00 00 00          mov    $0x0,%eax
    252f:       eb 0a                   jmp    253b <rio_readlineb+0x7b>
    2531:       48 89 c5                mov    %rax,%rbp
    2534:       c6 45 00 00             movb   $0x0,0x0(%rbp)
    2538:       48 89 d8                mov    %rbx,%rax
    253b:       48 8b 4c 24 08          mov    0x8(%rsp),%rcx
    2540:       64 48 33 0c 25 28 00    xor    %fs:0x28,%rcx
    2547:       00 00
    2549:       75 14                   jne    255f <rio_readlineb+0x9f>
    254b:       48 83 c4 18             add    $0x18,%rsp
    254f:       5b                      pop    %rbx
    2550:       5d                      pop    %rbp
    2551:       41 5c                   pop    %r12
    2553:       41 5d                   pop    %r13
    2555:       c3                      retq
    2556:       48 c7 c0 ff ff ff ff    mov    $0xffffffffffffffff,%rax
    255d:       eb dc                   jmp    253b <rio_readlineb+0x7b>
    255f:       e8 fc e8 ff ff          callq  e60 <__stack_chk_fail@plt>

0000000000002564 <urlencode>:
    2564:       41 54                   push   %r12
    2566:       55                      push   %rbp
    2567:       53                      push   %rbx
    2568:       48 83 ec 10             sub    $0x10,%rsp
    256c:       48 89 fb                mov    %rdi,%rbx
    256f:       48 89 f5                mov    %rsi,%rbp
    2572:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    2579:       00 00
    257b:       48 89 44 24 08          mov    %rax,0x8(%rsp)
    2580:       31 c0                   xor    %eax,%eax
    2582:       48 c7 c1 ff ff ff ff    mov    $0xffffffffffffffff,%rcx
    2589:       f2 ae                   repnz scas %es:(%rdi),%al
    258b:       48 89 ce                mov    %rcx,%rsi
    258e:       48 f7 d6                not    %rsi
    2591:       8d 46 ff                lea    -0x1(%rsi),%eax
    2594:       eb 0f                   jmp    25a5 <urlencode+0x41>
    2596:       44 88 45 00             mov    %r8b,0x0(%rbp)
    259a:       48 8d 6d 01             lea    0x1(%rbp),%rbp
    259e:       48 83 c3 01             add    $0x1,%rbx
    25a2:       44 89 e0                mov    %r12d,%eax
    25a5:       44 8d 60 ff             lea    -0x1(%rax),%r12d
    25a9:       85 c0                   test   %eax,%eax
    25ab:       0f 84 a8 00 00 00       je     2659 <urlencode+0xf5>
    25b1:       44 0f b6 03             movzbl (%rbx),%r8d
    25b5:       41 80 f8 2a             cmp    $0x2a,%r8b
    25b9:       0f 94 c2                sete   %dl
    25bc:       41 80 f8 2d             cmp    $0x2d,%r8b
    25c0:       0f 94 c0                sete   %al
    25c3:       08 c2                   or     %al,%dl
    25c5:       75 cf                   jne    2596 <urlencode+0x32>
    25c7:       41 80 f8 2e             cmp    $0x2e,%r8b
    25cb:       74 c9                   je     2596 <urlencode+0x32>
    25cd:       41 80 f8 5f             cmp    $0x5f,%r8b
    25d1:       74 c3                   je     2596 <urlencode+0x32>
    25d3:       41 8d 40 d0             lea    -0x30(%r8),%eax
    25d7:       3c 09                   cmp    $0x9,%al
    25d9:       76 bb                   jbe    2596 <urlencode+0x32>
    25db:       41 8d 40 bf             lea    -0x41(%r8),%eax
    25df:       3c 19                   cmp    $0x19,%al
    25e1:       76 b3                   jbe    2596 <urlencode+0x32>
    25e3:       41 8d 40 9f             lea    -0x61(%r8),%eax
    25e7:       3c 19                   cmp    $0x19,%al
    25e9:       76 ab                   jbe    2596 <urlencode+0x32>
    25eb:       41 80 f8 20             cmp    $0x20,%r8b
    25ef:       74 56                   je     2647 <urlencode+0xe3>
    25f1:       41 8d 40 e0             lea    -0x20(%r8),%eax
    25f5:       3c 5f                   cmp    $0x5f,%al
    25f7:       0f 96 c2                setbe  %dl
    25fa:       41 80 f8 09             cmp    $0x9,%r8b
    25fe:       0f 94 c0                sete   %al
    2601:       08 c2                   or     %al,%dl
    2603:       74 4f                   je     2654 <urlencode+0xf0>
    2605:       48 89 e7                mov    %rsp,%rdi
    2608:       45 0f b6 c0             movzbl %r8b,%r8d
    260c:       48 8d 0d 05 13 00 00    lea    0x1305(%rip),%rcx        # 3918 <trans_char+0xa8>
    2613:       ba 08 00 00 00          mov    $0x8,%edx
    2618:       be 01 00 00 00          mov    $0x1,%esi
    261d:       b8 00 00 00 00          mov    $0x0,%eax
    2622:       e8 b9 e9 ff ff          callq  fe0 <__sprintf_chk@plt>
    2627:       0f b6 04 24             movzbl (%rsp),%eax
    262b:       88 45 00                mov    %al,0x0(%rbp)
    262e:       0f b6 44 24 01          movzbl 0x1(%rsp),%eax
    2633:       88 45 01                mov    %al,0x1(%rbp)
    2636:       0f b6 44 24 02          movzbl 0x2(%rsp),%eax
    263b:       88 45 02                mov    %al,0x2(%rbp)
    263e:       48 8d 6d 03             lea    0x3(%rbp),%rbp
    2642:       e9 57 ff ff ff          jmpq   259e <urlencode+0x3a>
    2647:       c6 45 00 2b             movb   $0x2b,0x0(%rbp)
    264b:       48 8d 6d 01             lea    0x1(%rbp),%rbp
    264f:       e9 4a ff ff ff          jmpq   259e <urlencode+0x3a>
    2654:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2659:       48 8b 74 24 08          mov    0x8(%rsp),%rsi
    265e:       64 48 33 34 25 28 00    xor    %fs:0x28,%rsi
    2665:       00 00
    2667:       75 09                   jne    2672 <urlencode+0x10e>
    2669:       48 83 c4 10             add    $0x10,%rsp
    266d:       5b                      pop    %rbx
    266e:       5d                      pop    %rbp
    266f:       41 5c                   pop    %r12
    2671:       c3                      retq
    2672:       e8 e9 e7 ff ff          callq  e60 <__stack_chk_fail@plt>

0000000000002677 <submitr>:
    2677:       41 57                   push   %r15
    2679:       41 56                   push   %r14
    267b:       41 55                   push   %r13
    267d:       41 54                   push   %r12
    267f:       55                      push   %rbp
    2680:       53                      push   %rbx
    2681:       48 81 ec 68 a0 00 00    sub    $0xa068,%rsp
    2688:       49 89 fd                mov    %rdi,%r13
    268b:       89 74 24 14             mov    %esi,0x14(%rsp)
    268f:       49 89 d7                mov    %rdx,%r15
    2692:       48 89 4c 24 08          mov    %rcx,0x8(%rsp)
    2697:       4c 89 44 24 18          mov    %r8,0x18(%rsp)
    269c:       4d 89 ce                mov    %r9,%r14
    269f:       48 8b ac 24 a0 a0 00    mov    0xa0a0(%rsp),%rbp
    26a6:       00
    26a7:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    26ae:       00 00
    26b0:       48 89 84 24 58 a0 00    mov    %rax,0xa058(%rsp)
    26b7:       00
    26b8:       31 c0                   xor    %eax,%eax
    26ba:       c7 44 24 2c 00 00 00    movl   $0x0,0x2c(%rsp)
    26c1:       00
    26c2:       ba 00 00 00 00          mov    $0x0,%edx
    26c7:       be 01 00 00 00          mov    $0x1,%esi
    26cc:       bf 02 00 00 00          mov    $0x2,%edi
    26d1:       e8 1a e9 ff ff          callq  ff0 <socket@plt>
    26d6:       85 c0                   test   %eax,%eax
    26d8:       0f 88 a9 02 00 00       js     2987 <submitr+0x310>
    26de:       89 c3                   mov    %eax,%ebx
    26e0:       4c 89 ef                mov    %r13,%rdi
    26e3:       e8 e8 e7 ff ff          callq  ed0 <gethostbyname@plt>
    26e8:       48 85 c0                test   %rax,%rax
    26eb:       0f 84 e2 02 00 00       je     29d3 <submitr+0x35c>
    26f1:       4c 8d 64 24 30          lea    0x30(%rsp),%r12
    26f6:       48 c7 44 24 32 00 00    movq   $0x0,0x32(%rsp)
    26fd:       00 00
    26ff:       c7 44 24 3a 00 00 00    movl   $0x0,0x3a(%rsp)
    2706:       00
    2707:       66 c7 44 24 3e 00 00    movw   $0x0,0x3e(%rsp)
    270e:       66 c7 44 24 30 02 00    movw   $0x2,0x30(%rsp)
    2715:       48 63 50 14             movslq 0x14(%rax),%rdx
    2719:       48 8b 40 18             mov    0x18(%rax),%rax
    271d:       48 8b 30                mov    (%rax),%rsi
    2720:       48 8d 7c 24 34          lea    0x34(%rsp),%rdi
    2725:       b9 0c 00 00 00          mov    $0xc,%ecx
    272a:       e8 b1 e7 ff ff          callq  ee0 <__memmove_chk@plt>
    272f:       0f b7 44 24 14          movzwl 0x14(%rsp),%eax
    2734:       66 c1 c8 08             ror    $0x8,%ax
    2738:       66 89 44 24 32          mov    %ax,0x32(%rsp)
    273d:       ba 10 00 00 00          mov    $0x10,%edx
    2742:       4c 89 e6                mov    %r12,%rsi
    2745:       89 df                   mov    %ebx,%edi
    2747:       e8 74 e8 ff ff          callq  fc0 <connect@plt>
    274c:       85 c0                   test   %eax,%eax
    274e:       0f 88 e7 02 00 00       js     2a3b <submitr+0x3c4>
    2754:       48 c7 c6 ff ff ff ff    mov    $0xffffffffffffffff,%rsi
    275b:       b8 00 00 00 00          mov    $0x0,%eax
    2760:       48 89 f1                mov    %rsi,%rcx
    2763:       4c 89 f7                mov    %r14,%rdi
    2766:       f2 ae                   repnz scas %es:(%rdi),%al
    2768:       48 89 ca                mov    %rcx,%rdx
    276b:       48 f7 d2                not    %rdx
    276e:       48 89 f1                mov    %rsi,%rcx
    2771:       4c 89 ff                mov    %r15,%rdi
    2774:       f2 ae                   repnz scas %es:(%rdi),%al
    2776:       48 f7 d1                not    %rcx
    2779:       49 89 c8                mov    %rcx,%r8
    277c:       48 89 f1                mov    %rsi,%rcx
    277f:       48 8b 7c 24 08          mov    0x8(%rsp),%rdi
    2784:       f2 ae                   repnz scas %es:(%rdi),%al
    2786:       48 f7 d1                not    %rcx
    2789:       4d 8d 44 08 fe          lea    -0x2(%r8,%rcx,1),%r8
    278e:       48 89 f1                mov    %rsi,%rcx
    2791:       48 8b 7c 24 18          mov    0x18(%rsp),%rdi
    2796:       f2 ae                   repnz scas %es:(%rdi),%al
    2798:       48 89 c8                mov    %rcx,%rax
    279b:       48 f7 d0                not    %rax
    279e:       49 8d 4c 00 ff          lea    -0x1(%r8,%rax,1),%rcx
    27a3:       48 8d 44 52 fd          lea    -0x3(%rdx,%rdx,2),%rax
    27a8:       48 8d 84 01 80 00 00    lea    0x80(%rcx,%rax,1),%rax
    27af:       00
    27b0:       48 3d 00 20 00 00       cmp    $0x2000,%rax
    27b6:       0f 87 d9 02 00 00       ja     2a95 <submitr+0x41e>
    27bc:       48 8d b4 24 50 40 00    lea    0x4050(%rsp),%rsi
    27c3:       00
    27c4:       b9 00 04 00 00          mov    $0x400,%ecx
    27c9:       b8 00 00 00 00          mov    $0x0,%eax
    27ce:       48 89 f7                mov    %rsi,%rdi
    27d1:       f3 48 ab                rep stos %rax,%es:(%rdi)
    27d4:       4c 89 f7                mov    %r14,%rdi
    27d7:       e8 88 fd ff ff          callq  2564 <urlencode>
    27dc:       85 c0                   test   %eax,%eax
    27de:       0f 88 24 03 00 00       js     2b08 <submitr+0x491>
    27e4:       4c 8d a4 24 50 20 00    lea    0x2050(%rsp),%r12
    27eb:       00
    27ec:       41 55                   push   %r13
    27ee:       48 8d 84 24 58 40 00    lea    0x4058(%rsp),%rax
    27f5:       00
    27f6:       50                      push   %rax
    27f7:       4d 89 f9                mov    %r15,%r9
    27fa:       4c 8b 44 24 18          mov    0x18(%rsp),%r8
    27ff:       48 8d 0d a2 10 00 00    lea    0x10a2(%rip),%rcx        # 38a8 <trans_char+0x38>
    2806:       ba 00 20 00 00          mov    $0x2000,%edx
    280b:       be 01 00 00 00          mov    $0x1,%esi
    2810:       4c 89 e7                mov    %r12,%rdi
    2813:       b8 00 00 00 00          mov    $0x0,%eax
    2818:       e8 c3 e7 ff ff          callq  fe0 <__sprintf_chk@plt>
    281d:       48 c7 c1 ff ff ff ff    mov    $0xffffffffffffffff,%rcx
    2824:       b8 00 00 00 00          mov    $0x0,%eax
    2829:       4c 89 e7                mov    %r12,%rdi
    282c:       f2 ae                   repnz scas %es:(%rdi),%al
    282e:       48 89 ca                mov    %rcx,%rdx
    2831:       48 f7 d2                not    %rdx
    2834:       48 8d 52 ff             lea    -0x1(%rdx),%rdx
    2838:       4c 89 e6                mov    %r12,%rsi
    283b:       89 df                   mov    %ebx,%edi
    283d:       e8 95 fb ff ff          callq  23d7 <rio_writen>
    2842:       48 83 c4 10             add    $0x10,%rsp
    2846:       48 85 c0                test   %rax,%rax
    2849:       0f 88 44 03 00 00       js     2b93 <submitr+0x51c>
    284f:       4c 8d 64 24 40          lea    0x40(%rsp),%r12
    2854:       89 de                   mov    %ebx,%esi
    2856:       4c 89 e7                mov    %r12,%rdi
    2859:       e8 37 fb ff ff          callq  2395 <rio_readinitb>
    285e:       48 8d b4 24 50 20 00    lea    0x2050(%rsp),%rsi
    2865:       00
    2866:       ba 00 20 00 00          mov    $0x2000,%edx
    286b:       4c 89 e7                mov    %r12,%rdi
    286e:       e8 4d fc ff ff          callq  24c0 <rio_readlineb>
    2873:       48 85 c0                test   %rax,%rax
    2876:       0f 8e 86 03 00 00       jle    2c02 <submitr+0x58b>
    287c:       48 8d 4c 24 2c          lea    0x2c(%rsp),%rcx
    2881:       48 8d 94 24 50 60 00    lea    0x6050(%rsp),%rdx
    2888:       00
    2889:       48 8d bc 24 50 20 00    lea    0x2050(%rsp),%rdi
    2890:       00
    2891:       4c 8d 84 24 50 80 00    lea    0x8050(%rsp),%r8
    2898:       00
    2899:       48 8d 35 7f 10 00 00    lea    0x107f(%rip),%rsi        # 391f <trans_char+0xaf>
    28a0:       b8 00 00 00 00          mov    $0x0,%eax
    28a5:       e8 96 e6 ff ff          callq  f40 <__isoc99_sscanf@plt>
    28aa:       48 8d b4 24 50 20 00    lea    0x2050(%rsp),%rsi
    28b1:       00
    28b2:       b9 03 00 00 00          mov    $0x3,%ecx
    28b7:       48 8d 3d 78 10 00 00    lea    0x1078(%rip),%rdi        # 3936 <trans_char+0xc6>
    28be:       f3 a6                   repz cmpsb %es:(%rdi),%ds:(%rsi)
    28c0:       0f 97 c0                seta   %al
    28c3:       1c 00                   sbb    $0x0,%al
    28c5:       84 c0                   test   %al,%al
    28c7:       0f 84 b3 03 00 00       je     2c80 <submitr+0x609>
    28cd:       48 8d b4 24 50 20 00    lea    0x2050(%rsp),%rsi
    28d4:       00
    28d5:       48 8d 7c 24 40          lea    0x40(%rsp),%rdi
    28da:       ba 00 20 00 00          mov    $0x2000,%edx
    28df:       e8 dc fb ff ff          callq  24c0 <rio_readlineb>
    28e4:       48 85 c0                test   %rax,%rax
    28e7:       7f c1                   jg     28aa <submitr+0x233>
    28e9:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
    28f0:       3a 20 43
    28f3:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
    28fa:       20 75 6e
    28fd:       48 89 45 00             mov    %rax,0x0(%rbp)
    2901:       48 89 55 08             mov    %rdx,0x8(%rbp)
    2905:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    290c:       74 6f 20
    290f:       48 ba 72 65 61 64 20    movabs $0x6165682064616572,%rdx
    2916:       68 65 61
    2919:       48 89 45 10             mov    %rax,0x10(%rbp)
    291d:       48 89 55 18             mov    %rdx,0x18(%rbp)
    2921:       48 b8 64 65 72 73 20    movabs $0x6f72662073726564,%rax
    2928:       66 72 6f
    292b:       48 ba 6d 20 74 68 65    movabs $0x657220656874206d,%rdx
    2932:       20 72 65
    2935:       48 89 45 20             mov    %rax,0x20(%rbp)
    2939:       48 89 55 28             mov    %rdx,0x28(%rbp)
    293d:       48 b8 73 75 6c 74 20    movabs $0x72657320746c7573,%rax
    2944:       73 65 72
    2947:       48 89 45 30             mov    %rax,0x30(%rbp)
    294b:       c7 45 38 76 65 72 00    movl   $0x726576,0x38(%rbp)
    2952:       89 df                   mov    %ebx,%edi
    2954:       e8 47 e5 ff ff          callq  ea0 <close@plt>
    2959:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    295e:       48 8b 9c 24 58 a0 00    mov    0xa058(%rsp),%rbx
    2965:       00
    2966:       64 48 33 1c 25 28 00    xor    %fs:0x28,%rbx
    296d:       00 00
    296f:       0f 85 7e 04 00 00       jne    2df3 <submitr+0x77c>
    2975:       48 81 c4 68 a0 00 00    add    $0xa068,%rsp
    297c:       5b                      pop    %rbx
    297d:       5d                      pop    %rbp
    297e:       41 5c                   pop    %r12
    2980:       41 5d                   pop    %r13
    2982:       41 5e                   pop    %r14
    2984:       41 5f                   pop    %r15
    2986:       c3                      retq
    2987:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
    298e:       3a 20 43
    2991:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
    2998:       20 75 6e
    299b:       48 89 45 00             mov    %rax,0x0(%rbp)
    299f:       48 89 55 08             mov    %rdx,0x8(%rbp)
    29a3:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    29aa:       74 6f 20
    29ad:       48 ba 63 72 65 61 74    movabs $0x7320657461657263,%rdx
    29b4:       65 20 73
    29b7:       48 89 45 10             mov    %rax,0x10(%rbp)
    29bb:       48 89 55 18             mov    %rdx,0x18(%rbp)
    29bf:       c7 45 20 6f 63 6b 65    movl   $0x656b636f,0x20(%rbp)
    29c6:       66 c7 45 24 74 00       movw   $0x74,0x24(%rbp)
    29cc:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    29d1:       eb 8b                   jmp    295e <submitr+0x2e7>
    29d3:       48 b8 45 72 72 6f 72    movabs $0x44203a726f727245,%rax
    29da:       3a 20 44
    29dd:       48 ba 4e 53 20 69 73    movabs $0x6e7520736920534e,%rdx
    29e4:       20 75 6e
    29e7:       48 89 45 00             mov    %rax,0x0(%rbp)
    29eb:       48 89 55 08             mov    %rdx,0x8(%rbp)
    29ef:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    29f6:       74 6f 20
    29f9:       48 ba 72 65 73 6f 6c    movabs $0x2065766c6f736572,%rdx
    2a00:       76 65 20
    2a03:       48 89 45 10             mov    %rax,0x10(%rbp)
    2a07:       48 89 55 18             mov    %rdx,0x18(%rbp)
    2a0b:       48 b8 73 65 72 76 65    movabs $0x6120726576726573,%rax
    2a12:       72 20 61
    2a15:       48 89 45 20             mov    %rax,0x20(%rbp)
    2a19:       c7 45 28 64 64 72 65    movl   $0x65726464,0x28(%rbp)
    2a20:       66 c7 45 2c 73 73       movw   $0x7373,0x2c(%rbp)
    2a26:       c6 45 2e 00             movb   $0x0,0x2e(%rbp)
    2a2a:       89 df                   mov    %ebx,%edi
    2a2c:       e8 6f e4 ff ff          callq  ea0 <close@plt>
    2a31:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2a36:       e9 23 ff ff ff          jmpq   295e <submitr+0x2e7>
    2a3b:       48 b8 45 72 72 6f 72    movabs $0x55203a726f727245,%rax
    2a42:       3a 20 55
    2a45:       48 ba 6e 61 62 6c 65    movabs $0x6f7420656c62616e,%rdx
    2a4c:       20 74 6f
    2a4f:       48 89 45 00             mov    %rax,0x0(%rbp)
    2a53:       48 89 55 08             mov    %rdx,0x8(%rbp)
    2a57:       48 b8 20 63 6f 6e 6e    movabs $0x7463656e6e6f6320,%rax
    2a5e:       65 63 74
    2a61:       48 ba 20 74 6f 20 74    movabs $0x20656874206f7420,%rdx
    2a68:       68 65 20
    2a6b:       48 89 45 10             mov    %rax,0x10(%rbp)
    2a6f:       48 89 55 18             mov    %rdx,0x18(%rbp)
    2a73:       c7 45 20 73 65 72 76    movl   $0x76726573,0x20(%rbp)
    2a7a:       66 c7 45 24 65 72       movw   $0x7265,0x24(%rbp)
    2a80:       c6 45 26 00             movb   $0x0,0x26(%rbp)
    2a84:       89 df                   mov    %ebx,%edi
    2a86:       e8 15 e4 ff ff          callq  ea0 <close@plt>
    2a8b:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2a90:       e9 c9 fe ff ff          jmpq   295e <submitr+0x2e7>
    2a95:       48 b8 45 72 72 6f 72    movabs $0x52203a726f727245,%rax
    2a9c:       3a 20 52
    2a9f:       48 ba 65 73 75 6c 74    movabs $0x747320746c757365,%rdx
    2aa6:       20 73 74
    2aa9:       48 89 45 00             mov    %rax,0x0(%rbp)
    2aad:       48 89 55 08             mov    %rdx,0x8(%rbp)
    2ab1:       48 b8 72 69 6e 67 20    movabs $0x6f6f7420676e6972,%rax
    2ab8:       74 6f 6f
    2abb:       48 ba 20 6c 61 72 67    movabs $0x202e656772616c20,%rdx
    2ac2:       65 2e 20
    2ac5:       48 89 45 10             mov    %rax,0x10(%rbp)
    2ac9:       48 89 55 18             mov    %rdx,0x18(%rbp)
    2acd:       48 b8 49 6e 63 72 65    movabs $0x6573616572636e49,%rax
    2ad4:       61 73 65
    2ad7:       48 ba 20 53 55 42 4d    movabs $0x5254494d42555320,%rdx
    2ade:       49 54 52
    2ae1:       48 89 45 20             mov    %rax,0x20(%rbp)
    2ae5:       48 89 55 28             mov    %rdx,0x28(%rbp)
    2ae9:       48 b8 5f 4d 41 58 42    movabs $0x46554258414d5f,%rax
    2af0:       55 46 00
    2af3:       48 89 45 30             mov    %rax,0x30(%rbp)
    2af7:       89 df                   mov    %ebx,%edi
    2af9:       e8 a2 e3 ff ff          callq  ea0 <close@plt>
    2afe:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2b03:       e9 56 fe ff ff          jmpq   295e <submitr+0x2e7>
    2b08:       48 b8 45 72 72 6f 72    movabs $0x52203a726f727245,%rax
    2b0f:       3a 20 52
    2b12:       48 ba 65 73 75 6c 74    movabs $0x747320746c757365,%rdx
    2b19:       20 73 74
    2b1c:       48 89 45 00             mov    %rax,0x0(%rbp)
    2b20:       48 89 55 08             mov    %rdx,0x8(%rbp)
    2b24:       48 b8 72 69 6e 67 20    movabs $0x6e6f6320676e6972,%rax
    2b2b:       63 6f 6e
    2b2e:       48 ba 74 61 69 6e 73    movabs $0x6e6120736e696174,%rdx
    2b35:       20 61 6e
    2b38:       48 89 45 10             mov    %rax,0x10(%rbp)
    2b3c:       48 89 55 18             mov    %rdx,0x18(%rbp)
    2b40:       48 b8 20 69 6c 6c 65    movabs $0x6c6167656c6c6920,%rax
    2b47:       67 61 6c
    2b4a:       48 ba 20 6f 72 20 75    movabs $0x72706e7520726f20,%rdx
    2b51:       6e 70 72
    2b54:       48 89 45 20             mov    %rax,0x20(%rbp)
    2b58:       48 89 55 28             mov    %rdx,0x28(%rbp)
    2b5c:       48 b8 69 6e 74 61 62    movabs $0x20656c6261746e69,%rax
    2b63:       6c 65 20
    2b66:       48 ba 63 68 61 72 61    movabs $0x6574636172616863,%rdx
    2b6d:       63 74 65
    2b70:       48 89 45 30             mov    %rax,0x30(%rbp)
    2b74:       48 89 55 38             mov    %rdx,0x38(%rbp)
    2b78:       66 c7 45 40 72 2e       movw   $0x2e72,0x40(%rbp)
    2b7e:       c6 45 42 00             movb   $0x0,0x42(%rbp)
    2b82:       89 df                   mov    %ebx,%edi
    2b84:       e8 17 e3 ff ff          callq  ea0 <close@plt>
    2b89:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2b8e:       e9 cb fd ff ff          jmpq   295e <submitr+0x2e7>
    2b93:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
    2b9a:       3a 20 43
    2b9d:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
    2ba4:       20 75 6e
    2ba7:       48 89 45 00             mov    %rax,0x0(%rbp)
    2bab:       48 89 55 08             mov    %rdx,0x8(%rbp)
    2baf:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    2bb6:       74 6f 20
    2bb9:       48 ba 77 72 69 74 65    movabs $0x6f74206574697277,%rdx
    2bc0:       20 74 6f
    2bc3:       48 89 45 10             mov    %rax,0x10(%rbp)
    2bc7:       48 89 55 18             mov    %rdx,0x18(%rbp)
    2bcb:       48 b8 20 74 68 65 20    movabs $0x7365722065687420,%rax
    2bd2:       72 65 73
    2bd5:       48 ba 75 6c 74 20 73    movabs $0x7672657320746c75,%rdx
    2bdc:       65 72 76
    2bdf:       48 89 45 20             mov    %rax,0x20(%rbp)
    2be3:       48 89 55 28             mov    %rdx,0x28(%rbp)
    2be7:       66 c7 45 30 65 72       movw   $0x7265,0x30(%rbp)
    2bed:       c6 45 32 00             movb   $0x0,0x32(%rbp)
    2bf1:       89 df                   mov    %ebx,%edi
    2bf3:       e8 a8 e2 ff ff          callq  ea0 <close@plt>
    2bf8:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2bfd:       e9 5c fd ff ff          jmpq   295e <submitr+0x2e7>
    2c02:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
    2c09:       3a 20 43
    2c0c:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
    2c13:       20 75 6e
    2c16:       48 89 45 00             mov    %rax,0x0(%rbp)
    2c1a:       48 89 55 08             mov    %rdx,0x8(%rbp)
    2c1e:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    2c25:       74 6f 20
    2c28:       48 ba 72 65 61 64 20    movabs $0x7269662064616572,%rdx
    2c2f:       66 69 72
    2c32:       48 89 45 10             mov    %rax,0x10(%rbp)
    2c36:       48 89 55 18             mov    %rdx,0x18(%rbp)
    2c3a:       48 b8 73 74 20 68 65    movabs $0x6564616568207473,%rax
    2c41:       61 64 65
    2c44:       48 ba 72 20 66 72 6f    movabs $0x72206d6f72662072,%rdx
    2c4b:       6d 20 72
    2c4e:       48 89 45 20             mov    %rax,0x20(%rbp)
    2c52:       48 89 55 28             mov    %rdx,0x28(%rbp)
    2c56:       48 b8 65 73 75 6c 74    movabs $0x657320746c757365,%rax
    2c5d:       20 73 65
    2c60:       48 89 45 30             mov    %rax,0x30(%rbp)
    2c64:       c7 45 38 72 76 65 72    movl   $0x72657672,0x38(%rbp)
    2c6b:       c6 45 3c 00             movb   $0x0,0x3c(%rbp)
    2c6f:       89 df                   mov    %ebx,%edi
    2c71:       e8 2a e2 ff ff          callq  ea0 <close@plt>
    2c76:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2c7b:       e9 de fc ff ff          jmpq   295e <submitr+0x2e7>
    2c80:       48 8d b4 24 50 20 00    lea    0x2050(%rsp),%rsi
    2c87:       00
    2c88:       48 8d 7c 24 40          lea    0x40(%rsp),%rdi
    2c8d:       ba 00 20 00 00          mov    $0x2000,%edx
    2c92:       e8 29 f8 ff ff          callq  24c0 <rio_readlineb>
    2c97:       48 85 c0                test   %rax,%rax
    2c9a:       0f 8e 96 00 00 00       jle    2d36 <submitr+0x6bf>
    2ca0:       44 8b 44 24 2c          mov    0x2c(%rsp),%r8d
    2ca5:       41 81 f8 c8 00 00 00    cmp    $0xc8,%r8d
    2cac:       0f 85 08 01 00 00       jne    2dba <submitr+0x743>
    2cb2:       48 8d b4 24 50 20 00    lea    0x2050(%rsp),%rsi
    2cb9:       00
    2cba:       48 89 ef                mov    %rbp,%rdi
    2cbd:       e8 6e e1 ff ff          callq  e30 <strcpy@plt>
    2cc2:       89 df                   mov    %ebx,%edi
    2cc4:       e8 d7 e1 ff ff          callq  ea0 <close@plt>
    2cc9:       b9 04 00 00 00          mov    $0x4,%ecx
    2cce:       48 8d 3d 5b 0c 00 00    lea    0xc5b(%rip),%rdi        # 3930 <trans_char+0xc0>
    2cd5:       48 89 ee                mov    %rbp,%rsi
    2cd8:       f3 a6                   repz cmpsb %es:(%rdi),%ds:(%rsi)
    2cda:       0f 97 c0                seta   %al
    2cdd:       1c 00                   sbb    $0x0,%al
    2cdf:       0f be c0                movsbl %al,%eax
    2ce2:       85 c0                   test   %eax,%eax
    2ce4:       0f 84 74 fc ff ff       je     295e <submitr+0x2e7>
    2cea:       b9 05 00 00 00          mov    $0x5,%ecx
    2cef:       48 8d 3d 3e 0c 00 00    lea    0xc3e(%rip),%rdi        # 3934 <trans_char+0xc4>
    2cf6:       48 89 ee                mov    %rbp,%rsi
    2cf9:       f3 a6                   repz cmpsb %es:(%rdi),%ds:(%rsi)
    2cfb:       0f 97 c0                seta   %al
    2cfe:       1c 00                   sbb    $0x0,%al
    2d00:       0f be c0                movsbl %al,%eax
    2d03:       85 c0                   test   %eax,%eax
    2d05:       0f 84 53 fc ff ff       je     295e <submitr+0x2e7>
    2d0b:       b9 03 00 00 00          mov    $0x3,%ecx
    2d10:       48 8d 3d 22 0c 00 00    lea    0xc22(%rip),%rdi        # 3939 <trans_char+0xc9>
    2d17:       48 89 ee                mov    %rbp,%rsi
    2d1a:       f3 a6                   repz cmpsb %es:(%rdi),%ds:(%rsi)
    2d1c:       0f 97 c0                seta   %al
    2d1f:       1c 00                   sbb    $0x0,%al
    2d21:       0f be c0                movsbl %al,%eax
    2d24:       85 c0                   test   %eax,%eax
    2d26:       0f 84 32 fc ff ff       je     295e <submitr+0x2e7>
    2d2c:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2d31:       e9 28 fc ff ff          jmpq   295e <submitr+0x2e7>
    2d36:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
    2d3d:       3a 20 43
    2d40:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
    2d47:       20 75 6e
    2d4a:       48 89 45 00             mov    %rax,0x0(%rbp)
    2d4e:       48 89 55 08             mov    %rdx,0x8(%rbp)
    2d52:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    2d59:       74 6f 20
    2d5c:       48 ba 72 65 61 64 20    movabs $0x6174732064616572,%rdx
    2d63:       73 74 61
    2d66:       48 89 45 10             mov    %rax,0x10(%rbp)
    2d6a:       48 89 55 18             mov    %rdx,0x18(%rbp)
    2d6e:       48 b8 74 75 73 20 6d    movabs $0x7373656d20737574,%rax
    2d75:       65 73 73
    2d78:       48 ba 61 67 65 20 66    movabs $0x6d6f726620656761,%rdx
    2d7f:       72 6f 6d
    2d82:       48 89 45 20             mov    %rax,0x20(%rbp)
    2d86:       48 89 55 28             mov    %rdx,0x28(%rbp)
    2d8a:       48 b8 20 72 65 73 75    movabs $0x20746c7573657220,%rax
    2d91:       6c 74 20
    2d94:       48 89 45 30             mov    %rax,0x30(%rbp)
    2d98:       c7 45 38 73 65 72 76    movl   $0x76726573,0x38(%rbp)
    2d9f:       66 c7 45 3c 65 72       movw   $0x7265,0x3c(%rbp)
    2da5:       c6 45 3e 00             movb   $0x0,0x3e(%rbp)
    2da9:       89 df                   mov    %ebx,%edi
    2dab:       e8 f0 e0 ff ff          callq  ea0 <close@plt>
    2db0:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2db5:       e9 a4 fb ff ff          jmpq   295e <submitr+0x2e7>
    2dba:       4c 8d 8c 24 50 80 00    lea    0x8050(%rsp),%r9
    2dc1:       00
    2dc2:       48 8d 0d 1f 0b 00 00    lea    0xb1f(%rip),%rcx        # 38e8 <trans_char+0x78>
    2dc9:       48 c7 c2 ff ff ff ff    mov    $0xffffffffffffffff,%rdx
    2dd0:       be 01 00 00 00          mov    $0x1,%esi
    2dd5:       48 89 ef                mov    %rbp,%rdi
    2dd8:       b8 00 00 00 00          mov    $0x0,%eax
    2ddd:       e8 fe e1 ff ff          callq  fe0 <__sprintf_chk@plt>
    2de2:       89 df                   mov    %ebx,%edi
    2de4:       e8 b7 e0 ff ff          callq  ea0 <close@plt>
    2de9:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2dee:       e9 6b fb ff ff          jmpq   295e <submitr+0x2e7>
    2df3:       e8 68 e0 ff ff          callq  e60 <__stack_chk_fail@plt>

0000000000002df8 <init_timeout>:
    2df8:       85 ff                   test   %edi,%edi
    2dfa:       74 28                   je     2e24 <init_timeout+0x2c>
    2dfc:       53                      push   %rbx
    2dfd:       89 fb                   mov    %edi,%ebx
    2dff:       85 ff                   test   %edi,%edi
    2e01:       78 1a                   js     2e1d <init_timeout+0x25>
    2e03:       48 8d 35 9d f5 ff ff    lea    -0xa63(%rip),%rsi        # 23a7 <sigalrm_handler>
    2e0a:       bf 0e 00 00 00          mov    $0xe,%edi
    2e0f:       e8 ac e0 ff ff          callq  ec0 <signal@plt>
    2e14:       89 df                   mov    %ebx,%edi
    2e16:       e8 75 e0 ff ff          callq  e90 <alarm@plt>
    2e1b:       5b                      pop    %rbx
    2e1c:       c3                      retq
    2e1d:       bb 00 00 00 00          mov    $0x0,%ebx
    2e22:       eb df                   jmp    2e03 <init_timeout+0xb>
    2e24:       f3 c3                   repz retq

0000000000002e26 <init_driver>:
    2e26:       41 54                   push   %r12
    2e28:       55                      push   %rbp
    2e29:       53                      push   %rbx
    2e2a:       48 83 ec 20             sub    $0x20,%rsp
    2e2e:       49 89 fc                mov    %rdi,%r12
    2e31:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    2e38:       00 00
    2e3a:       48 89 44 24 18          mov    %rax,0x18(%rsp)
    2e3f:       31 c0                   xor    %eax,%eax
    2e41:       be 01 00 00 00          mov    $0x1,%esi
    2e46:       bf 0d 00 00 00          mov    $0xd,%edi
    2e4b:       e8 70 e0 ff ff          callq  ec0 <signal@plt>
    2e50:       be 01 00 00 00          mov    $0x1,%esi
    2e55:       bf 1d 00 00 00          mov    $0x1d,%edi
    2e5a:       e8 61 e0 ff ff          callq  ec0 <signal@plt>
    2e5f:       be 01 00 00 00          mov    $0x1,%esi
    2e64:       bf 1d 00 00 00          mov    $0x1d,%edi
    2e69:       e8 52 e0 ff ff          callq  ec0 <signal@plt>
    2e6e:       ba 00 00 00 00          mov    $0x0,%edx
    2e73:       be 01 00 00 00          mov    $0x1,%esi
    2e78:       bf 02 00 00 00          mov    $0x2,%edi
    2e7d:       e8 6e e1 ff ff          callq  ff0 <socket@plt>
    2e82:       85 c0                   test   %eax,%eax
    2e84:       0f 88 a3 00 00 00       js     2f2d <init_driver+0x107>
    2e8a:       89 c3                   mov    %eax,%ebx
    2e8c:       48 8d 3d a9 0a 00 00    lea    0xaa9(%rip),%rdi        # 393c <trans_char+0xcc>
    2e93:       e8 38 e0 ff ff          callq  ed0 <gethostbyname@plt>
    2e98:       48 85 c0                test   %rax,%rax
    2e9b:       0f 84 df 00 00 00       je     2f80 <init_driver+0x15a>
    2ea1:       48 89 e5                mov    %rsp,%rbp
    2ea4:       48 c7 44 24 02 00 00    movq   $0x0,0x2(%rsp)
    2eab:       00 00
    2ead:       c7 45 0a 00 00 00 00    movl   $0x0,0xa(%rbp)
    2eb4:       66 c7 45 0e 00 00       movw   $0x0,0xe(%rbp)
    2eba:       66 c7 04 24 02 00       movw   $0x2,(%rsp)
    2ec0:       48 63 50 14             movslq 0x14(%rax),%rdx
    2ec4:       48 8b 40 18             mov    0x18(%rax),%rax
    2ec8:       48 8b 30                mov    (%rax),%rsi
    2ecb:       48 8d 7d 04             lea    0x4(%rbp),%rdi
    2ecf:       b9 0c 00 00 00          mov    $0xc,%ecx
    2ed4:       e8 07 e0 ff ff          callq  ee0 <__memmove_chk@plt>
    2ed9:       66 c7 44 24 02 3c 9a    movw   $0x9a3c,0x2(%rsp)
    2ee0:       ba 10 00 00 00          mov    $0x10,%edx
    2ee5:       48 89 ee                mov    %rbp,%rsi
    2ee8:       89 df                   mov    %ebx,%edi
    2eea:       e8 d1 e0 ff ff          callq  fc0 <connect@plt>
    2eef:       85 c0                   test   %eax,%eax
    2ef1:       0f 88 fb 00 00 00       js     2ff2 <init_driver+0x1cc>
    2ef7:       89 df                   mov    %ebx,%edi
    2ef9:       e8 a2 df ff ff          callq  ea0 <close@plt>
    2efe:       66 41 c7 04 24 4f 4b    movw   $0x4b4f,(%r12)
    2f05:       41 c6 44 24 02 00       movb   $0x0,0x2(%r12)
    2f0b:       b8 00 00 00 00          mov    $0x0,%eax
    2f10:       48 8b 4c 24 18          mov    0x18(%rsp),%rcx
    2f15:       64 48 33 0c 25 28 00    xor    %fs:0x28,%rcx
    2f1c:       00 00
    2f1e:       0f 85 28 01 00 00       jne    304c <init_driver+0x226>
    2f24:       48 83 c4 20             add    $0x20,%rsp
    2f28:       5b                      pop    %rbx
    2f29:       5d                      pop    %rbp
    2f2a:       41 5c                   pop    %r12
    2f2c:       c3                      retq
    2f2d:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
    2f34:       3a 20 43
    2f37:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
    2f3e:       20 75 6e
    2f41:       49 89 04 24             mov    %rax,(%r12)
    2f45:       49 89 54 24 08          mov    %rdx,0x8(%r12)
    2f4a:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    2f51:       74 6f 20
    2f54:       48 ba 63 72 65 61 74    movabs $0x7320657461657263,%rdx
    2f5b:       65 20 73
    2f5e:       49 89 44 24 10          mov    %rax,0x10(%r12)
    2f63:       49 89 54 24 18          mov    %rdx,0x18(%r12)
    2f68:       41 c7 44 24 20 6f 63    movl   $0x656b636f,0x20(%r12)
    2f6f:       6b 65
    2f71:       66 41 c7 44 24 24 74    movw   $0x74,0x24(%r12)
    2f78:       00
    2f79:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2f7e:       eb 90                   jmp    2f10 <init_driver+0xea>
    2f80:       48 b8 45 72 72 6f 72    movabs $0x44203a726f727245,%rax
    2f87:       3a 20 44
    2f8a:       48 ba 4e 53 20 69 73    movabs $0x6e7520736920534e,%rdx
    2f91:       20 75 6e
    2f94:       49 89 04 24             mov    %rax,(%r12)
    2f98:       49 89 54 24 08          mov    %rdx,0x8(%r12)
    2f9d:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    2fa4:       74 6f 20
    2fa7:       48 ba 72 65 73 6f 6c    movabs $0x2065766c6f736572,%rdx
    2fae:       76 65 20
    2fb1:       49 89 44 24 10          mov    %rax,0x10(%r12)
    2fb6:       49 89 54 24 18          mov    %rdx,0x18(%r12)
    2fbb:       48 b8 73 65 72 76 65    movabs $0x6120726576726573,%rax
    2fc2:       72 20 61
    2fc5:       49 89 44 24 20          mov    %rax,0x20(%r12)
    2fca:       41 c7 44 24 28 64 64    movl   $0x65726464,0x28(%r12)
    2fd1:       72 65
    2fd3:       66 41 c7 44 24 2c 73    movw   $0x7373,0x2c(%r12)
    2fda:       73
    2fdb:       41 c6 44 24 2e 00       movb   $0x0,0x2e(%r12)
    2fe1:       89 df                   mov    %ebx,%edi
    2fe3:       e8 b8 de ff ff          callq  ea0 <close@plt>
    2fe8:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2fed:       e9 1e ff ff ff          jmpq   2f10 <init_driver+0xea>
    2ff2:       48 b8 45 72 72 6f 72    movabs $0x55203a726f727245,%rax
    2ff9:       3a 20 55
    2ffc:       48 ba 6e 61 62 6c 65    movabs $0x6f7420656c62616e,%rdx
    3003:       20 74 6f
    3006:       49 89 04 24             mov    %rax,(%r12)
    300a:       49 89 54 24 08          mov    %rdx,0x8(%r12)
    300f:       48 b8 20 63 6f 6e 6e    movabs $0x7463656e6e6f6320,%rax
    3016:       65 63 74
    3019:       48 ba 20 74 6f 20 73    movabs $0x76726573206f7420,%rdx
    3020:       65 72 76
    3023:       49 89 44 24 10          mov    %rax,0x10(%r12)
    3028:       49 89 54 24 18          mov    %rdx,0x18(%r12)
    302d:       66 41 c7 44 24 20 65    movw   $0x7265,0x20(%r12)
    3034:       72
    3035:       41 c6 44 24 22 00       movb   $0x0,0x22(%r12)
    303b:       89 df                   mov    %ebx,%edi
    303d:       e8 5e de ff ff          callq  ea0 <close@plt>
    3042:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    3047:       e9 c4 fe ff ff          jmpq   2f10 <init_driver+0xea>
    304c:       e8 0f de ff ff          callq  e60 <__stack_chk_fail@plt>

0000000000003051 <driver_post>:
    3051:       53                      push   %rbx
    3052:       4c 89 cb                mov    %r9,%rbx
    3055:       45 85 c0                test   %r8d,%r8d
    3058:       75 18                   jne    3072 <driver_post+0x21>
    305a:       48 85 ff                test   %rdi,%rdi
    305d:       74 05                   je     3064 <driver_post+0x13>
    305f:       80 3f 00                cmpb   $0x0,(%rdi)
    3062:       75 37                   jne    309b <driver_post+0x4a>
    3064:       66 c7 03 4f 4b          movw   $0x4b4f,(%rbx)
    3069:       c6 43 02 00             movb   $0x0,0x2(%rbx)
    306d:       44 89 c0                mov    %r8d,%eax
    3070:       5b                      pop    %rbx
    3071:       c3                      retq
    3072:       48 89 ca                mov    %rcx,%rdx
    3075:       48 8d 35 d0 08 00 00    lea    0x8d0(%rip),%rsi        # 394c <trans_char+0xdc>
    307c:       bf 01 00 00 00          mov    $0x1,%edi
    3081:       b8 00 00 00 00          mov    $0x0,%eax
    3086:       e8 d5 de ff ff          callq  f60 <__printf_chk@plt>
    308b:       66 c7 03 4f 4b          movw   $0x4b4f,(%rbx)
    3090:       c6 43 02 00             movb   $0x0,0x2(%rbx)
    3094:       b8 00 00 00 00          mov    $0x0,%eax
    3099:       eb d5                   jmp    3070 <driver_post+0x1f>
    309b:       48 83 ec 08             sub    $0x8,%rsp
    309f:       41 51                   push   %r9
    30a1:       49 89 c9                mov    %rcx,%r9
    30a4:       49 89 d0                mov    %rdx,%r8
    30a7:       48 89 f9                mov    %rdi,%rcx
    30aa:       48 89 f2                mov    %rsi,%rdx
    30ad:       be 9a 3c 00 00          mov    $0x3c9a,%esi
    30b2:       48 8d 3d 83 08 00 00    lea    0x883(%rip),%rdi        # 393c <trans_char+0xcc>
    30b9:       e8 b9 f5 ff ff          callq  2677 <submitr>
    30be:       48 83 c4 10             add    $0x10,%rsp
    30c2:       eb ac                   jmp    3070 <driver_post+0x1f>

00000000000030c4 <check>:
    30c4:       89 f8                   mov    %edi,%eax
    30c6:       c1 e8 1c                shr    $0x1c,%eax
    30c9:       85 c0                   test   %eax,%eax
    30cb:       74 1d                   je     30ea <check+0x26>
    30cd:       b9 00 00 00 00          mov    $0x0,%ecx
    30d2:       83 f9 1f                cmp    $0x1f,%ecx
    30d5:       7f 0d                   jg     30e4 <check+0x20>
    30d7:       89 f8                   mov    %edi,%eax
    30d9:       d3 e8                   shr    %cl,%eax
    30db:       3c 0a                   cmp    $0xa,%al
    30dd:       74 11                   je     30f0 <check+0x2c>
    30df:       83 c1 08                add    $0x8,%ecx
    30e2:       eb ee                   jmp    30d2 <check+0xe>
    30e4:       b8 01 00 00 00          mov    $0x1,%eax
    30e9:       c3                      retq
    30ea:       b8 00 00 00 00          mov    $0x0,%eax
    30ef:       c3                      retq
    30f0:       b8 00 00 00 00          mov    $0x0,%eax
    30f5:       c3                      retq

00000000000030f6 <gencookie>:
    30f6:       53                      push   %rbx
    30f7:       83 c7 01                add    $0x1,%edi
    30fa:       e8 11 dd ff ff          callq  e10 <srandom@plt>
    30ff:       e8 1c de ff ff          callq  f20 <random@plt>
    3104:       89 c3                   mov    %eax,%ebx
    3106:       89 c7                   mov    %eax,%edi
    3108:       e8 b7 ff ff ff          callq  30c4 <check>
    310d:       85 c0                   test   %eax,%eax
    310f:       74 ee                   je     30ff <gencookie+0x9>
    3111:       89 d8                   mov    %ebx,%eax
    3113:       5b                      pop    %rbx
    3114:       c3                      retq
    3115:       66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
    311c:       00 00 00
    311f:       90                      nop

0000000000003120 <__libc_csu_init>:
    3120:       41 57                   push   %r15
    3122:       41 56                   push   %r14
    3124:       49 89 d7                mov    %rdx,%r15
    3127:       41 55                   push   %r13
    3129:       41 54                   push   %r12
    312b:       4c 8d 25 86 1b 20 00    lea    0x201b86(%rip),%r12        # 204cb8 <__frame_dummy_init_array_entry>
    3132:       55                      push   %rbp
    3133:       48 8d 2d 86 1b 20 00    lea    0x201b86(%rip),%rbp        # 204cc0 <__init_array_end>
    313a:       53                      push   %rbx
    313b:       41 89 fd                mov    %edi,%r13d
    313e:       49 89 f6                mov    %rsi,%r14
    3141:       4c 29 e5                sub    %r12,%rbp
    3144:       48 83 ec 08             sub    $0x8,%rsp
    3148:       48 c1 fd 03             sar    $0x3,%rbp
    314c:       e8 77 dc ff ff          callq  dc8 <_init>
    3151:       48 85 ed                test   %rbp,%rbp
    3154:       74 20                   je     3176 <__libc_csu_init+0x56>
    3156:       31 db                   xor    %ebx,%ebx
    3158:       0f 1f 84 00 00 00 00    nopl   0x0(%rax,%rax,1)
    315f:       00
    3160:       4c 89 fa                mov    %r15,%rdx
    3163:       4c 89 f6                mov    %r14,%rsi
    3166:       44 89 ef                mov    %r13d,%edi
    3169:       41 ff 14 dc             callq  *(%r12,%rbx,8)
    316d:       48 83 c3 01             add    $0x1,%rbx
    3171:       48 39 dd                cmp    %rbx,%rbp
    3174:       75 ea                   jne    3160 <__libc_csu_init+0x40>
    3176:       48 83 c4 08             add    $0x8,%rsp
    317a:       5b                      pop    %rbx
    317b:       5d                      pop    %rbp
    317c:       41 5c                   pop    %r12
    317e:       41 5d                   pop    %r13
    3180:       41 5e                   pop    %r14
    3182:       41 5f                   pop    %r15
    3184:       c3                      retq
    3185:       90                      nop
    3186:       66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
    318d:       00 00 00

0000000000003190 <__libc_csu_fini>:
    3190:       f3 c3                   repz retq

Disassembly of section .fini:

0000000000003194 <_fini>:
    3194:       48 83 ec 08             sub    $0x8,%rsp
    3198:       48 83 c4 08             add    $0x8,%rsp
    319c:       c3                      retq