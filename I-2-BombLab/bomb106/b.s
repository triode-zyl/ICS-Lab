
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000000e00 <_init>:
 e00:   48 83 ec 08             sub    $0x8,%rsp
 e04:   48 8b 05 dd 31 20 00    mov    0x2031dd(%rip),%rax        # 203fe8 <__gmon_start__>
 e0b:   48 85 c0                test   %rax,%rax
 e0e:   74 02                   je     e12 <_init+0x12>
 e10:   ff d0                   callq  *%rax
 e12:   48 83 c4 08             add    $0x8,%rsp
 e16:   c3                      retq

Disassembly of section .plt:

0000000000000e20 <.plt>:
 e20:   ff 35 ca 30 20 00       pushq  0x2030ca(%rip)        # 203ef0 <_GLOBAL_OFFSET_TABLE_+0x8>
 e26:   ff 25 cc 30 20 00       jmpq   *0x2030cc(%rip)        # 203ef8 <_GLOBAL_OFFSET_TABLE_+0x10>
 e2c:   0f 1f 40 00             nopl   0x0(%rax)

0000000000000e30 <getenv@plt>:
 e30:   ff 25 ca 30 20 00       jmpq   *0x2030ca(%rip)        # 203f00 <getenv@GLIBC_2.2.5>
 e36:   68 00 00 00 00          pushq  $0x0
 e3b:   e9 e0 ff ff ff          jmpq   e20 <.plt>

0000000000000e40 <strcasecmp@plt>:
 e40:   ff 25 c2 30 20 00       jmpq   *0x2030c2(%rip)        # 203f08 <strcasecmp@GLIBC_2.2.5>
 e46:   68 01 00 00 00          pushq  $0x1
 e4b:   e9 d0 ff ff ff          jmpq   e20 <.plt>

0000000000000e50 <__errno_location@plt>:
 e50:   ff 25 ba 30 20 00       jmpq   *0x2030ba(%rip)        # 203f10 <__errno_location@GLIBC_2.2.5>
 e56:   68 02 00 00 00          pushq  $0x2
 e5b:   e9 c0 ff ff ff          jmpq   e20 <.plt>

0000000000000e60 <strcpy@plt>:
 e60:   ff 25 b2 30 20 00       jmpq   *0x2030b2(%rip)        # 203f18 <strcpy@GLIBC_2.2.5>
 e66:   68 03 00 00 00          pushq  $0x3
 e6b:   e9 b0 ff ff ff          jmpq   e20 <.plt>

0000000000000e70 <puts@plt>:
 e70:   ff 25 aa 30 20 00       jmpq   *0x2030aa(%rip)        # 203f20 <puts@GLIBC_2.2.5>
 e76:   68 04 00 00 00          pushq  $0x4
 e7b:   e9 a0 ff ff ff          jmpq   e20 <.plt>

0000000000000e80 <write@plt>:
 e80:   ff 25 a2 30 20 00       jmpq   *0x2030a2(%rip)        # 203f28 <write@GLIBC_2.2.5>
 e86:   68 05 00 00 00          pushq  $0x5
 e8b:   e9 90 ff ff ff          jmpq   e20 <.plt>

0000000000000e90 <__stack_chk_fail@plt>:
 e90:   ff 25 9a 30 20 00       jmpq   *0x20309a(%rip)        # 203f30 <__stack_chk_fail@GLIBC_2.4>
 e96:   68 06 00 00 00          pushq  $0x6
 e9b:   e9 80 ff ff ff          jmpq   e20 <.plt>

0000000000000ea0 <alarm@plt>:
 ea0:   ff 25 92 30 20 00       jmpq   *0x203092(%rip)        # 203f38 <alarm@GLIBC_2.2.5>
 ea6:   68 07 00 00 00          pushq  $0x7
 eab:   e9 70 ff ff ff          jmpq   e20 <.plt>

0000000000000eb0 <close@plt>:
 eb0:   ff 25 8a 30 20 00       jmpq   *0x20308a(%rip)        # 203f40 <close@GLIBC_2.2.5>
 eb6:   68 08 00 00 00          pushq  $0x8
 ebb:   e9 60 ff ff ff          jmpq   e20 <.plt>

0000000000000ec0 <read@plt>:
 ec0:   ff 25 82 30 20 00       jmpq   *0x203082(%rip)        # 203f48 <read@GLIBC_2.2.5>
 ec6:   68 09 00 00 00          pushq  $0x9
 ecb:   e9 50 ff ff ff          jmpq   e20 <.plt>

0000000000000ed0 <fgets@plt>:
 ed0:   ff 25 7a 30 20 00       jmpq   *0x20307a(%rip)        # 203f50 <fgets@GLIBC_2.2.5>
 ed6:   68 0a 00 00 00          pushq  $0xa
 edb:   e9 40 ff ff ff          jmpq   e20 <.plt>

0000000000000ee0 <signal@plt>:
 ee0:   ff 25 72 30 20 00       jmpq   *0x203072(%rip)        # 203f58 <signal@GLIBC_2.2.5>
 ee6:   68 0b 00 00 00          pushq  $0xb
 eeb:   e9 30 ff ff ff          jmpq   e20 <.plt>

0000000000000ef0 <gethostbyname@plt>:
 ef0:   ff 25 6a 30 20 00       jmpq   *0x20306a(%rip)        # 203f60 <gethostbyname@GLIBC_2.2.5>
 ef6:   68 0c 00 00 00          pushq  $0xc
 efb:   e9 20 ff ff ff          jmpq   e20 <.plt>

0000000000000f00 <__memmove_chk@plt>:
 f00:   ff 25 62 30 20 00       jmpq   *0x203062(%rip)        # 203f68 <__memmove_chk@GLIBC_2.3.4>
 f06:   68 0d 00 00 00          pushq  $0xd
 f0b:   e9 10 ff ff ff          jmpq   e20 <.plt>

0000000000000f10 <strtol@plt>:
 f10:   ff 25 5a 30 20 00       jmpq   *0x20305a(%rip)        # 203f70 <strtol@GLIBC_2.2.5>
 f16:   68 0e 00 00 00          pushq  $0xe
 f1b:   e9 00 ff ff ff          jmpq   e20 <.plt>

0000000000000f20 <fflush@plt>:
 f20:   ff 25 52 30 20 00       jmpq   *0x203052(%rip)        # 203f78 <fflush@GLIBC_2.2.5>
 f26:   68 0f 00 00 00          pushq  $0xf
 f2b:   e9 f0 fe ff ff          jmpq   e20 <.plt>

0000000000000f30 <__isoc99_sscanf@plt>:
 f30:   ff 25 4a 30 20 00       jmpq   *0x20304a(%rip)        # 203f80 <__isoc99_sscanf@GLIBC_2.7>
 f36:   68 10 00 00 00          pushq  $0x10
 f3b:   e9 e0 fe ff ff          jmpq   e20 <.plt>

0000000000000f40 <__printf_chk@plt>:
 f40:   ff 25 42 30 20 00       jmpq   *0x203042(%rip)        # 203f88 <__printf_chk@GLIBC_2.3.4>
 f46:   68 11 00 00 00          pushq  $0x11
 f4b:   e9 d0 fe ff ff          jmpq   e20 <.plt>

0000000000000f50 <fopen@plt>:
 f50:   ff 25 3a 30 20 00       jmpq   *0x20303a(%rip)        # 203f90 <fopen@GLIBC_2.2.5>
 f56:   68 12 00 00 00          pushq  $0x12
 f5b:   e9 c0 fe ff ff          jmpq   e20 <.plt>

0000000000000f60 <gethostname@plt>:
 f60:   ff 25 32 30 20 00       jmpq   *0x203032(%rip)        # 203f98 <gethostname@GLIBC_2.2.5>
 f66:   68 13 00 00 00          pushq  $0x13
 f6b:   e9 b0 fe ff ff          jmpq   e20 <.plt>

0000000000000f70 <exit@plt>:
 f70:   ff 25 2a 30 20 00       jmpq   *0x20302a(%rip)        # 203fa0 <exit@GLIBC_2.2.5>
 f76:   68 14 00 00 00          pushq  $0x14
 f7b:   e9 a0 fe ff ff          jmpq   e20 <.plt>

0000000000000f80 <connect@plt>:
 f80:   ff 25 22 30 20 00       jmpq   *0x203022(%rip)        # 203fa8 <connect@GLIBC_2.2.5>
 f86:   68 15 00 00 00          pushq  $0x15
 f8b:   e9 90 fe ff ff          jmpq   e20 <.plt>

0000000000000f90 <__fprintf_chk@plt>:
 f90:   ff 25 1a 30 20 00       jmpq   *0x20301a(%rip)        # 203fb0 <__fprintf_chk@GLIBC_2.3.4>
 f96:   68 16 00 00 00          pushq  $0x16
 f9b:   e9 80 fe ff ff          jmpq   e20 <.plt>

0000000000000fa0 <sleep@plt>:
 fa0:   ff 25 12 30 20 00       jmpq   *0x203012(%rip)        # 203fb8 <sleep@GLIBC_2.2.5>
 fa6:   68 17 00 00 00          pushq  $0x17
 fab:   e9 70 fe ff ff          jmpq   e20 <.plt>

0000000000000fb0 <__ctype_b_loc@plt>:
 fb0:   ff 25 0a 30 20 00       jmpq   *0x20300a(%rip)        # 203fc0 <__ctype_b_loc@GLIBC_2.3>
 fb6:   68 18 00 00 00          pushq  $0x18
 fbb:   e9 60 fe ff ff          jmpq   e20 <.plt>

0000000000000fc0 <__sprintf_chk@plt>:
 fc0:   ff 25 02 30 20 00       jmpq   *0x203002(%rip)        # 203fc8 <__sprintf_chk@GLIBC_2.3.4>
 fc6:   68 19 00 00 00          pushq  $0x19
 fcb:   e9 50 fe ff ff          jmpq   e20 <.plt>

0000000000000fd0 <socket@plt>:
 fd0:   ff 25 fa 2f 20 00       jmpq   *0x202ffa(%rip)        # 203fd0 <socket@GLIBC_2.2.5>
 fd6:   68 1a 00 00 00          pushq  $0x1a
 fdb:   e9 40 fe ff ff          jmpq   e20 <.plt>

Disassembly of section .plt.got:

0000000000000fe0 <__cxa_finalize@plt>:
 fe0:   ff 25 12 30 20 00       jmpq   *0x203012(%rip)        # 203ff8 <__cxa_finalize@GLIBC_2.2.5>
 fe6:   66 90                   xchg   %ax,%ax

Disassembly of section .text:

0000000000000ff0 <_start>:
     ff0:       31 ed                   xor    %ebp,%ebp
     ff2:       49 89 d1                mov    %rdx,%r9
     ff5:       5e                      pop    %rsi
     ff6:       48 89 e2                mov    %rsp,%rdx
     ff9:       48 83 e4 f0             and    $0xfffffffffffffff0,%rsp
     ffd:       50                      push   %rax
     ffe:       54                      push   %rsp
     fff:       4c 8d 05 0a 19 00 00    lea    0x190a(%rip),%r8        # 2910 <__libc_csu_fini>
    1006:       48 8d 0d 93 18 00 00    lea    0x1893(%rip),%rcx        # 28a0 <__libc_csu_init>
    100d:       48 8d 3d e6 00 00 00    lea    0xe6(%rip),%rdi        # 10fa <main>
    1014:       ff 15 c6 2f 20 00       callq  *0x202fc6(%rip)        # 203fe0 <__libc_start_main@GLIBC_2.2.5>
    101a:       f4                      hlt
    101b:       0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)

0000000000001020 <deregister_tm_clones>:
    1020:       48 8d 3d 59 36 20 00    lea    0x203659(%rip),%rdi        # 204680 <stdout@@GLIBC_2.2.5>
    1027:       55                      push   %rbp
    1028:       48 8d 05 51 36 20 00    lea    0x203651(%rip),%rax        # 204680 <stdout@@GLIBC_2.2.5>
    102f:       48 39 f8                cmp    %rdi,%rax
    1032:       48 89 e5                mov    %rsp,%rbp
    1035:       74 19                   je     1050 <deregister_tm_clones+0x30>
    1037:       48 8b 05 9a 2f 20 00    mov    0x202f9a(%rip),%rax        # 203fd8 <_ITM_deregisterTMCloneTable>
    103e:       48 85 c0                test   %rax,%rax
    1041:       74 0d                   je     1050 <deregister_tm_clones+0x30>
    1043:       5d                      pop    %rbp
    1044:       ff e0                   jmpq   *%rax
    1046:       66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
    104d:       00 00 00
    1050:       5d                      pop    %rbp
    1051:       c3                      retq
    1052:       0f 1f 40 00             nopl   0x0(%rax)
    1056:       66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
    105d:       00 00 00

0000000000001060 <register_tm_clones>:
    1060:       48 8d 3d 19 36 20 00    lea    0x203619(%rip),%rdi        # 204680 <stdout@@GLIBC_2.2.5>
    1067:       48 8d 35 12 36 20 00    lea    0x203612(%rip),%rsi        # 204680 <stdout@@GLIBC_2.2.5>
    106e:       55                      push   %rbp
    106f:       48 29 fe                sub    %rdi,%rsi
    1072:       48 89 e5                mov    %rsp,%rbp
    1075:       48 c1 fe 03             sar    $0x3,%rsi
    1079:       48 89 f0                mov    %rsi,%rax
    107c:       48 c1 e8 3f             shr    $0x3f,%rax
    1080:       48 01 c6                add    %rax,%rsi
    1083:       48 d1 fe                sar    %rsi
    1086:       74 18                   je     10a0 <register_tm_clones+0x40>
    1088:       48 8b 05 61 2f 20 00    mov    0x202f61(%rip),%rax        # 203ff0 <_ITM_registerTMCloneTable>
    108f:       48 85 c0                test   %rax,%rax
    1092:       74 0c                   je     10a0 <register_tm_clones+0x40>
    1094:       5d                      pop    %rbp
    1095:       ff e0                   jmpq   *%rax
    1097:       66 0f 1f 84 00 00 00    nopw   0x0(%rax,%rax,1)
    109e:       00 00
    10a0:       5d                      pop    %rbp
    10a1:       c3                      retq
    10a2:       0f 1f 40 00             nopl   0x0(%rax)
    10a6:       66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
    10ad:       00 00 00

00000000000010b0 <__do_global_dtors_aux>:
    10b0:       80 3d f1 35 20 00 00    cmpb   $0x0,0x2035f1(%rip)        # 2046a8 <completed.7697>
    10b7:       75 2f                   jne    10e8 <__do_global_dtors_aux+0x38>
    10b9:       48 83 3d 37 2f 20 00    cmpq   $0x0,0x202f37(%rip)        # 203ff8 <__cxa_finalize@GLIBC_2.2.5>
    10c0:       00
    10c1:       55                      push   %rbp
    10c2:       48 89 e5                mov    %rsp,%rbp
    10c5:       74 0c                   je     10d3 <__do_global_dtors_aux+0x23>
    10c7:       48 8b 3d 3a 2f 20 00    mov    0x202f3a(%rip),%rdi        # 204008 <__dso_handle>
    10ce:       e8 0d ff ff ff          callq  fe0 <__cxa_finalize@plt>
    10d3:       e8 48 ff ff ff          callq  1020 <deregister_tm_clones>
    10d8:       c6 05 c9 35 20 00 01    movb   $0x1,0x2035c9(%rip)        # 2046a8 <completed.7697>
    10df:       5d                      pop    %rbp
    10e0:       c3                      retq
    10e1:       0f 1f 80 00 00 00 00    nopl   0x0(%rax)
    10e8:       f3 c3                   repz retq
    10ea:       66 0f 1f 44 00 00       nopw   0x0(%rax,%rax,1)

00000000000010f0 <frame_dummy>:
    10f0:       55                      push   %rbp
    10f1:       48 89 e5                mov    %rsp,%rbp
    10f4:       5d                      pop    %rbp
    10f5:       e9 66 ff ff ff          jmpq   1060 <register_tm_clones>

00000000000010fa <main>:
    10fa:       53                      push   %rbx
    10fb:       83 ff 01                cmp    $0x1,%edi
    10fe:       0f 84 f8 00 00 00       je     11fc <main+0x102>
    1104:       48 89 f3                mov    %rsi,%rbx
    1107:       83 ff 02                cmp    $0x2,%edi
    110a:       0f 85 21 01 00 00       jne    1231 <main+0x137>
    1110:       48 8b 7e 08             mov    0x8(%rsi),%rdi
    1114:       48 8d 35 09 18 00 00    lea    0x1809(%rip),%rsi        # 2924 <_IO_stdin_used+0x4>
    111b:       e8 30 fe ff ff          callq  f50 <fopen@plt>
    1120:       48 89 05 89 35 20 00    mov    %rax,0x203589(%rip)        # 2046b0 <infile>
    1127:       48 85 c0                test   %rax,%rax
    112a:       0f 84 df 00 00 00       je     120f <main+0x115>
    1130:       e8 6c 06 00 00          callq  17a1 <initialize_bomb>
    1135:       48 8d 3d 6c 18 00 00    lea    0x186c(%rip),%rdi        # 29a8 <_IO_stdin_used+0x88>
    113c:       e8 2f fd ff ff          callq  e70 <puts@plt>
    1141:       48 8d 3d a0 18 00 00    lea    0x18a0(%rip),%rdi        # 29e8 <_IO_stdin_used+0xc8>
    1148:       e8 23 fd ff ff          callq  e70 <puts@plt>
    114d:       e8 69 09 00 00          callq  1abb <read_line>
    1152:       48 89 c7                mov    %rax,%rdi
    1155:       e8 fa 00 00 00          callq  1254 <phase_1>
    115a:       e8 a0 0a 00 00          callq  1bff <phase_defused>
    115f:       48 8d 3d b2 18 00 00    lea    0x18b2(%rip),%rdi        # 2a18 <_IO_stdin_used+0xf8>
    1166:       e8 05 fd ff ff          callq  e70 <puts@plt>
    116b:       e8 4b 09 00 00          callq  1abb <read_line>
    1170:       48 89 c7                mov    %rax,%rdi
    1173:       e8 fc 00 00 00          callq  1274 <phase_2>
    1178:       e8 82 0a 00 00          callq  1bff <phase_defused>
    117d:       48 8d 3d d9 17 00 00    lea    0x17d9(%rip),%rdi        # 295d <_IO_stdin_used+0x3d>
    1184:       e8 e7 fc ff ff          callq  e70 <puts@plt>
    1189:       e8 2d 09 00 00          callq  1abb <read_line>
    118e:       48 89 c7                mov    %rax,%rdi
    1191:       e8 4d 01 00 00          callq  12e3 <phase_3>
    1196:       e8 64 0a 00 00          callq  1bff <phase_defused>
    119b:       48 8d 3d d9 17 00 00    lea    0x17d9(%rip),%rdi        # 297b <_IO_stdin_used+0x5b>
    11a2:       e8 c9 fc ff ff          callq  e70 <puts@plt>
    11a7:       e8 0f 09 00 00          callq  1abb <read_line>
    11ac:       48 89 c7                mov    %rax,%rdi
    11af:       e8 4f 02 00 00          callq  1403 <phase_4>
    11b4:       e8 46 0a 00 00          callq  1bff <phase_defused>
    11b9:       48 8d 3d 88 18 00 00    lea    0x1888(%rip),%rdi        # 2a48 <_IO_stdin_used+0x128>
    11c0:       e8 ab fc ff ff          callq  e70 <puts@plt>
    11c5:       e8 f1 08 00 00          callq  1abb <read_line>
    11ca:       48 89 c7                mov    %rax,%rdi
    11cd:       e8 a6 02 00 00          callq  1478 <phase_5>
    11d2:       e8 28 0a 00 00          callq  1bff <phase_defused>
    11d7:       48 8d 3d ac 17 00 00    lea    0x17ac(%rip),%rdi        # 298a <_IO_stdin_used+0x6a>
    11de:       e8 8d fc ff ff          callq  e70 <puts@plt>
    11e3:       e8 d3 08 00 00          callq  1abb <read_line>
    11e8:       48 89 c7                mov    %rax,%rdi
    11eb:       e8 ce 02 00 00          callq  14be <phase_6>
    11f0:       e8 0a 0a 00 00          callq  1bff <phase_defused>
    11f5:       b8 00 00 00 00          mov    $0x0,%eax
    11fa:       5b                      pop    %rbx
    11fb:       c3                      retq
    11fc:       48 8b 05 8d 34 20 00    mov    0x20348d(%rip),%rax        # 204690 <stdin@@GLIBC_2.2.5>
    1203:       48 89 05 a6 34 20 00    mov    %rax,0x2034a6(%rip)        # 2046b0 <infile>
    120a:       e9 21 ff ff ff          jmpq   1130 <main+0x36>
    120f:       48 8b 4b 08             mov    0x8(%rbx),%rcx
    1213:       48 8b 13                mov    (%rbx),%rdx
    1216:       48 8d 35 09 17 00 00    lea    0x1709(%rip),%rsi        # 2926 <_IO_stdin_used+0x6>
    121d:       bf 01 00 00 00          mov    $0x1,%edi
    1222:       e8 19 fd ff ff          callq  f40 <__printf_chk@plt>
    1227:       bf 08 00 00 00          mov    $0x8,%edi
    122c:       e8 3f fd ff ff          callq  f70 <exit@plt>
    1231:       48 8b 16                mov    (%rsi),%rdx
    1234:       48 8d 35 08 17 00 00    lea    0x1708(%rip),%rsi        # 2943 <_IO_stdin_used+0x23>
    123b:       bf 01 00 00 00          mov    $0x1,%edi
    1240:       b8 00 00 00 00          mov    $0x0,%eax
    1245:       e8 f6 fc ff ff          callq  f40 <__printf_chk@plt>
    124a:       bf 08 00 00 00          mov    $0x8,%edi
    124f:       e8 1c fd ff ff          callq  f70 <exit@plt>

0000000000001254 <phase_1>:
    1254:       48 83 ec 08             sub    $0x8,%rsp
    1258:       48 8d 35 11 18 00 00    lea    0x1811(%rip),%rsi        # 2a70 <_IO_stdin_used+0x150>
    125f:       e8 d6 04 00 00          callq  173a <strings_not_equal>
    1264:       85 c0                   test   %eax,%eax
    1266:       75 05                   jne    126d <phase_1+0x19>
    1268:       48 83 c4 08             add    $0x8,%rsp
    126c:       c3                      retq
    126d:       e8 cc 07 00 00          callq  1a3e <explode_bomb>
    1272:       eb f4                   jmp    1268 <phase_1+0x14>

0000000000001274 <phase_2>:
    1274:       55                      push   %rbp
    1275:       53                      push   %rbx
    1276:       48 83 ec 28             sub    $0x28,%rsp
    127a:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    1281:       00 00
    1283:       48 89 44 24 18          mov    %rax,0x18(%rsp)
    1288:       31 c0                   xor    %eax,%eax
    128a:       48 89 e6                mov    %rsp,%rsi
    128d:       e8 e8 07 00 00          callq  1a7a <read_six_numbers>
    1292:       83 3c 24 00             cmpl   $0x0,(%rsp)
    1296:       75 07                   jne    129f <phase_2+0x2b>
    1298:       83 7c 24 04 01          cmpl   $0x1,0x4(%rsp)
    129d:       74 05                   je     12a4 <phase_2+0x30>
    129f:       e8 9a 07 00 00          callq  1a3e <explode_bomb>
    12a4:       48 89 e3                mov    %rsp,%rbx
    12a7:       48 8d 6b 10             lea    0x10(%rbx),%rbp
    12ab:       eb 09                   jmp    12b6 <phase_2+0x42>
    12ad:       48 83 c3 04             add    $0x4,%rbx
    12b1:       48 39 eb                cmp    %rbp,%rbx
    12b4:       74 11                   je     12c7 <phase_2+0x53>
    12b6:       8b 43 04                mov    0x4(%rbx),%eax
    12b9:       03 03                   add    (%rbx),%eax
    12bb:       39 43 08                cmp    %eax,0x8(%rbx)
    12be:       74 ed                   je     12ad <phase_2+0x39>
    12c0:       e8 79 07 00 00          callq  1a3e <explode_bomb>
    12c5:       eb e6                   jmp    12ad <phase_2+0x39>
    12c7:       48 8b 44 24 18          mov    0x18(%rsp),%rax
    12cc:       64 48 33 04 25 28 00    xor    %fs:0x28,%rax
    12d3:       00 00
    12d5:       75 07                   jne    12de <phase_2+0x6a>
    12d7:       48 83 c4 28             add    $0x28,%rsp
    12db:       5b                      pop    %rbx
    12dc:       5d                      pop    %rbp
    12dd:       c3                      retq
    12de:       e8 ad fb ff ff          callq  e90 <__stack_chk_fail@plt>

00000000000012e3 <phase_3>:
    12e3:       48 83 ec 18             sub    $0x18,%rsp
    12e7:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    12ee:       00 00
    12f0:       48 89 44 24 08          mov    %rax,0x8(%rsp)
    12f5:       31 c0                   xor    %eax,%eax
    12f7:       48 8d 4c 24 04          lea    0x4(%rsp),%rcx
    12fc:       48 89 e2                mov    %rsp,%rdx
    12ff:       48 8d 35 87 1a 00 00    lea    0x1a87(%rip),%rsi        # 2d8d <array.3417+0x28d>
    1306:       e8 25 fc ff ff          callq  f30 <__isoc99_sscanf@plt>
    130b:       83 f8 01                cmp    $0x1,%eax
    130e:       7e 1d                   jle    132d <phase_3+0x4a>
    1310:       83 3c 24 07             cmpl   $0x7,(%rsp)
    1314:       0f 87 99 00 00 00       ja     13b3 <phase_3+0xd0>
    131a:       8b 04 24                mov    (%rsp),%eax
    131d:       48 8d 15 bc 17 00 00    lea    0x17bc(%rip),%rdx        # 2ae0 <_IO_stdin_used+0x1c0>
    1324:       48 63 04 82             movslq (%rdx,%rax,4),%rax
    1328:       48 01 d0                add    %rdx,%rax
    132b:       ff e0                   jmpq   *%rax
    132d:       e8 0c 07 00 00          callq  1a3e <explode_bomb>
    1332:       eb dc                   jmp    1310 <phase_3+0x2d>
    1334:       b8 f8 02 00 00          mov    $0x2f8,%eax
    1339:       eb 05                   jmp    1340 <phase_3+0x5d>
    133b:       b8 00 00 00 00          mov    $0x0,%eax
    1340:       2d c8 03 00 00          sub    $0x3c8,%eax
    1345:       05 3c 03 00 00          add    $0x33c,%eax
    134a:       2d 09 02 00 00          sub    $0x209,%eax
    134f:       05 09 02 00 00          add    $0x209,%eax
    1354:       2d 09 02 00 00          sub    $0x209,%eax
    1359:       05 09 02 00 00          add    $0x209,%eax
    135e:       2d 09 02 00 00          sub    $0x209,%eax
    1363:       83 3c 24 05             cmpl   $0x5,(%rsp)
    1367:       7f 06                   jg     136f <phase_3+0x8c>
    1369:       39 44 24 04             cmp    %eax,0x4(%rsp)
    136d:       74 05                   je     1374 <phase_3+0x91>
    136f:       e8 ca 06 00 00          callq  1a3e <explode_bomb>
    1374:       48 8b 44 24 08          mov    0x8(%rsp),%rax
    1379:       64 48 33 04 25 28 00    xor    %fs:0x28,%rax
    1380:       00 00
    1382:       75 3b                   jne    13bf <phase_3+0xdc>
    1384:       48 83 c4 18             add    $0x18,%rsp
    1388:       c3                      retq
    1389:       b8 00 00 00 00          mov    $0x0,%eax
    138e:       eb b5                   jmp    1345 <phase_3+0x62>
    1390:       b8 00 00 00 00          mov    $0x0,%eax
    1395:       eb b3                   jmp    134a <phase_3+0x67>
    1397:       b8 00 00 00 00          mov    $0x0,%eax
    139c:       eb b1                   jmp    134f <phase_3+0x6c>
    139e:       b8 00 00 00 00          mov    $0x0,%eax
    13a3:       eb af                   jmp    1354 <phase_3+0x71>
    13a5:       b8 00 00 00 00          mov    $0x0,%eax
    13aa:       eb ad                   jmp    1359 <phase_3+0x76>
    13ac:       b8 00 00 00 00          mov    $0x0,%eax
    13b1:       eb ab                   jmp    135e <phase_3+0x7b>
    13b3:       e8 86 06 00 00          callq  1a3e <explode_bomb>
    13b8:       b8 00 00 00 00          mov    $0x0,%eax
    13bd:       eb a4                   jmp    1363 <phase_3+0x80>
    13bf:       e8 cc fa ff ff          callq  e90 <__stack_chk_fail@plt>

00000000000013c4 <func4>:
    13c4:       48 83 ec 08             sub    $0x8,%rsp
    13c8:       89 d0                   mov    %edx,%eax
    13ca:       29 f0                   sub    %esi,%eax
    13cc:       89 c1                   mov    %eax,%ecx
    13ce:       c1 e9 1f                shr    $0x1f,%ecx
    13d1:       01 c1                   add    %eax,%ecx
    13d3:       d1 f9                   sar    %ecx
    13d5:       01 f1                   add    %esi,%ecx
    13d7:       39 f9                   cmp    %edi,%ecx
    13d9:       7f 0e                   jg     13e9 <func4+0x25>
    13db:       b8 00 00 00 00          mov    $0x0,%eax
    13e0:       39 f9                   cmp    %edi,%ecx
    13e2:       7c 11                   jl     13f5 <func4+0x31>
    13e4:       48 83 c4 08             add    $0x8,%rsp
    13e8:       c3                      retq
    13e9:       8d 51 ff                lea    -0x1(%rcx),%edx
    13ec:       e8 d3 ff ff ff          callq  13c4 <func4>
    13f1:       01 c0                   add    %eax,%eax
    13f3:       eb ef                   jmp    13e4 <func4+0x20>
    13f5:       8d 71 01                lea    0x1(%rcx),%esi
    13f8:       e8 c7 ff ff ff          callq  13c4 <func4>
    13fd:       8d 44 00 01             lea    0x1(%rax,%rax,1),%eax
    1401:       eb e1                   jmp    13e4 <func4+0x20>

0000000000001403 <phase_4>:
    1403:       48 83 ec 18             sub    $0x18,%rsp
    1407:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    140e:       00 00
    1410:       48 89 44 24 08          mov    %rax,0x8(%rsp)
    1415:       31 c0                   xor    %eax,%eax
    1417:       48 8d 4c 24 04          lea    0x4(%rsp),%rcx
    141c:       48 89 e2                mov    %rsp,%rdx
    141f:       48 8d 35 67 19 00 00    lea    0x1967(%rip),%rsi        # 2d8d <array.3417+0x28d>
    1426:       e8 05 fb ff ff          callq  f30 <__isoc99_sscanf@plt>
    142b:       83 f8 02                cmp    $0x2,%eax
    142e:       75 06                   jne    1436 <phase_4+0x33>
    1430:       83 3c 24 0e             cmpl   $0xe,(%rsp)
    1434:       76 05                   jbe    143b <phase_4+0x38>
    1436:       e8 03 06 00 00          callq  1a3e <explode_bomb>
    143b:       ba 0e 00 00 00          mov    $0xe,%edx
    1440:       be 00 00 00 00          mov    $0x0,%esi
    1445:       8b 3c 24                mov    (%rsp),%edi
    1448:       e8 77 ff ff ff          callq  13c4 <func4>
    144d:       83 f8 03                cmp    $0x3,%eax
    1450:       75 07                   jne    1459 <phase_4+0x56>
    1452:       83 7c 24 04 03          cmpl   $0x3,0x4(%rsp)
    1457:       74 05                   je     145e <phase_4+0x5b>
    1459:       e8 e0 05 00 00          callq  1a3e <explode_bomb>
    145e:       48 8b 44 24 08          mov    0x8(%rsp),%rax
    1463:       64 48 33 04 25 28 00    xor    %fs:0x28,%rax
    146a:       00 00
    146c:       75 05                   jne    1473 <phase_4+0x70>
    146e:       48 83 c4 18             add    $0x18,%rsp
    1472:       c3                      retq
    1473:       e8 18 fa ff ff          callq  e90 <__stack_chk_fail@plt>

0000000000001478 <phase_5>:
    1478:       53                      push   %rbx
    1479:       48 89 fb                mov    %rdi,%rbx
    147c:       e8 9c 02 00 00          callq  171d <string_length>
    1481:       83 f8 06                cmp    $0x6,%eax
    1484:       75 31                   jne    14b7 <phase_5+0x3f>
    1486:       48 89 d8                mov    %rbx,%rax
    1489:       48 8d 7b 06             lea    0x6(%rbx),%rdi
    148d:       b9 00 00 00 00          mov    $0x0,%ecx
    1492:       48 8d 35 67 16 00 00    lea    0x1667(%rip),%rsi        # 2b00 <array.3417>
    1499:       0f b6 10                movzbl (%rax),%edx
    149c:       83 e2 0f                and    $0xf,%edx
    149f:       03 0c 96                add    (%rsi,%rdx,4),%ecx
    14a2:       48 83 c0 01             add    $0x1,%rax
    14a6:       48 39 f8                cmp    %rdi,%rax
    14a9:       75 ee                   jne    1499 <phase_5+0x21>
    14ab:       83 f9 2c                cmp    $0x2c,%ecx
    14ae:       74 05                   je     14b5 <phase_5+0x3d>
    14b0:       e8 89 05 00 00          callq  1a3e <explode_bomb>
    14b5:       5b                      pop    %rbx
    14b6:       c3                      retq
    14b7:       e8 82 05 00 00          callq  1a3e <explode_bomb>
    14bc:       eb c8                   jmp    1486 <phase_5+0xe>

00000000000014be <phase_6>:
    14be:       41 56                   push   %r14
    14c0:       41 55                   push   %r13
    14c2:       41 54                   push   %r12
    14c4:       55                      push   %rbp
    14c5:       53                      push   %rbx
    14c6:       48 83 ec 60             sub    $0x60,%rsp
    14ca:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    14d1:       00 00
    14d3:       48 89 44 24 58          mov    %rax,0x58(%rsp)
    14d8:       31 c0                   xor    %eax,%eax
    14da:       49 89 e5                mov    %rsp,%r13
    14dd:       4c 89 ee                mov    %r13,%rsi
    14e0:       e8 95 05 00 00          callq  1a7a <read_six_numbers>
    14e5:       4d 89 ec                mov    %r13,%r12
    14e8:       41 be 00 00 00 00       mov    $0x0,%r14d
    14ee:       eb 25                   jmp    1515 <phase_6+0x57>
    14f0:       e8 49 05 00 00          callq  1a3e <explode_bomb>
    14f5:       eb 2d                   jmp    1524 <phase_6+0x66>
    14f7:       83 c3 01                add    $0x1,%ebx
    14fa:       83 fb 05                cmp    $0x5,%ebx
    14fd:       7f 12                   jg     1511 <phase_6+0x53>
    14ff:       48 63 c3                movslq %ebx,%rax
    1502:       8b 04 84                mov    (%rsp,%rax,4),%eax
    1505:       39 45 00                cmp    %eax,0x0(%rbp)
    1508:       75 ed                   jne    14f7 <phase_6+0x39>
    150a:       e8 2f 05 00 00          callq  1a3e <explode_bomb>
    150f:       eb e6                   jmp    14f7 <phase_6+0x39>
    1511:       49 83 c5 04             add    $0x4,%r13
    1515:       4c 89 ed                mov    %r13,%rbp
    1518:       41 8b 45 00             mov    0x0(%r13),%eax
    151c:       83 e8 01                sub    $0x1,%eax
    151f:       83 f8 05                cmp    $0x5,%eax
    1522:       77 cc                   ja     14f0 <phase_6+0x32>
    1524:       41 83 c6 01             add    $0x1,%r14d
    1528:       41 83 fe 06             cmp    $0x6,%r14d
    152c:       74 05                   je     1533 <phase_6+0x75>
    152e:       44 89 f3                mov    %r14d,%ebx
    1531:       eb cc                   jmp    14ff <phase_6+0x41>
    1533:       49 8d 4c 24 18          lea    0x18(%r12),%rcx
    1538:       ba 07 00 00 00          mov    $0x7,%edx
    153d:       89 d0                   mov    %edx,%eax
    153f:       41 2b 04 24             sub    (%r12),%eax
    1543:       41 89 04 24             mov    %eax,(%r12)
    1547:       49 83 c4 04             add    $0x4,%r12
    154b:       4c 39 e1                cmp    %r12,%rcx
    154e:       75 ed                   jne    153d <phase_6+0x7f>
    1550:       be 00 00 00 00          mov    $0x0,%esi
    1555:       eb 1a                   jmp    1571 <phase_6+0xb3>
    1557:       48 8b 52 08             mov    0x8(%rdx),%rdx
    155b:       83 c0 01                add    $0x1,%eax
    155e:       39 c8                   cmp    %ecx,%eax
    1560:       75 f5                   jne    1557 <phase_6+0x99>
    1562:       48 89 54 f4 20          mov    %rdx,0x20(%rsp,%rsi,8)
    1567:       48 83 c6 01             add    $0x1,%rsi
    156b:       48 83 fe 06             cmp    $0x6,%rsi
    156f:       74 16                   je     1587 <phase_6+0xc9>
    1571:       8b 0c b4                mov    (%rsp,%rsi,4),%ecx
    1574:       b8 01 00 00 00          mov    $0x1,%eax
    1579:       48 8d 15 b0 2c 20 00    lea    0x202cb0(%rip),%rdx        # 204230 <node1>
    1580:       83 f9 01                cmp    $0x1,%ecx
    1583:       7f d2                   jg     1557 <phase_6+0x99>
    1585:       eb db                   jmp    1562 <phase_6+0xa4>
    1587:       48 8b 5c 24 20          mov    0x20(%rsp),%rbx
    158c:       48 8b 44 24 28          mov    0x28(%rsp),%rax
    1591:       48 89 43 08             mov    %rax,0x8(%rbx)
    1595:       48 8b 54 24 30          mov    0x30(%rsp),%rdx
    159a:       48 89 50 08             mov    %rdx,0x8(%rax)
    159e:       48 8b 44 24 38          mov    0x38(%rsp),%rax
    15a3:       48 89 42 08             mov    %rax,0x8(%rdx)
    15a7:       48 8b 54 24 40          mov    0x40(%rsp),%rdx
    15ac:       48 89 50 08             mov    %rdx,0x8(%rax)
    15b0:       48 8b 44 24 48          mov    0x48(%rsp),%rax
    15b5:       48 89 42 08             mov    %rax,0x8(%rdx)
    15b9:       48 c7 40 08 00 00 00    movq   $0x0,0x8(%rax)
    15c0:       00
    15c1:       bd 05 00 00 00          mov    $0x5,%ebp
    15c6:       eb 09                   jmp    15d1 <phase_6+0x113>
    15c8:       48 8b 5b 08             mov    0x8(%rbx),%rbx
    15cc:       83 ed 01                sub    $0x1,%ebp
    15cf:       74 11                   je     15e2 <phase_6+0x124>
    15d1:       48 8b 43 08             mov    0x8(%rbx),%rax
    15d5:       8b 00                   mov    (%rax),%eax
    15d7:       39 03                   cmp    %eax,(%rbx)
    15d9:       7d ed                   jge    15c8 <phase_6+0x10a>
    15db:       e8 5e 04 00 00          callq  1a3e <explode_bomb>
    15e0:       eb e6                   jmp    15c8 <phase_6+0x10a>
    15e2:       48 8b 44 24 58          mov    0x58(%rsp),%rax
    15e7:       64 48 33 04 25 28 00    xor    %fs:0x28,%rax
    15ee:       00 00
    15f0:       75 0d                   jne    15ff <phase_6+0x141>
    15f2:       48 83 c4 60             add    $0x60,%rsp
    15f6:       5b                      pop    %rbx
    15f7:       5d                      pop    %rbp
    15f8:       41 5c                   pop    %r12
    15fa:       41 5d                   pop    %r13
    15fc:       41 5e                   pop    %r14
    15fe:       c3                      retq
    15ff:       e8 8c f8 ff ff          callq  e90 <__stack_chk_fail@plt>

0000000000001604 <fun7>:
    1604:       48 85 ff                test   %rdi,%rdi
    1607:       74 34                   je     163d <fun7+0x39>
    1609:       48 83 ec 08             sub    $0x8,%rsp
    160d:       8b 17                   mov    (%rdi),%edx
    160f:       39 f2                   cmp    %esi,%edx
    1611:       7f 0e                   jg     1621 <fun7+0x1d>
    1613:       b8 00 00 00 00          mov    $0x0,%eax
    1618:       39 f2                   cmp    %esi,%edx
    161a:       75 12                   jne    162e <fun7+0x2a>
    161c:       48 83 c4 08             add    $0x8,%rsp
    1620:       c3                      retq
    1621:       48 8b 7f 08             mov    0x8(%rdi),%rdi
    1625:       e8 da ff ff ff          callq  1604 <fun7>
    162a:       01 c0                   add    %eax,%eax
    162c:       eb ee                   jmp    161c <fun7+0x18>
    162e:       48 8b 7f 10             mov    0x10(%rdi),%rdi
    1632:       e8 cd ff ff ff          callq  1604 <fun7>
    1637:       8d 44 00 01             lea    0x1(%rax,%rax,1),%eax
    163b:       eb df                   jmp    161c <fun7+0x18>
    163d:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    1642:       c3                      retq

0000000000001643 <secret_phase>:
    1643:       53                      push   %rbx
    1644:       e8 72 04 00 00          callq  1abb <read_line>
    1649:       ba 0a 00 00 00          mov    $0xa,%edx
    164e:       be 00 00 00 00          mov    $0x0,%esi
    1653:       48 89 c7                mov    %rax,%rdi
    1656:       e8 b5 f8 ff ff          callq  f10 <strtol@plt>
    165b:       48 89 c3                mov    %rax,%rbx
    165e:       8d 40 ff                lea    -0x1(%rax),%eax
    1661:       3d e8 03 00 00          cmp    $0x3e8,%eax
    1666:       77 2b                   ja     1693 <secret_phase+0x50>
    1668:       89 de                   mov    %ebx,%esi
    166a:       48 8d 3d df 2a 20 00    lea    0x202adf(%rip),%rdi        # 204150 <n1>
    1671:       e8 8e ff ff ff          callq  1604 <fun7>
    1676:       83 f8 04                cmp    $0x4,%eax
    1679:       74 05                   je     1680 <secret_phase+0x3d>
    167b:       e8 be 03 00 00          callq  1a3e <explode_bomb>
    1680:       48 8d 3d 19 14 00 00    lea    0x1419(%rip),%rdi        # 2aa0 <_IO_stdin_used+0x180>
    1687:       e8 e4 f7 ff ff          callq  e70 <puts@plt>
    168c:       e8 6e 05 00 00          callq  1bff <phase_defused>
    1691:       5b                      pop    %rbx
    1692:       c3                      retq
    1693:       e8 a6 03 00 00          callq  1a3e <explode_bomb>
    1698:       eb ce                   jmp    1668 <secret_phase+0x25>

000000000000169a <sig_handler>:
    169a:       48 83 ec 08             sub    $0x8,%rsp
    169e:       48 8d 3d 9b 14 00 00    lea    0x149b(%rip),%rdi        # 2b40 <array.3417+0x40>
    16a5:       e8 c6 f7 ff ff          callq  e70 <puts@plt>
    16aa:       bf 03 00 00 00          mov    $0x3,%edi
    16af:       e8 ec f8 ff ff          callq  fa0 <sleep@plt>
    16b4:       48 8d 35 4e 16 00 00    lea    0x164e(%rip),%rsi        # 2d09 <array.3417+0x209>
    16bb:       bf 01 00 00 00          mov    $0x1,%edi
    16c0:       b8 00 00 00 00          mov    $0x0,%eax
    16c5:       e8 76 f8 ff ff          callq  f40 <__printf_chk@plt>
    16ca:       48 8b 3d af 2f 20 00    mov    0x202faf(%rip),%rdi        # 204680 <stdout@@GLIBC_2.2.5>
    16d1:       e8 4a f8 ff ff          callq  f20 <fflush@plt>
    16d6:       bf 01 00 00 00          mov    $0x1,%edi
    16db:       e8 c0 f8 ff ff          callq  fa0 <sleep@plt>
    16e0:       48 8d 3d 2a 16 00 00    lea    0x162a(%rip),%rdi        # 2d11 <array.3417+0x211>
    16e7:       e8 84 f7 ff ff          callq  e70 <puts@plt>
    16ec:       bf 10 00 00 00          mov    $0x10,%edi
    16f1:       e8 7a f8 ff ff          callq  f70 <exit@plt>

00000000000016f6 <invalid_phase>:
    16f6:       48 83 ec 08             sub    $0x8,%rsp
    16fa:       48 89 fa                mov    %rdi,%rdx
    16fd:       48 8d 35 15 16 00 00    lea    0x1615(%rip),%rsi        # 2d19 <array.3417+0x219>
    1704:       bf 01 00 00 00          mov    $0x1,%edi
    1709:       b8 00 00 00 00          mov    $0x0,%eax
    170e:       e8 2d f8 ff ff          callq  f40 <__printf_chk@plt>
    1713:       bf 08 00 00 00          mov    $0x8,%edi
    1718:       e8 53 f8 ff ff          callq  f70 <exit@plt>

000000000000171d <string_length>:
    171d:       80 3f 00                cmpb   $0x0,(%rdi)
    1720:       74 12                   je     1734 <string_length+0x17>
    1722:       48 89 fa                mov    %rdi,%rdx
    1725:       48 83 c2 01             add    $0x1,%rdx
    1729:       89 d0                   mov    %edx,%eax
    172b:       29 f8                   sub    %edi,%eax
    172d:       80 3a 00                cmpb   $0x0,(%rdx)
    1730:       75 f3                   jne    1725 <string_length+0x8>
    1732:       f3 c3                   repz retq
    1734:       b8 00 00 00 00          mov    $0x0,%eax
    1739:       c3                      retq

000000000000173a <strings_not_equal>:
    173a:       41 54                   push   %r12
    173c:       55                      push   %rbp
    173d:       53                      push   %rbx
    173e:       48 89 fb                mov    %rdi,%rbx
    1741:       48 89 f5                mov    %rsi,%rbp
    1744:       e8 d4 ff ff ff          callq  171d <string_length>
    1749:       41 89 c4                mov    %eax,%r12d
    174c:       48 89 ef                mov    %rbp,%rdi
    174f:       e8 c9 ff ff ff          callq  171d <string_length>
    1754:       ba 01 00 00 00          mov    $0x1,%edx
    1759:       41 39 c4                cmp    %eax,%r12d
    175c:       74 07                   je     1765 <strings_not_equal+0x2b>
    175e:       89 d0                   mov    %edx,%eax
    1760:       5b                      pop    %rbx
    1761:       5d                      pop    %rbp
    1762:       41 5c                   pop    %r12
    1764:       c3                      retq
    1765:       0f b6 03                movzbl (%rbx),%eax
    1768:       84 c0                   test   %al,%al
    176a:       74 27                   je     1793 <strings_not_equal+0x59>
    176c:       3a 45 00                cmp    0x0(%rbp),%al
    176f:       75 29                   jne    179a <strings_not_equal+0x60>
    1771:       48 83 c3 01             add    $0x1,%rbx
    1775:       48 83 c5 01             add    $0x1,%rbp
    1779:       0f b6 03                movzbl (%rbx),%eax
    177c:       84 c0                   test   %al,%al
    177e:       74 0c                   je     178c <strings_not_equal+0x52>
    1780:       38 45 00                cmp    %al,0x0(%rbp)
    1783:       74 ec                   je     1771 <strings_not_equal+0x37>
    1785:       ba 01 00 00 00          mov    $0x1,%edx
    178a:       eb d2                   jmp    175e <strings_not_equal+0x24>
    178c:       ba 00 00 00 00          mov    $0x0,%edx
    1791:       eb cb                   jmp    175e <strings_not_equal+0x24>
    1793:       ba 00 00 00 00          mov    $0x0,%edx
    1798:       eb c4                   jmp    175e <strings_not_equal+0x24>
    179a:       ba 01 00 00 00          mov    $0x1,%edx
    179f:       eb bd                   jmp    175e <strings_not_equal+0x24>

00000000000017a1 <initialize_bomb>:
    17a1:       55                      push   %rbp
    17a2:       53                      push   %rbx
    17a3:       48 81 ec 58 20 00 00    sub    $0x2058,%rsp
    17aa:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    17b1:       00 00
    17b3:       48 89 84 24 48 20 00    mov    %rax,0x2048(%rsp)
    17ba:       00
    17bb:       31 c0                   xor    %eax,%eax
    17bd:       48 8d 35 d6 fe ff ff    lea    -0x12a(%rip),%rsi        # 169a <sig_handler>
    17c4:       bf 02 00 00 00          mov    $0x2,%edi
    17c9:       e8 12 f7 ff ff          callq  ee0 <signal@plt>
    17ce:       48 89 e7                mov    %rsp,%rdi
    17d1:       be 40 00 00 00          mov    $0x40,%esi
    17d6:       e8 85 f7 ff ff          callq  f60 <gethostname@plt>
    17db:       85 c0                   test   %eax,%eax
    17dd:       75 45                   jne    1824 <initialize_bomb+0x83>
    17df:       48 8b 3d 9a 2a 20 00    mov    0x202a9a(%rip),%rdi        # 204280 <host_table>
    17e6:       48 8d 1d 9b 2a 20 00    lea    0x202a9b(%rip),%rbx        # 204288 <host_table+0x8>
    17ed:       48 89 e5                mov    %rsp,%rbp
    17f0:       48 85 ff                test   %rdi,%rdi
    17f3:       74 19                   je     180e <initialize_bomb+0x6d>
    17f5:       48 89 ee                mov    %rbp,%rsi
    17f8:       e8 43 f6 ff ff          callq  e40 <strcasecmp@plt>
    17fd:       85 c0                   test   %eax,%eax
    17ff:       74 5e                   je     185f <initialize_bomb+0xbe>
    1801:       48 83 c3 08             add    $0x8,%rbx
    1805:       48 8b 7b f8             mov    -0x8(%rbx),%rdi
    1809:       48 85 ff                test   %rdi,%rdi
    180c:       75 e7                   jne    17f5 <initialize_bomb+0x54>
    180e:       48 8d 3d 9b 13 00 00    lea    0x139b(%rip),%rdi        # 2bb0 <array.3417+0xb0>
    1815:       e8 56 f6 ff ff          callq  e70 <puts@plt>
    181a:       bf 08 00 00 00          mov    $0x8,%edi
    181f:       e8 4c f7 ff ff          callq  f70 <exit@plt>
    1824:       48 8d 3d 4d 13 00 00    lea    0x134d(%rip),%rdi        # 2b78 <array.3417+0x78>
    182b:       e8 40 f6 ff ff          callq  e70 <puts@plt>
    1830:       bf 08 00 00 00          mov    $0x8,%edi
    1835:       e8 36 f7 ff ff          callq  f70 <exit@plt>
    183a:       48 8d 54 24 40          lea    0x40(%rsp),%rdx
    183f:       48 8d 35 e4 14 00 00    lea    0x14e4(%rip),%rsi        # 2d2a <array.3417+0x22a>
    1846:       bf 01 00 00 00          mov    $0x1,%edi
    184b:       b8 00 00 00 00          mov    $0x0,%eax
    1850:       e8 eb f6 ff ff          callq  f40 <__printf_chk@plt>
    1855:       bf 08 00 00 00          mov    $0x8,%edi
    185a:       e8 11 f7 ff ff          callq  f70 <exit@plt>
    185f:       48 8d 7c 24 40          lea    0x40(%rsp),%rdi
    1864:       e8 b2 0d 00 00          callq  261b <init_driver>
    1869:       85 c0                   test   %eax,%eax
    186b:       78 cd                   js     183a <initialize_bomb+0x99>
    186d:       48 8b 84 24 48 20 00    mov    0x2048(%rsp),%rax
    1874:       00
    1875:       64 48 33 04 25 28 00    xor    %fs:0x28,%rax
    187c:       00 00
    187e:       75 0a                   jne    188a <initialize_bomb+0xe9>
    1880:       48 81 c4 58 20 00 00    add    $0x2058,%rsp
    1887:       5b                      pop    %rbx
    1888:       5d                      pop    %rbp
    1889:       c3                      retq
    188a:       e8 01 f6 ff ff          callq  e90 <__stack_chk_fail@plt>

000000000000188f <initialize_bomb_solve>:
    188f:       f3 c3                   repz retq

0000000000001891 <blank_line>:
    1891:       55                      push   %rbp
    1892:       53                      push   %rbx
    1893:       48 83 ec 08             sub    $0x8,%rsp
    1897:       48 89 fd                mov    %rdi,%rbp
    189a:       0f b6 5d 00             movzbl 0x0(%rbp),%ebx
    189e:       84 db                   test   %bl,%bl
    18a0:       74 1e                   je     18c0 <blank_line+0x2f>
    18a2:       e8 09 f7 ff ff          callq  fb0 <__ctype_b_loc@plt>
    18a7:       48 83 c5 01             add    $0x1,%rbp
    18ab:       48 0f be db             movsbq %bl,%rbx
    18af:       48 8b 00                mov    (%rax),%rax
    18b2:       f6 44 58 01 20          testb  $0x20,0x1(%rax,%rbx,2)
    18b7:       75 e1                   jne    189a <blank_line+0x9>
    18b9:       b8 00 00 00 00          mov    $0x0,%eax
    18be:       eb 05                   jmp    18c5 <blank_line+0x34>
    18c0:       b8 01 00 00 00          mov    $0x1,%eax
    18c5:       48 83 c4 08             add    $0x8,%rsp
    18c9:       5b                      pop    %rbx
    18ca:       5d                      pop    %rbp
    18cb:       c3                      retq

00000000000018cc <skip>:
    18cc:       55                      push   %rbp
    18cd:       53                      push   %rbx
    18ce:       48 83 ec 08             sub    $0x8,%rsp
    18d2:       48 8d 2d e7 2d 20 00    lea    0x202de7(%rip),%rbp        # 2046c0 <input_strings>
    18d9:       48 63 05 cc 2d 20 00    movslq 0x202dcc(%rip),%rax        # 2046ac <num_input_strings>
    18e0:       48 8d 3c 80             lea    (%rax,%rax,4),%rdi
    18e4:       48 c1 e7 04             shl    $0x4,%rdi
    18e8:       48 01 ef                add    %rbp,%rdi
    18eb:       48 8b 15 be 2d 20 00    mov    0x202dbe(%rip),%rdx        # 2046b0 <infile>
    18f2:       be 50 00 00 00          mov    $0x50,%esi
    18f7:       e8 d4 f5 ff ff          callq  ed0 <fgets@plt>
    18fc:       48 89 c3                mov    %rax,%rbx
    18ff:       48 85 c0                test   %rax,%rax
    1902:       74 0c                   je     1910 <skip+0x44>
    1904:       48 89 c7                mov    %rax,%rdi
    1907:       e8 85 ff ff ff          callq  1891 <blank_line>
    190c:       85 c0                   test   %eax,%eax
    190e:       75 c9                   jne    18d9 <skip+0xd>
    1910:       48 89 d8                mov    %rbx,%rax
    1913:       48 83 c4 08             add    $0x8,%rsp
    1917:       5b                      pop    %rbx
    1918:       5d                      pop    %rbp
    1919:       c3                      retq

000000000000191a <send_msg>:
    191a:       53                      push   %rbx
    191b:       48 81 ec 10 40 00 00    sub    $0x4010,%rsp
    1922:       41 89 f8                mov    %edi,%r8d
    1925:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    192c:       00 00
    192e:       48 89 84 24 08 40 00    mov    %rax,0x4008(%rsp)
    1935:       00
    1936:       31 c0                   xor    %eax,%eax
    1938:       8b 35 6e 2d 20 00       mov    0x202d6e(%rip),%esi        # 2046ac <num_input_strings>
    193e:       8d 46 ff                lea    -0x1(%rsi),%eax
    1941:       48 98                   cltq
    1943:       48 8d 14 80             lea    (%rax,%rax,4),%rdx
    1947:       48 c1 e2 04             shl    $0x4,%rdx
    194b:       48 8d 05 6e 2d 20 00    lea    0x202d6e(%rip),%rax        # 2046c0 <input_strings>
    1952:       48 01 c2                add    %rax,%rdx
    1955:       48 c7 c1 ff ff ff ff    mov    $0xffffffffffffffff,%rcx
    195c:       b8 00 00 00 00          mov    $0x0,%eax
    1961:       48 89 d7                mov    %rdx,%rdi
    1964:       f2 ae                   repnz scas %es:(%rdi),%al
    1966:       48 89 c8                mov    %rcx,%rax
    1969:       48 f7 d0                not    %rax
    196c:       48 83 c0 63             add    $0x63,%rax
    1970:       48 3d 00 20 00 00       cmp    $0x2000,%rax
    1976:       0f 87 86 00 00 00       ja     1a02 <send_msg+0xe8>
    197c:       45 85 c0                test   %r8d,%r8d
    197f:       4c 8d 0d be 13 00 00    lea    0x13be(%rip),%r9        # 2d44 <array.3417+0x244>
    1986:       48 8d 05 bf 13 00 00    lea    0x13bf(%rip),%rax        # 2d4c <array.3417+0x24c>
    198d:       4c 0f 44 c8             cmove  %rax,%r9
    1991:       48 89 e3                mov    %rsp,%rbx
    1994:       52                      push   %rdx
    1995:       56                      push   %rsi
    1996:       44 8b 05 a7 27 20 00    mov    0x2027a7(%rip),%r8d        # 204144 <bomb_id>
    199d:       48 8d 0d b1 13 00 00    lea    0x13b1(%rip),%rcx        # 2d55 <array.3417+0x255>
    19a4:       ba 00 20 00 00          mov    $0x2000,%edx
    19a9:       be 01 00 00 00          mov    $0x1,%esi
    19ae:       48 89 df                mov    %rbx,%rdi
    19b1:       b8 00 00 00 00          mov    $0x0,%eax
    19b6:       e8 05 f6 ff ff          callq  fc0 <__sprintf_chk@plt>
    19bb:       4c 8d 84 24 10 20 00    lea    0x2010(%rsp),%r8
    19c2:       00
    19c3:       b9 00 00 00 00          mov    $0x0,%ecx
    19c8:       48 89 da                mov    %rbx,%rdx
    19cb:       48 8d 35 4e 27 20 00    lea    0x20274e(%rip),%rsi        # 204120 <user_password>
    19d2:       48 8d 3d 5f 27 20 00    lea    0x20275f(%rip),%rdi        # 204138 <userid>
    19d9:       e8 46 0e 00 00          callq  2824 <driver_post>
    19de:       48 83 c4 10             add    $0x10,%rsp
    19e2:       85 c0                   test   %eax,%eax
    19e4:       78 3c                   js     1a22 <send_msg+0x108>
    19e6:       48 8b 84 24 08 40 00    mov    0x4008(%rsp),%rax
    19ed:       00
    19ee:       64 48 33 04 25 28 00    xor    %fs:0x28,%rax
    19f5:       00 00
    19f7:       75 40                   jne    1a39 <send_msg+0x11f>
    19f9:       48 81 c4 10 40 00 00    add    $0x4010,%rsp
    1a00:       5b                      pop    %rbx
    1a01:       c3                      retq
    1a02:       48 8d 35 df 11 00 00    lea    0x11df(%rip),%rsi        # 2be8 <array.3417+0xe8>
    1a09:       bf 01 00 00 00          mov    $0x1,%edi
    1a0e:       b8 00 00 00 00          mov    $0x0,%eax
    1a13:       e8 28 f5 ff ff          callq  f40 <__printf_chk@plt>
    1a18:       bf 08 00 00 00          mov    $0x8,%edi
    1a1d:       e8 4e f5 ff ff          callq  f70 <exit@plt>
    1a22:       48 8d bc 24 00 20 00    lea    0x2000(%rsp),%rdi
    1a29:       00
    1a2a:       e8 41 f4 ff ff          callq  e70 <puts@plt>
    1a2f:       bf 00 00 00 00          mov    $0x0,%edi
    1a34:       e8 37 f5 ff ff          callq  f70 <exit@plt>
    1a39:       e8 52 f4 ff ff          callq  e90 <__stack_chk_fail@plt>

0000000000001a3e <explode_bomb>:
    1a3e:       48 83 ec 08             sub    $0x8,%rsp
    1a42:       48 8d 3d 18 13 00 00    lea    0x1318(%rip),%rdi        # 2d61 <array.3417+0x261>
    1a49:       e8 22 f4 ff ff          callq  e70 <puts@plt>
    1a4e:       48 8d 3d 15 13 00 00    lea    0x1315(%rip),%rdi        # 2d6a <array.3417+0x26a>
    1a55:       e8 16 f4 ff ff          callq  e70 <puts@plt>
    1a5a:       bf 00 00 00 00          mov    $0x0,%edi
    1a5f:       e8 b6 fe ff ff          callq  191a <send_msg>
    1a64:       48 8d 3d a5 11 00 00    lea    0x11a5(%rip),%rdi        # 2c10 <array.3417+0x110>
    1a6b:       e8 00 f4 ff ff          callq  e70 <puts@plt>
    1a70:       bf 08 00 00 00          mov    $0x8,%edi
    1a75:       e8 f6 f4 ff ff          callq  f70 <exit@plt>

0000000000001a7a <read_six_numbers>:
    1a7a:       48 83 ec 08             sub    $0x8,%rsp
    1a7e:       48 89 f2                mov    %rsi,%rdx
    1a81:       48 8d 4e 04             lea    0x4(%rsi),%rcx
    1a85:       48 8d 46 14             lea    0x14(%rsi),%rax
    1a89:       50                      push   %rax
    1a8a:       48 8d 46 10             lea    0x10(%rsi),%rax
    1a8e:       50                      push   %rax
    1a8f:       4c 8d 4e 0c             lea    0xc(%rsi),%r9
    1a93:       4c 8d 46 08             lea    0x8(%rsi),%r8
    1a97:       48 8d 35 e3 12 00 00    lea    0x12e3(%rip),%rsi        # 2d81 <array.3417+0x281>
    1a9e:       b8 00 00 00 00          mov    $0x0,%eax
    1aa3:       e8 88 f4 ff ff          callq  f30 <__isoc99_sscanf@plt>
    1aa8:       48 83 c4 10             add    $0x10,%rsp
    1aac:       83 f8 05                cmp    $0x5,%eax
    1aaf:       7e 05                   jle    1ab6 <read_six_numbers+0x3c>
    1ab1:       48 83 c4 08             add    $0x8,%rsp
    1ab5:       c3                      retq
    1ab6:       e8 83 ff ff ff          callq  1a3e <explode_bomb>

0000000000001abb <read_line>:
    1abb:       48 83 ec 08             sub    $0x8,%rsp
    1abf:       b8 00 00 00 00          mov    $0x0,%eax
    1ac4:       e8 03 fe ff ff          callq  18cc <skip>
    1ac9:       48 85 c0                test   %rax,%rax
    1acc:       74 6f                   je     1b3d <read_line+0x82>
    1ace:       8b 35 d8 2b 20 00       mov    0x202bd8(%rip),%esi        # 2046ac <num_input_strings>
    1ad4:       48 63 c6                movslq %esi,%rax
    1ad7:       48 8d 14 80             lea    (%rax,%rax,4),%rdx
    1adb:       48 c1 e2 04             shl    $0x4,%rdx
    1adf:       48 8d 05 da 2b 20 00    lea    0x202bda(%rip),%rax        # 2046c0 <input_strings>
    1ae6:       48 01 c2                add    %rax,%rdx
    1ae9:       48 c7 c1 ff ff ff ff    mov    $0xffffffffffffffff,%rcx
    1af0:       b8 00 00 00 00          mov    $0x0,%eax
    1af5:       48 89 d7                mov    %rdx,%rdi
    1af8:       f2 ae                   repnz scas %es:(%rdi),%al
    1afa:       48 f7 d1                not    %rcx
    1afd:       48 83 e9 01             sub    $0x1,%rcx
    1b01:       83 f9 4e                cmp    $0x4e,%ecx
    1b04:       0f 8f ab 00 00 00       jg     1bb5 <read_line+0xfa>
    1b0a:       83 e9 01                sub    $0x1,%ecx
    1b0d:       48 63 c9                movslq %ecx,%rcx
    1b10:       48 63 c6                movslq %esi,%rax
    1b13:       48 8d 04 80             lea    (%rax,%rax,4),%rax
    1b17:       48 c1 e0 04             shl    $0x4,%rax
    1b1b:       48 89 c7                mov    %rax,%rdi
    1b1e:       48 8d 05 9b 2b 20 00    lea    0x202b9b(%rip),%rax        # 2046c0 <input_strings>
    1b25:       48 01 f8                add    %rdi,%rax
    1b28:       c6 04 08 00             movb   $0x0,(%rax,%rcx,1)
    1b2c:       83 c6 01                add    $0x1,%esi
    1b2f:       89 35 77 2b 20 00       mov    %esi,0x202b77(%rip)        # 2046ac <num_input_strings>
    1b35:       48 89 d0                mov    %rdx,%rax
    1b38:       48 83 c4 08             add    $0x8,%rsp
    1b3c:       c3                      retq
    1b3d:       48 8b 05 4c 2b 20 00    mov    0x202b4c(%rip),%rax        # 204690 <stdin@@GLIBC_2.2.5>
    1b44:       48 39 05 65 2b 20 00    cmp    %rax,0x202b65(%rip)        # 2046b0 <infile>
    1b4b:       74 1b                   je     1b68 <read_line+0xad>
    1b4d:       48 8d 3d 5d 12 00 00    lea    0x125d(%rip),%rdi        # 2db1 <array.3417+0x2b1>
    1b54:       e8 d7 f2 ff ff          callq  e30 <getenv@plt>
    1b59:       48 85 c0                test   %rax,%rax
    1b5c:       74 20                   je     1b7e <read_line+0xc3>
    1b5e:       bf 00 00 00 00          mov    $0x0,%edi
    1b63:       e8 08 f4 ff ff          callq  f70 <exit@plt>
    1b68:       48 8d 3d 24 12 00 00    lea    0x1224(%rip),%rdi        # 2d93 <array.3417+0x293>
    1b6f:       e8 fc f2 ff ff          callq  e70 <puts@plt>
    1b74:       bf 08 00 00 00          mov    $0x8,%edi
    1b79:       e8 f2 f3 ff ff          callq  f70 <exit@plt>
    1b7e:       48 8b 05 0b 2b 20 00    mov    0x202b0b(%rip),%rax        # 204690 <stdin@@GLIBC_2.2.5>
    1b85:       48 89 05 24 2b 20 00    mov    %rax,0x202b24(%rip)        # 2046b0 <infile>
    1b8c:       b8 00 00 00 00          mov    $0x0,%eax
    1b91:       e8 36 fd ff ff          callq  18cc <skip>
    1b96:       48 85 c0                test   %rax,%rax
    1b99:       0f 85 2f ff ff ff       jne    1ace <read_line+0x13>
    1b9f:       48 8d 3d ed 11 00 00    lea    0x11ed(%rip),%rdi        # 2d93 <array.3417+0x293>
    1ba6:       e8 c5 f2 ff ff          callq  e70 <puts@plt>
    1bab:       bf 00 00 00 00          mov    $0x0,%edi
    1bb0:       e8 bb f3 ff ff          callq  f70 <exit@plt>
    1bb5:       48 8d 3d 00 12 00 00    lea    0x1200(%rip),%rdi        # 2dbc <array.3417+0x2bc>
    1bbc:       e8 af f2 ff ff          callq  e70 <puts@plt>
    1bc1:       8b 05 e5 2a 20 00       mov    0x202ae5(%rip),%eax        # 2046ac <num_input_strings>
    1bc7:       8d 50 01                lea    0x1(%rax),%edx
    1bca:       89 15 dc 2a 20 00       mov    %edx,0x202adc(%rip)        # 2046ac <num_input_strings>
    1bd0:       48 98                   cltq
    1bd2:       48 6b c0 50             imul   $0x50,%rax,%rax
    1bd6:       48 8d 15 e3 2a 20 00    lea    0x202ae3(%rip),%rdx        # 2046c0 <input_strings>
    1bdd:       48 be 2a 2a 2a 74 72    movabs $0x636e7572742a2a2a,%rsi
    1be4:       75 6e 63
    1be7:       48 bf 61 74 65 64 2a    movabs $0x2a2a2a64657461,%rdi
    1bee:       2a 2a 00
    1bf1:       48 89 34 02             mov    %rsi,(%rdx,%rax,1)
    1bf5:       48 89 7c 02 08          mov    %rdi,0x8(%rdx,%rax,1)
    1bfa:       e8 3f fe ff ff          callq  1a3e <explode_bomb>

0000000000001bff <phase_defused>:
    1bff:       48 83 ec 78             sub    $0x78,%rsp
    1c03:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    1c0a:       00 00
    1c0c:       48 89 44 24 68          mov    %rax,0x68(%rsp)
    1c11:       31 c0                   xor    %eax,%eax
    1c13:       bf 01 00 00 00          mov    $0x1,%edi
    1c18:       e8 fd fc ff ff          callq  191a <send_msg>
    1c1d:       83 3d 88 2a 20 00 06    cmpl   $0x6,0x202a88(%rip)        # 2046ac <num_input_strings>
    1c24:       74 19                   je     1c3f <phase_defused+0x40>
    1c26:       48 8b 44 24 68          mov    0x68(%rsp),%rax
    1c2b:       64 48 33 04 25 28 00    xor    %fs:0x28,%rax
    1c32:       00 00
    1c34:       0f 85 84 00 00 00       jne    1cbe <phase_defused+0xbf>
    1c3a:       48 83 c4 78             add    $0x78,%rsp
    1c3e:       c3                      retq
    1c3f:       48 8d 4c 24 0c          lea    0xc(%rsp),%rcx
    1c44:       48 8d 54 24 08          lea    0x8(%rsp),%rdx
    1c49:       4c 8d 44 24 10          lea    0x10(%rsp),%r8
    1c4e:       48 8d 35 82 11 00 00    lea    0x1182(%rip),%rsi        # 2dd7 <array.3417+0x2d7>
    1c55:       48 8d 3d 54 2b 20 00    lea    0x202b54(%rip),%rdi        # 2047b0 <input_strings+0xf0>
    1c5c:       b8 00 00 00 00          mov    $0x0,%eax
    1c61:       e8 ca f2 ff ff          callq  f30 <__isoc99_sscanf@plt>
    1c66:       83 f8 03                cmp    $0x3,%eax
    1c69:       74 1a                   je     1c85 <phase_defused+0x86>
    1c6b:       48 8d 3d 26 10 00 00    lea    0x1026(%rip),%rdi        # 2c98 <array.3417+0x198>
    1c72:       e8 f9 f1 ff ff          callq  e70 <puts@plt>
    1c77:       48 8d 3d 4a 10 00 00    lea    0x104a(%rip),%rdi        # 2cc8 <array.3417+0x1c8>
    1c7e:       e8 ed f1 ff ff          callq  e70 <puts@plt>
    1c83:       eb a1                   jmp    1c26 <phase_defused+0x27>
    1c85:       48 8d 7c 24 10          lea    0x10(%rsp),%rdi
    1c8a:       48 8d 35 4f 11 00 00    lea    0x114f(%rip),%rsi        # 2de0 <array.3417+0x2e0>
    1c91:       e8 a4 fa ff ff          callq  173a <strings_not_equal>
    1c96:       85 c0                   test   %eax,%eax
    1c98:       75 d1                   jne    1c6b <phase_defused+0x6c>
    1c9a:       48 8d 3d 97 0f 00 00    lea    0xf97(%rip),%rdi        # 2c38 <array.3417+0x138>
    1ca1:       e8 ca f1 ff ff          callq  e70 <puts@plt>
    1ca6:       48 8d 3d b3 0f 00 00    lea    0xfb3(%rip),%rdi        # 2c60 <array.3417+0x160>
    1cad:       e8 be f1 ff ff          callq  e70 <puts@plt>
    1cb2:       b8 00 00 00 00          mov    $0x0,%eax
    1cb7:       e8 87 f9 ff ff          callq  1643 <secret_phase>
    1cbc:       eb ad                   jmp    1c6b <phase_defused+0x6c>
    1cbe:       e8 cd f1 ff ff          callq  e90 <__stack_chk_fail@plt>

0000000000001cc3 <sigalrm_handler>:
    1cc3:       48 83 ec 08             sub    $0x8,%rsp
    1cc7:       b9 00 00 00 00          mov    $0x0,%ecx
    1ccc:       48 8d 15 25 11 00 00    lea    0x1125(%rip),%rdx        # 2df8 <array.3417+0x2f8>
    1cd3:       be 01 00 00 00          mov    $0x1,%esi
    1cd8:       48 8b 3d c1 29 20 00    mov    0x2029c1(%rip),%rdi        # 2046a0 <stderr@@GLIBC_2.2.5>
    1cdf:       b8 00 00 00 00          mov    $0x0,%eax
    1ce4:       e8 a7 f2 ff ff          callq  f90 <__fprintf_chk@plt>
    1ce9:       bf 01 00 00 00          mov    $0x1,%edi
    1cee:       e8 7d f2 ff ff          callq  f70 <exit@plt>

0000000000001cf3 <rio_readlineb>:
    1cf3:       41 56                   push   %r14
    1cf5:       41 55                   push   %r13
    1cf7:       41 54                   push   %r12
    1cf9:       55                      push   %rbp
    1cfa:       53                      push   %rbx
    1cfb:       48 89 fb                mov    %rdi,%rbx
    1cfe:       49 89 f4                mov    %rsi,%r12
    1d01:       49 89 d6                mov    %rdx,%r14
    1d04:       41 bd 01 00 00 00       mov    $0x1,%r13d
    1d0a:       48 8d 6f 10             lea    0x10(%rdi),%rbp
    1d0e:       48 83 fa 01             cmp    $0x1,%rdx
    1d12:       77 0c                   ja     1d20 <rio_readlineb+0x2d>
    1d14:       eb 60                   jmp    1d76 <rio_readlineb+0x83>
    1d16:       e8 35 f1 ff ff          callq  e50 <__errno_location@plt>
    1d1b:       83 38 04                cmpl   $0x4,(%rax)
    1d1e:       75 67                   jne    1d87 <rio_readlineb+0x94>
    1d20:       8b 43 04                mov    0x4(%rbx),%eax
    1d23:       85 c0                   test   %eax,%eax
    1d25:       7f 20                   jg     1d47 <rio_readlineb+0x54>
    1d27:       ba 00 20 00 00          mov    $0x2000,%edx
    1d2c:       48 89 ee                mov    %rbp,%rsi
    1d2f:       8b 3b                   mov    (%rbx),%edi
    1d31:       e8 8a f1 ff ff          callq  ec0 <read@plt>
    1d36:       89 43 04                mov    %eax,0x4(%rbx)
    1d39:       85 c0                   test   %eax,%eax
    1d3b:       78 d9                   js     1d16 <rio_readlineb+0x23>
    1d3d:       85 c0                   test   %eax,%eax
    1d3f:       74 4f                   je     1d90 <rio_readlineb+0x9d>
    1d41:       48 89 6b 08             mov    %rbp,0x8(%rbx)
    1d45:       eb d9                   jmp    1d20 <rio_readlineb+0x2d>
    1d47:       48 8b 53 08             mov    0x8(%rbx),%rdx
    1d4b:       0f b6 0a                movzbl (%rdx),%ecx
    1d4e:       48 83 c2 01             add    $0x1,%rdx
    1d52:       48 89 53 08             mov    %rdx,0x8(%rbx)
    1d56:       83 e8 01                sub    $0x1,%eax
    1d59:       89 43 04                mov    %eax,0x4(%rbx)
    1d5c:       49 83 c4 01             add    $0x1,%r12
    1d60:       41 88 4c 24 ff          mov    %cl,-0x1(%r12)
    1d65:       80 f9 0a                cmp    $0xa,%cl
    1d68:       74 0c                   je     1d76 <rio_readlineb+0x83>
    1d6a:       41 83 c5 01             add    $0x1,%r13d
    1d6e:       49 63 c5                movslq %r13d,%rax
    1d71:       4c 39 f0                cmp    %r14,%rax
    1d74:       72 aa                   jb     1d20 <rio_readlineb+0x2d>
    1d76:       41 c6 04 24 00          movb   $0x0,(%r12)
    1d7b:       49 63 c5                movslq %r13d,%rax
    1d7e:       5b                      pop    %rbx
    1d7f:       5d                      pop    %rbp
    1d80:       41 5c                   pop    %r12
    1d82:       41 5d                   pop    %r13
    1d84:       41 5e                   pop    %r14
    1d86:       c3                      retq
    1d87:       48 c7 c0 ff ff ff ff    mov    $0xffffffffffffffff,%rax
    1d8e:       eb 05                   jmp    1d95 <rio_readlineb+0xa2>
    1d90:       b8 00 00 00 00          mov    $0x0,%eax
    1d95:       85 c0                   test   %eax,%eax
    1d97:       75 0d                   jne    1da6 <rio_readlineb+0xb3>
    1d99:       b8 00 00 00 00          mov    $0x0,%eax
    1d9e:       41 83 fd 01             cmp    $0x1,%r13d
    1da2:       75 d2                   jne    1d76 <rio_readlineb+0x83>
    1da4:       eb d8                   jmp    1d7e <rio_readlineb+0x8b>
    1da6:       48 c7 c0 ff ff ff ff    mov    $0xffffffffffffffff,%rax
    1dad:       eb cf                   jmp    1d7e <rio_readlineb+0x8b>

0000000000001daf <submitr>:
    1daf:       41 57                   push   %r15
    1db1:       41 56                   push   %r14
    1db3:       41 55                   push   %r13
    1db5:       41 54                   push   %r12
    1db7:       55                      push   %rbp
    1db8:       53                      push   %rbx
    1db9:       48 81 ec 78 a0 00 00    sub    $0xa078,%rsp
    1dc0:       49 89 fd                mov    %rdi,%r13
    1dc3:       89 f5                   mov    %esi,%ebp
    1dc5:       48 89 54 24 08          mov    %rdx,0x8(%rsp)
    1dca:       48 89 4c 24 10          mov    %rcx,0x10(%rsp)
    1dcf:       4c 89 44 24 20          mov    %r8,0x20(%rsp)
    1dd4:       4c 89 4c 24 18          mov    %r9,0x18(%rsp)
    1dd9:       48 8b 9c 24 b0 a0 00    mov    0xa0b0(%rsp),%rbx
    1de0:       00
    1de1:       4c 8b bc 24 b8 a0 00    mov    0xa0b8(%rsp),%r15
    1de8:       00
    1de9:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    1df0:       00 00
    1df2:       48 89 84 24 68 a0 00    mov    %rax,0xa068(%rsp)
    1df9:       00
    1dfa:       31 c0                   xor    %eax,%eax
    1dfc:       c7 44 24 3c 00 00 00    movl   $0x0,0x3c(%rsp)
    1e03:       00
    1e04:       ba 00 00 00 00          mov    $0x0,%edx
    1e09:       be 01 00 00 00          mov    $0x1,%esi
    1e0e:       bf 02 00 00 00          mov    $0x2,%edi
    1e13:       e8 b8 f1 ff ff          callq  fd0 <socket@plt>
    1e18:       85 c0                   test   %eax,%eax
    1e1a:       0f 88 35 01 00 00       js     1f55 <submitr+0x1a6>
    1e20:       41 89 c4                mov    %eax,%r12d
    1e23:       4c 89 ef                mov    %r13,%rdi
    1e26:       e8 c5 f0 ff ff          callq  ef0 <gethostbyname@plt>
    1e2b:       48 85 c0                test   %rax,%rax
    1e2e:       0f 84 71 01 00 00       je     1fa5 <submitr+0x1f6>
    1e34:       4c 8d 6c 24 40          lea    0x40(%rsp),%r13
    1e39:       48 c7 44 24 42 00 00    movq   $0x0,0x42(%rsp)
    1e40:       00 00
    1e42:       c7 44 24 4a 00 00 00    movl   $0x0,0x4a(%rsp)
    1e49:       00
    1e4a:       66 c7 44 24 4e 00 00    movw   $0x0,0x4e(%rsp)
    1e51:       66 c7 44 24 40 02 00    movw   $0x2,0x40(%rsp)
    1e58:       48 63 50 14             movslq 0x14(%rax),%rdx
    1e5c:       48 8b 40 18             mov    0x18(%rax),%rax
    1e60:       48 8d 7c 24 44          lea    0x44(%rsp),%rdi
    1e65:       b9 0c 00 00 00          mov    $0xc,%ecx
    1e6a:       48 8b 30                mov    (%rax),%rsi
    1e6d:       e8 8e f0 ff ff          callq  f00 <__memmove_chk@plt>
    1e72:       66 c1 cd 08             ror    $0x8,%bp
    1e76:       66 89 6c 24 42          mov    %bp,0x42(%rsp)
    1e7b:       ba 10 00 00 00          mov    $0x10,%edx
    1e80:       4c 89 ee                mov    %r13,%rsi
    1e83:       44 89 e7                mov    %r12d,%edi
    1e86:       e8 f5 f0 ff ff          callq  f80 <connect@plt>
    1e8b:       85 c0                   test   %eax,%eax
    1e8d:       0f 88 7d 01 00 00       js     2010 <submitr+0x261>
    1e93:       49 c7 c1 ff ff ff ff    mov    $0xffffffffffffffff,%r9
    1e9a:       b8 00 00 00 00          mov    $0x0,%eax
    1e9f:       4c 89 c9                mov    %r9,%rcx
    1ea2:       48 89 df                mov    %rbx,%rdi
    1ea5:       f2 ae                   repnz scas %es:(%rdi),%al
    1ea7:       48 89 ce                mov    %rcx,%rsi
    1eaa:       48 f7 d6                not    %rsi
    1ead:       4c 89 c9                mov    %r9,%rcx
    1eb0:       48 8b 7c 24 08          mov    0x8(%rsp),%rdi
    1eb5:       f2 ae                   repnz scas %es:(%rdi),%al
    1eb7:       49 89 c8                mov    %rcx,%r8
    1eba:       4c 89 c9                mov    %r9,%rcx
    1ebd:       48 8b 7c 24 10          mov    0x10(%rsp),%rdi
    1ec2:       f2 ae                   repnz scas %es:(%rdi),%al
    1ec4:       48 89 ca                mov    %rcx,%rdx
    1ec7:       48 f7 d2                not    %rdx
    1eca:       4c 89 c9                mov    %r9,%rcx
    1ecd:       48 8b 7c 24 18          mov    0x18(%rsp),%rdi
    1ed2:       f2 ae                   repnz scas %es:(%rdi),%al
    1ed4:       4c 29 c2                sub    %r8,%rdx
    1ed7:       48 29 ca                sub    %rcx,%rdx
    1eda:       48 8d 44 76 fd          lea    -0x3(%rsi,%rsi,2),%rax
    1edf:       48 8d 44 02 7b          lea    0x7b(%rdx,%rax,1),%rax
    1ee4:       48 3d 00 20 00 00       cmp    $0x2000,%rax
    1eea:       0f 87 7d 01 00 00       ja     206d <submitr+0x2be>
    1ef0:       48 8d 94 24 60 40 00    lea    0x4060(%rsp),%rdx
    1ef7:       00
    1ef8:       b9 00 04 00 00          mov    $0x400,%ecx
    1efd:       b8 00 00 00 00          mov    $0x0,%eax
    1f02:       48 89 d7                mov    %rdx,%rdi
    1f05:       f3 48 ab                rep stos %rax,%es:(%rdi)
    1f08:       48 c7 c1 ff ff ff ff    mov    $0xffffffffffffffff,%rcx
    1f0f:       48 89 df                mov    %rbx,%rdi
    1f12:       f2 ae                   repnz scas %es:(%rdi),%al
    1f14:       48 89 ca                mov    %rcx,%rdx
    1f17:       48 f7 d2                not    %rdx
    1f1a:       48 89 d1                mov    %rdx,%rcx
    1f1d:       48 83 e9 01             sub    $0x1,%rcx
    1f21:       85 c9                   test   %ecx,%ecx
    1f23:       0f 84 3f 06 00 00       je     2568 <submitr+0x7b9>
    1f29:       8d 41 ff                lea    -0x1(%rcx),%eax
    1f2c:       4c 8d 74 03 01          lea    0x1(%rbx,%rax,1),%r14
    1f31:       48 8d ac 24 60 40 00    lea    0x4060(%rsp),%rbp
    1f38:       00
    1f39:       48 8d 84 24 60 80 00    lea    0x8060(%rsp),%rax
    1f40:       00
    1f41:       48 89 44 24 28          mov    %rax,0x28(%rsp)
    1f46:       49 bd d9 ff 00 00 00    movabs $0x2000000000ffd9,%r13
    1f4d:       00 20 00
    1f50:       e9 a6 01 00 00          jmpq   20fb <submitr+0x34c>
    1f55:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
    1f5c:       3a 20 43
    1f5f:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
    1f66:       20 75 6e
    1f69:       49 89 07                mov    %rax,(%r15)
    1f6c:       49 89 57 08             mov    %rdx,0x8(%r15)
    1f70:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    1f77:       74 6f 20
    1f7a:       48 ba 63 72 65 61 74    movabs $0x7320657461657263,%rdx
    1f81:       65 20 73
    1f84:       49 89 47 10             mov    %rax,0x10(%r15)
    1f88:       49 89 57 18             mov    %rdx,0x18(%r15)
    1f8c:       41 c7 47 20 6f 63 6b    movl   $0x656b636f,0x20(%r15)
    1f93:       65
    1f94:       66 41 c7 47 24 74 00    movw   $0x74,0x24(%r15)
    1f9b:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    1fa0:       e9 9a 04 00 00          jmpq   243f <submitr+0x690>
    1fa5:       48 b8 45 72 72 6f 72    movabs $0x44203a726f727245,%rax
    1fac:       3a 20 44
    1faf:       48 ba 4e 53 20 69 73    movabs $0x6e7520736920534e,%rdx
    1fb6:       20 75 6e
    1fb9:       49 89 07                mov    %rax,(%r15)
    1fbc:       49 89 57 08             mov    %rdx,0x8(%r15)
    1fc0:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    1fc7:       74 6f 20
    1fca:       48 ba 72 65 73 6f 6c    movabs $0x2065766c6f736572,%rdx
    1fd1:       76 65 20
    1fd4:       49 89 47 10             mov    %rax,0x10(%r15)
    1fd8:       49 89 57 18             mov    %rdx,0x18(%r15)
    1fdc:       48 b8 73 65 72 76 65    movabs $0x6120726576726573,%rax
    1fe3:       72 20 61
    1fe6:       49 89 47 20             mov    %rax,0x20(%r15)
    1fea:       41 c7 47 28 64 64 72    movl   $0x65726464,0x28(%r15)
    1ff1:       65
    1ff2:       66 41 c7 47 2c 73 73    movw   $0x7373,0x2c(%r15)
    1ff9:       41 c6 47 2e 00          movb   $0x0,0x2e(%r15)
    1ffe:       44 89 e7                mov    %r12d,%edi
    2001:       e8 aa ee ff ff          callq  eb0 <close@plt>
    2006:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    200b:       e9 2f 04 00 00          jmpq   243f <submitr+0x690>
    2010:       48 b8 45 72 72 6f 72    movabs $0x55203a726f727245,%rax
    2017:       3a 20 55
    201a:       48 ba 6e 61 62 6c 65    movabs $0x6f7420656c62616e,%rdx
    2021:       20 74 6f
    2024:       49 89 07                mov    %rax,(%r15)
    2027:       49 89 57 08             mov    %rdx,0x8(%r15)
    202b:       48 b8 20 63 6f 6e 6e    movabs $0x7463656e6e6f6320,%rax
    2032:       65 63 74
    2035:       48 ba 20 74 6f 20 74    movabs $0x20656874206f7420,%rdx
    203c:       68 65 20
    203f:       49 89 47 10             mov    %rax,0x10(%r15)
    2043:       49 89 57 18             mov    %rdx,0x18(%r15)
    2047:       41 c7 47 20 73 65 72    movl   $0x76726573,0x20(%r15)
    204e:       76
    204f:       66 41 c7 47 24 65 72    movw   $0x7265,0x24(%r15)
    2056:       41 c6 47 26 00          movb   $0x0,0x26(%r15)
    205b:       44 89 e7                mov    %r12d,%edi
    205e:       e8 4d ee ff ff          callq  eb0 <close@plt>
    2063:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2068:       e9 d2 03 00 00          jmpq   243f <submitr+0x690>
    206d:       48 b8 45 72 72 6f 72    movabs $0x52203a726f727245,%rax
    2074:       3a 20 52
    2077:       48 ba 65 73 75 6c 74    movabs $0x747320746c757365,%rdx
    207e:       20 73 74
    2081:       49 89 07                mov    %rax,(%r15)
    2084:       49 89 57 08             mov    %rdx,0x8(%r15)
    2088:       48 b8 72 69 6e 67 20    movabs $0x6f6f7420676e6972,%rax
    208f:       74 6f 6f
    2092:       48 ba 20 6c 61 72 67    movabs $0x202e656772616c20,%rdx
    2099:       65 2e 20
    209c:       49 89 47 10             mov    %rax,0x10(%r15)
    20a0:       49 89 57 18             mov    %rdx,0x18(%r15)
    20a4:       48 b8 49 6e 63 72 65    movabs $0x6573616572636e49,%rax
    20ab:       61 73 65
    20ae:       48 ba 20 53 55 42 4d    movabs $0x5254494d42555320,%rdx
    20b5:       49 54 52
    20b8:       49 89 47 20             mov    %rax,0x20(%r15)
    20bc:       49 89 57 28             mov    %rdx,0x28(%r15)
    20c0:       48 b8 5f 4d 41 58 42    movabs $0x46554258414d5f,%rax
    20c7:       55 46 00
    20ca:       49 89 47 30             mov    %rax,0x30(%r15)
    20ce:       44 89 e7                mov    %r12d,%edi
    20d1:       e8 da ed ff ff          callq  eb0 <close@plt>
    20d6:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    20db:       e9 5f 03 00 00          jmpq   243f <submitr+0x690>
    20e0:       49 0f a3 c5             bt     %rax,%r13
    20e4:       73 21                   jae    2107 <submitr+0x358>
    20e6:       44 88 45 00             mov    %r8b,0x0(%rbp)
    20ea:       48 8d 6d 01             lea    0x1(%rbp),%rbp
    20ee:       48 83 c3 01             add    $0x1,%rbx
    20f2:       4c 39 f3                cmp    %r14,%rbx
    20f5:       0f 84 6d 04 00 00       je     2568 <submitr+0x7b9>
    20fb:       44 0f b6 03             movzbl (%rbx),%r8d
    20ff:       41 8d 40 d6             lea    -0x2a(%r8),%eax
    2103:       3c 35                   cmp    $0x35,%al
    2105:       76 d9                   jbe    20e0 <submitr+0x331>
    2107:       44 89 c0                mov    %r8d,%eax
    210a:       83 e0 df                and    $0xffffffdf,%eax
    210d:       83 e8 41                sub    $0x41,%eax
    2110:       3c 19                   cmp    $0x19,%al
    2112:       76 d2                   jbe    20e6 <submitr+0x337>
    2114:       41 80 f8 20             cmp    $0x20,%r8b
    2118:       74 60                   je     217a <submitr+0x3cb>
    211a:       41 8d 40 e0             lea    -0x20(%r8),%eax
    211e:       3c 5f                   cmp    $0x5f,%al
    2120:       76 0a                   jbe    212c <submitr+0x37d>
    2122:       41 80 f8 09             cmp    $0x9,%r8b
    2126:       0f 85 af 03 00 00       jne    24db <submitr+0x72c>
    212c:       45 0f b6 c0             movzbl %r8b,%r8d
    2130:       48 8d 0d 99 0d 00 00    lea    0xd99(%rip),%rcx        # 2ed0 <array.3417+0x3d0>
    2137:       ba 08 00 00 00          mov    $0x8,%edx
    213c:       be 01 00 00 00          mov    $0x1,%esi
    2141:       48 8b 7c 24 28          mov    0x28(%rsp),%rdi
    2146:       b8 00 00 00 00          mov    $0x0,%eax
    214b:       e8 70 ee ff ff          callq  fc0 <__sprintf_chk@plt>
    2150:       0f b6 84 24 60 80 00    movzbl 0x8060(%rsp),%eax
    2157:       00
    2158:       88 45 00                mov    %al,0x0(%rbp)
    215b:       0f b6 84 24 61 80 00    movzbl 0x8061(%rsp),%eax
    2162:       00
    2163:       88 45 01                mov    %al,0x1(%rbp)
    2166:       0f b6 84 24 62 80 00    movzbl 0x8062(%rsp),%eax
    216d:       00
    216e:       88 45 02                mov    %al,0x2(%rbp)
    2171:       48 8d 6d 03             lea    0x3(%rbp),%rbp
    2175:       e9 74 ff ff ff          jmpq   20ee <submitr+0x33f>
    217a:       c6 45 00 2b             movb   $0x2b,0x0(%rbp)
    217e:       48 8d 6d 01             lea    0x1(%rbp),%rbp
    2182:       e9 67 ff ff ff          jmpq   20ee <submitr+0x33f>
    2187:       49 01 c5                add    %rax,%r13
    218a:       48 29 c5                sub    %rax,%rbp
    218d:       74 26                   je     21b5 <submitr+0x406>
    218f:       48 89 ea                mov    %rbp,%rdx
    2192:       4c 89 ee                mov    %r13,%rsi
    2195:       44 89 e7                mov    %r12d,%edi
    2198:       e8 e3 ec ff ff          callq  e80 <write@plt>
    219d:       48 85 c0                test   %rax,%rax
    21a0:       7f e5                   jg     2187 <submitr+0x3d8>
    21a2:       e8 a9 ec ff ff          callq  e50 <__errno_location@plt>
    21a7:       83 38 04                cmpl   $0x4,(%rax)
    21aa:       0f 85 31 01 00 00       jne    22e1 <submitr+0x532>
    21b0:       4c 89 f0                mov    %r14,%rax
    21b3:       eb d2                   jmp    2187 <submitr+0x3d8>
    21b5:       48 85 db                test   %rbx,%rbx
    21b8:       0f 88 23 01 00 00       js     22e1 <submitr+0x532>
    21be:       44 89 64 24 50          mov    %r12d,0x50(%rsp)
    21c3:       c7 44 24 54 00 00 00    movl   $0x0,0x54(%rsp)
    21ca:       00
    21cb:       48 8d 7c 24 50          lea    0x50(%rsp),%rdi
    21d0:       48 8d 47 10             lea    0x10(%rdi),%rax
    21d4:       48 89 44 24 58          mov    %rax,0x58(%rsp)
    21d9:       48 8d b4 24 60 20 00    lea    0x2060(%rsp),%rsi
    21e0:       00
    21e1:       ba 00 20 00 00          mov    $0x2000,%edx
    21e6:       e8 08 fb ff ff          callq  1cf3 <rio_readlineb>
    21eb:       48 85 c0                test   %rax,%rax
    21ee:       0f 8e 4c 01 00 00       jle    2340 <submitr+0x591>
    21f4:       48 8d 4c 24 3c          lea    0x3c(%rsp),%rcx
    21f9:       48 8d 94 24 60 60 00    lea    0x6060(%rsp),%rdx
    2200:       00
    2201:       48 8d bc 24 60 20 00    lea    0x2060(%rsp),%rdi
    2208:       00
    2209:       4c 8d 84 24 60 80 00    lea    0x8060(%rsp),%r8
    2210:       00
    2211:       48 8d 35 bf 0c 00 00    lea    0xcbf(%rip),%rsi        # 2ed7 <array.3417+0x3d7>
    2218:       b8 00 00 00 00          mov    $0x0,%eax
    221d:       e8 0e ed ff ff          callq  f30 <__isoc99_sscanf@plt>
    2222:       44 8b 44 24 3c          mov    0x3c(%rsp),%r8d
    2227:       41 81 f8 c8 00 00 00    cmp    $0xc8,%r8d
    222e:       0f 85 80 01 00 00       jne    23b4 <submitr+0x605>
    2234:       48 8d 9c 24 60 20 00    lea    0x2060(%rsp),%rbx
    223b:       00
    223c:       48 8d 2d a5 0c 00 00    lea    0xca5(%rip),%rbp        # 2ee8 <array.3417+0x3e8>
    2243:       4c 8d 6c 24 50          lea    0x50(%rsp),%r13
    2248:       b9 03 00 00 00          mov    $0x3,%ecx
    224d:       48 89 de                mov    %rbx,%rsi
    2250:       48 89 ef                mov    %rbp,%rdi
    2253:       f3 a6                   repz cmpsb %es:(%rdi),%ds:(%rsi)
    2255:       0f 97 c0                seta   %al
    2258:       1c 00                   sbb    $0x0,%al
    225a:       84 c0                   test   %al,%al
    225c:       0f 84 89 01 00 00       je     23eb <submitr+0x63c>
    2262:       ba 00 20 00 00          mov    $0x2000,%edx
    2267:       48 89 de                mov    %rbx,%rsi
    226a:       4c 89 ef                mov    %r13,%rdi
    226d:       e8 81 fa ff ff          callq  1cf3 <rio_readlineb>
    2272:       48 85 c0                test   %rax,%rax
    2275:       7f d1                   jg     2248 <submitr+0x499>
    2277:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
    227e:       3a 20 43
    2281:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
    2288:       20 75 6e
    228b:       49 89 07                mov    %rax,(%r15)
    228e:       49 89 57 08             mov    %rdx,0x8(%r15)
    2292:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    2299:       74 6f 20
    229c:       48 ba 72 65 61 64 20    movabs $0x6165682064616572,%rdx
    22a3:       68 65 61
    22a6:       49 89 47 10             mov    %rax,0x10(%r15)
    22aa:       49 89 57 18             mov    %rdx,0x18(%r15)
    22ae:       48 b8 64 65 72 73 20    movabs $0x6f72662073726564,%rax
    22b5:       66 72 6f
    22b8:       48 ba 6d 20 73 65 72    movabs $0x726576726573206d,%rdx
    22bf:       76 65 72
    22c2:       49 89 47 20             mov    %rax,0x20(%r15)
    22c6:       49 89 57 28             mov    %rdx,0x28(%r15)
    22ca:       41 c6 47 30 00          movb   $0x0,0x30(%r15)
    22cf:       44 89 e7                mov    %r12d,%edi
    22d2:       e8 d9 eb ff ff          callq  eb0 <close@plt>
    22d7:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    22dc:       e9 5e 01 00 00          jmpq   243f <submitr+0x690>
    22e1:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
    22e8:       3a 20 43
    22eb:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
    22f2:       20 75 6e
    22f5:       49 89 07                mov    %rax,(%r15)
    22f8:       49 89 57 08             mov    %rdx,0x8(%r15)
    22fc:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    2303:       74 6f 20
    2306:       48 ba 77 72 69 74 65    movabs $0x6f74206574697277,%rdx
    230d:       20 74 6f
    2310:       49 89 47 10             mov    %rax,0x10(%r15)
    2314:       49 89 57 18             mov    %rdx,0x18(%r15)
    2318:       48 b8 20 74 68 65 20    movabs $0x7265732065687420,%rax
    231f:       73 65 72
    2322:       49 89 47 20             mov    %rax,0x20(%r15)
    2326:       41 c7 47 28 76 65 72    movl   $0x726576,0x28(%r15)
    232d:       00
    232e:       44 89 e7                mov    %r12d,%edi
    2331:       e8 7a eb ff ff          callq  eb0 <close@plt>
    2336:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    233b:       e9 ff 00 00 00          jmpq   243f <submitr+0x690>
    2340:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
    2347:       3a 20 43
    234a:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
    2351:       20 75 6e
    2354:       49 89 07                mov    %rax,(%r15)
    2357:       49 89 57 08             mov    %rdx,0x8(%r15)
    235b:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    2362:       74 6f 20
    2365:       48 ba 72 65 61 64 20    movabs $0x7269662064616572,%rdx
    236c:       66 69 72
    236f:       49 89 47 10             mov    %rax,0x10(%r15)
    2373:       49 89 57 18             mov    %rdx,0x18(%r15)
    2377:       48 b8 73 74 20 68 65    movabs $0x6564616568207473,%rax
    237e:       61 64 65
    2381:       48 ba 72 20 66 72 6f    movabs $0x73206d6f72662072,%rdx
    2388:       6d 20 73
    238b:       49 89 47 20             mov    %rax,0x20(%r15)
    238f:       49 89 57 28             mov    %rdx,0x28(%r15)
    2393:       41 c7 47 30 65 72 76    movl   $0x65767265,0x30(%r15)
    239a:       65
    239b:       66 41 c7 47 34 72 00    movw   $0x72,0x34(%r15)
    23a2:       44 89 e7                mov    %r12d,%edi
    23a5:       e8 06 eb ff ff          callq  eb0 <close@plt>
    23aa:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    23af:       e9 8b 00 00 00          jmpq   243f <submitr+0x690>
    23b4:       4c 8d 8c 24 60 80 00    lea    0x8060(%rsp),%r9
    23bb:       00
    23bc:       48 8d 0d 5d 0a 00 00    lea    0xa5d(%rip),%rcx        # 2e20 <array.3417+0x320>
    23c3:       48 c7 c2 ff ff ff ff    mov    $0xffffffffffffffff,%rdx
    23ca:       be 01 00 00 00          mov    $0x1,%esi
    23cf:       4c 89 ff                mov    %r15,%rdi
    23d2:       b8 00 00 00 00          mov    $0x0,%eax
    23d7:       e8 e4 eb ff ff          callq  fc0 <__sprintf_chk@plt>
    23dc:       44 89 e7                mov    %r12d,%edi
    23df:       e8 cc ea ff ff          callq  eb0 <close@plt>
    23e4:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    23e9:       eb 54                   jmp    243f <submitr+0x690>
    23eb:       48 8d b4 24 60 20 00    lea    0x2060(%rsp),%rsi
    23f2:       00
    23f3:       48 8d 7c 24 50          lea    0x50(%rsp),%rdi
    23f8:       ba 00 20 00 00          mov    $0x2000,%edx
    23fd:       e8 f1 f8 ff ff          callq  1cf3 <rio_readlineb>
    2402:       48 85 c0                test   %rax,%rax
    2405:       7e 61                   jle    2468 <submitr+0x6b9>
    2407:       48 8d b4 24 60 20 00    lea    0x2060(%rsp),%rsi
    240e:       00
    240f:       4c 89 ff                mov    %r15,%rdi
    2412:       e8 49 ea ff ff          callq  e60 <strcpy@plt>
    2417:       44 89 e7                mov    %r12d,%edi
    241a:       e8 91 ea ff ff          callq  eb0 <close@plt>
    241f:       b9 03 00 00 00          mov    $0x3,%ecx
    2424:       48 8d 3d c0 0a 00 00    lea    0xac0(%rip),%rdi        # 2eeb <array.3417+0x3eb>
    242b:       4c 89 fe                mov    %r15,%rsi
    242e:       f3 a6                   repz cmpsb %es:(%rdi),%ds:(%rsi)
    2430:       0f 97 c0                seta   %al
    2433:       1c 00                   sbb    $0x0,%al
    2435:       84 c0                   test   %al,%al
    2437:       0f 95 c0                setne  %al
    243a:       0f b6 c0                movzbl %al,%eax
    243d:       f7 d8                   neg    %eax
    243f:       48 8b 94 24 68 a0 00    mov    0xa068(%rsp),%rdx
    2446:       00
    2447:       64 48 33 14 25 28 00    xor    %fs:0x28,%rdx
    244e:       00 00
    2450:       0f 85 95 01 00 00       jne    25eb <submitr+0x83c>
    2456:       48 81 c4 78 a0 00 00    add    $0xa078,%rsp
    245d:       5b                      pop    %rbx
    245e:       5d                      pop    %rbp
    245f:       41 5c                   pop    %r12
    2461:       41 5d                   pop    %r13
    2463:       41 5e                   pop    %r14
    2465:       41 5f                   pop    %r15
    2467:       c3                      retq
    2468:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
    246f:       3a 20 43
    2472:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
    2479:       20 75 6e
    247c:       49 89 07                mov    %rax,(%r15)
    247f:       49 89 57 08             mov    %rdx,0x8(%r15)
    2483:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    248a:       74 6f 20
    248d:       48 ba 72 65 61 64 20    movabs $0x6174732064616572,%rdx
    2494:       73 74 61
    2497:       49 89 47 10             mov    %rax,0x10(%r15)
    249b:       49 89 57 18             mov    %rdx,0x18(%r15)
    249f:       48 b8 74 75 73 20 6d    movabs $0x7373656d20737574,%rax
    24a6:       65 73 73
    24a9:       48 ba 61 67 65 20 66    movabs $0x6d6f726620656761,%rdx
    24b0:       72 6f 6d
    24b3:       49 89 47 20             mov    %rax,0x20(%r15)
    24b7:       49 89 57 28             mov    %rdx,0x28(%r15)
    24bb:       48 b8 20 73 65 72 76    movabs $0x72657672657320,%rax
    24c2:       65 72 00
    24c5:       49 89 47 30             mov    %rax,0x30(%r15)
    24c9:       44 89 e7                mov    %r12d,%edi
    24cc:       e8 df e9 ff ff          callq  eb0 <close@plt>
    24d1:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    24d6:       e9 64 ff ff ff          jmpq   243f <submitr+0x690>
    24db:       48 b8 45 72 72 6f 72    movabs $0x52203a726f727245,%rax
    24e2:       3a 20 52
    24e5:       48 ba 65 73 75 6c 74    movabs $0x747320746c757365,%rdx
    24ec:       20 73 74
    24ef:       49 89 07                mov    %rax,(%r15)
    24f2:       49 89 57 08             mov    %rdx,0x8(%r15)
    24f6:       48 b8 72 69 6e 67 20    movabs $0x6e6f6320676e6972,%rax
    24fd:       63 6f 6e
    2500:       48 ba 74 61 69 6e 73    movabs $0x6e6120736e696174,%rdx
    2507:       20 61 6e
    250a:       49 89 47 10             mov    %rax,0x10(%r15)
    250e:       49 89 57 18             mov    %rdx,0x18(%r15)
    2512:       48 b8 20 69 6c 6c 65    movabs $0x6c6167656c6c6920,%rax
    2519:       67 61 6c
    251c:       48 ba 20 6f 72 20 75    movabs $0x72706e7520726f20,%rdx
    2523:       6e 70 72
    2526:       49 89 47 20             mov    %rax,0x20(%r15)
    252a:       49 89 57 28             mov    %rdx,0x28(%r15)
    252e:       48 b8 69 6e 74 61 62    movabs $0x20656c6261746e69,%rax
    2535:       6c 65 20
    2538:       48 ba 63 68 61 72 61    movabs $0x6574636172616863,%rdx
    253f:       63 74 65
    2542:       49 89 47 30             mov    %rax,0x30(%r15)
    2546:       49 89 57 38             mov    %rdx,0x38(%r15)
    254a:       66 41 c7 47 40 72 2e    movw   $0x2e72,0x40(%r15)
    2551:       41 c6 47 42 00          movb   $0x0,0x42(%r15)
    2556:       44 89 e7                mov    %r12d,%edi
    2559:       e8 52 e9 ff ff          callq  eb0 <close@plt>
    255e:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2563:       e9 d7 fe ff ff          jmpq   243f <submitr+0x690>
    2568:       48 8d 9c 24 60 20 00    lea    0x2060(%rsp),%rbx
    256f:       00
    2570:       48 83 ec 08             sub    $0x8,%rsp
    2574:       48 8d 84 24 68 40 00    lea    0x4068(%rsp),%rax
    257b:       00
    257c:       50                      push   %rax
    257d:       ff 74 24 28             pushq  0x28(%rsp)
    2581:       ff 74 24 38             pushq  0x38(%rsp)
    2585:       4c 8b 4c 24 30          mov    0x30(%rsp),%r9
    258a:       4c 8b 44 24 28          mov    0x28(%rsp),%r8
    258f:       48 8d 0d ba 08 00 00    lea    0x8ba(%rip),%rcx        # 2e50 <array.3417+0x350>
    2596:       ba 00 20 00 00          mov    $0x2000,%edx
    259b:       be 01 00 00 00          mov    $0x1,%esi
    25a0:       48 89 df                mov    %rbx,%rdi
    25a3:       b8 00 00 00 00          mov    $0x0,%eax
    25a8:       e8 13 ea ff ff          callq  fc0 <__sprintf_chk@plt>
    25ad:       48 c7 c1 ff ff ff ff    mov    $0xffffffffffffffff,%rcx
    25b4:       b8 00 00 00 00          mov    $0x0,%eax
    25b9:       48 89 df                mov    %rbx,%rdi
    25bc:       f2 ae                   repnz scas %es:(%rdi),%al
    25be:       48 f7 d1                not    %rcx
    25c1:       48 89 cb                mov    %rcx,%rbx
    25c4:       48 83 eb 01             sub    $0x1,%rbx
    25c8:       48 83 c4 20             add    $0x20,%rsp
    25cc:       48 89 dd                mov    %rbx,%rbp
    25cf:       4c 8d ac 24 60 20 00    lea    0x2060(%rsp),%r13
    25d6:       00
    25d7:       41 be 00 00 00 00       mov    $0x0,%r14d
    25dd:       48 85 db                test   %rbx,%rbx
    25e0:       0f 85 a9 fb ff ff       jne    218f <submitr+0x3e0>
    25e6:       e9 d3 fb ff ff          jmpq   21be <submitr+0x40f>
    25eb:       e8 a0 e8 ff ff          callq  e90 <__stack_chk_fail@plt>

00000000000025f0 <init_timeout>:
    25f0:       85 ff                   test   %edi,%edi
    25f2:       74 25                   je     2619 <init_timeout+0x29>
    25f4:       53                      push   %rbx
    25f5:       89 fb                   mov    %edi,%ebx
    25f7:       48 8d 35 c5 f6 ff ff    lea    -0x93b(%rip),%rsi        # 1cc3 <sigalrm_handler>
    25fe:       bf 0e 00 00 00          mov    $0xe,%edi
    2603:       e8 d8 e8 ff ff          callq  ee0 <signal@plt>
    2608:       85 db                   test   %ebx,%ebx
    260a:       bf 00 00 00 00          mov    $0x0,%edi
    260f:       0f 49 fb                cmovns %ebx,%edi
    2612:       e8 89 e8 ff ff          callq  ea0 <alarm@plt>
    2617:       5b                      pop    %rbx
    2618:       c3                      retq
    2619:       f3 c3                   repz retq

000000000000261b <init_driver>:
    261b:       41 54                   push   %r12
    261d:       55                      push   %rbp
    261e:       53                      push   %rbx
    261f:       48 83 ec 20             sub    $0x20,%rsp
    2623:       49 89 fc                mov    %rdi,%r12
    2626:       64 48 8b 04 25 28 00    mov    %fs:0x28,%rax
    262d:       00 00
    262f:       48 89 44 24 18          mov    %rax,0x18(%rsp)
    2634:       31 c0                   xor    %eax,%eax
    2636:       be 01 00 00 00          mov    $0x1,%esi
    263b:       bf 0d 00 00 00          mov    $0xd,%edi
    2640:       e8 9b e8 ff ff          callq  ee0 <signal@plt>
    2645:       be 01 00 00 00          mov    $0x1,%esi
    264a:       bf 1d 00 00 00          mov    $0x1d,%edi
    264f:       e8 8c e8 ff ff          callq  ee0 <signal@plt>
    2654:       be 01 00 00 00          mov    $0x1,%esi
    2659:       bf 1d 00 00 00          mov    $0x1d,%edi
    265e:       e8 7d e8 ff ff          callq  ee0 <signal@plt>
    2663:       ba 00 00 00 00          mov    $0x0,%edx
    2668:       be 01 00 00 00          mov    $0x1,%esi
    266d:       bf 02 00 00 00          mov    $0x2,%edi
    2672:       e8 59 e9 ff ff          callq  fd0 <socket@plt>
    2677:       85 c0                   test   %eax,%eax
    2679:       0f 88 a3 00 00 00       js     2722 <init_driver+0x107>
    267f:       89 c3                   mov    %eax,%ebx
    2681:       48 8d 3d 66 08 00 00    lea    0x866(%rip),%rdi        # 2eee <array.3417+0x3ee>
    2688:       e8 63 e8 ff ff          callq  ef0 <gethostbyname@plt>
    268d:       48 85 c0                test   %rax,%rax
    2690:       0f 84 df 00 00 00       je     2775 <init_driver+0x15a>
    2696:       48 89 e5                mov    %rsp,%rbp
    2699:       48 c7 44 24 02 00 00    movq   $0x0,0x2(%rsp)
    26a0:       00 00
    26a2:       c7 45 0a 00 00 00 00    movl   $0x0,0xa(%rbp)
    26a9:       66 c7 45 0e 00 00       movw   $0x0,0xe(%rbp)
    26af:       66 c7 04 24 02 00       movw   $0x2,(%rsp)
    26b5:       48 63 50 14             movslq 0x14(%rax),%rdx
    26b9:       48 8b 40 18             mov    0x18(%rax),%rax
    26bd:       48 8d 7d 04             lea    0x4(%rbp),%rdi
    26c1:       b9 0c 00 00 00          mov    $0xc,%ecx
    26c6:       48 8b 30                mov    (%rax),%rsi
    26c9:       e8 32 e8 ff ff          callq  f00 <__memmove_chk@plt>
    26ce:       66 c7 44 24 02 3b 6e    movw   $0x6e3b,0x2(%rsp)
    26d5:       ba 10 00 00 00          mov    $0x10,%edx
    26da:       48 89 ee                mov    %rbp,%rsi
    26dd:       89 df                   mov    %ebx,%edi
    26df:       e8 9c e8 ff ff          callq  f80 <connect@plt>
    26e4:       85 c0                   test   %eax,%eax
    26e6:       0f 88 fb 00 00 00       js     27e7 <init_driver+0x1cc>
    26ec:       89 df                   mov    %ebx,%edi
    26ee:       e8 bd e7 ff ff          callq  eb0 <close@plt>
    26f3:       66 41 c7 04 24 4f 4b    movw   $0x4b4f,(%r12)
    26fa:       41 c6 44 24 02 00       movb   $0x0,0x2(%r12)
    2700:       b8 00 00 00 00          mov    $0x0,%eax
    2705:       48 8b 4c 24 18          mov    0x18(%rsp),%rcx
    270a:       64 48 33 0c 25 28 00    xor    %fs:0x28,%rcx
    2711:       00 00
    2713:       0f 85 06 01 00 00       jne    281f <init_driver+0x204>
    2719:       48 83 c4 20             add    $0x20,%rsp
    271d:       5b                      pop    %rbx
    271e:       5d                      pop    %rbp
    271f:       41 5c                   pop    %r12
    2721:       c3                      retq
    2722:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
    2729:       3a 20 43
    272c:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
    2733:       20 75 6e
    2736:       49 89 04 24             mov    %rax,(%r12)
    273a:       49 89 54 24 08          mov    %rdx,0x8(%r12)
    273f:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    2746:       74 6f 20
    2749:       48 ba 63 72 65 61 74    movabs $0x7320657461657263,%rdx
    2750:       65 20 73
    2753:       49 89 44 24 10          mov    %rax,0x10(%r12)
    2758:       49 89 54 24 18          mov    %rdx,0x18(%r12)
    275d:       41 c7 44 24 20 6f 63    movl   $0x656b636f,0x20(%r12)
    2764:       6b 65
    2766:       66 41 c7 44 24 24 74    movw   $0x74,0x24(%r12)
    276d:       00
    276e:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    2773:       eb 90                   jmp    2705 <init_driver+0xea>
    2775:       48 b8 45 72 72 6f 72    movabs $0x44203a726f727245,%rax
    277c:       3a 20 44
    277f:       48 ba 4e 53 20 69 73    movabs $0x6e7520736920534e,%rdx
    2786:       20 75 6e
    2789:       49 89 04 24             mov    %rax,(%r12)
    278d:       49 89 54 24 08          mov    %rdx,0x8(%r12)
    2792:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
    2799:       74 6f 20
    279c:       48 ba 72 65 73 6f 6c    movabs $0x2065766c6f736572,%rdx
    27a3:       76 65 20
    27a6:       49 89 44 24 10          mov    %rax,0x10(%r12)
    27ab:       49 89 54 24 18          mov    %rdx,0x18(%r12)
    27b0:       48 b8 73 65 72 76 65    movabs $0x6120726576726573,%rax
    27b7:       72 20 61
    27ba:       49 89 44 24 20          mov    %rax,0x20(%r12)
    27bf:       41 c7 44 24 28 64 64    movl   $0x65726464,0x28(%r12)
    27c6:       72 65
    27c8:       66 41 c7 44 24 2c 73    movw   $0x7373,0x2c(%r12)
    27cf:       73
    27d0:       41 c6 44 24 2e 00       movb   $0x0,0x2e(%r12)
    27d6:       89 df                   mov    %ebx,%edi
    27d8:       e8 d3 e6 ff ff          callq  eb0 <close@plt>
    27dd:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    27e2:       e9 1e ff ff ff          jmpq   2705 <init_driver+0xea>
    27e7:       4c 8d 05 00 07 00 00    lea    0x700(%rip),%r8        # 2eee <array.3417+0x3ee>
    27ee:       48 8d 0d b3 06 00 00    lea    0x6b3(%rip),%rcx        # 2ea8 <array.3417+0x3a8>
    27f5:       48 c7 c2 ff ff ff ff    mov    $0xffffffffffffffff,%rdx
    27fc:       be 01 00 00 00          mov    $0x1,%esi
    2801:       4c 89 e7                mov    %r12,%rdi
    2804:       b8 00 00 00 00          mov    $0x0,%eax
    2809:       e8 b2 e7 ff ff          callq  fc0 <__sprintf_chk@plt>
    280e:       89 df                   mov    %ebx,%edi
    2810:       e8 9b e6 ff ff          callq  eb0 <close@plt>
    2815:       b8 ff ff ff ff          mov    $0xffffffff,%eax
    281a:       e9 e6 fe ff ff          jmpq   2705 <init_driver+0xea>
    281f:       e8 6c e6 ff ff          callq  e90 <__stack_chk_fail@plt>

0000000000002824 <driver_post>:
    2824:       53                      push   %rbx
    2825:       4c 89 c3                mov    %r8,%rbx
    2828:       85 c9                   test   %ecx,%ecx
    282a:       75 17                   jne    2843 <driver_post+0x1f>
    282c:       48 85 ff                test   %rdi,%rdi
    282f:       74 05                   je     2836 <driver_post+0x12>
    2831:       80 3f 00                cmpb   $0x0,(%rdi)
    2834:       75 33                   jne    2869 <driver_post+0x45>
    2836:       66 c7 03 4f 4b          movw   $0x4b4f,(%rbx)
    283b:       c6 43 02 00             movb   $0x0,0x2(%rbx)
    283f:       89 c8                   mov    %ecx,%eax
    2841:       5b                      pop    %rbx
    2842:       c3                      retq
    2843:       48 8d 35 b4 06 00 00    lea    0x6b4(%rip),%rsi        # 2efe <array.3417+0x3fe>
    284a:       bf 01 00 00 00          mov    $0x1,%edi
    284f:       b8 00 00 00 00          mov    $0x0,%eax
    2854:       e8 e7 e6 ff ff          callq  f40 <__printf_chk@plt>
    2859:       66 c7 03 4f 4b          movw   $0x4b4f,(%rbx)
    285e:       c6 43 02 00             movb   $0x0,0x2(%rbx)
    2862:       b8 00 00 00 00          mov    $0x0,%eax
    2867:       eb d8                   jmp    2841 <driver_post+0x1d>
    2869:       41 50                   push   %r8
    286b:       52                      push   %rdx
    286c:       4c 8d 0d a2 06 00 00    lea    0x6a2(%rip),%r9        # 2f15 <array.3417+0x415>
    2873:       49 89 f0                mov    %rsi,%r8
    2876:       48 89 f9                mov    %rdi,%rcx
    2879:       48 8d 15 a0 06 00 00    lea    0x6a0(%rip),%rdx        # 2f20 <array.3417+0x420>
    2880:       be 6e 3b 00 00          mov    $0x3b6e,%esi
    2885:       48 8d 3d 62 06 00 00    lea    0x662(%rip),%rdi        # 2eee <array.3417+0x3ee>
    288c:       e8 1e f5 ff ff          callq  1daf <submitr>
    2891:       48 83 c4 10             add    $0x10,%rsp
    2895:       eb aa                   jmp    2841 <driver_post+0x1d>
    2897:       66 0f 1f 84 00 00 00    nopw   0x0(%rax,%rax,1)
    289e:       00 00

00000000000028a0 <__libc_csu_init>:
    28a0:       41 57                   push   %r15
    28a2:       41 56                   push   %r14
    28a4:       49 89 d7                mov    %rdx,%r15
    28a7:       41 55                   push   %r13
    28a9:       41 54                   push   %r12
    28ab:       4c 8d 25 36 14 20 00    lea    0x201436(%rip),%r12        # 203ce8 <__frame_dummy_init_array_entry>
    28b2:       55                      push   %rbp
    28b3:       48 8d 2d 36 14 20 00    lea    0x201436(%rip),%rbp        # 203cf0 <__init_array_end>
    28ba:       53                      push   %rbx
    28bb:       41 89 fd                mov    %edi,%r13d
    28be:       49 89 f6                mov    %rsi,%r14
    28c1:       4c 29 e5                sub    %r12,%rbp
    28c4:       48 83 ec 08             sub    $0x8,%rsp
    28c8:       48 c1 fd 03             sar    $0x3,%rbp
    28cc:       e8 2f e5 ff ff          callq  e00 <_init>
    28d1:       48 85 ed                test   %rbp,%rbp
    28d4:       74 20                   je     28f6 <__libc_csu_init+0x56>
    28d6:       31 db                   xor    %ebx,%ebx
    28d8:       0f 1f 84 00 00 00 00    nopl   0x0(%rax,%rax,1)
    28df:       00
    28e0:       4c 89 fa                mov    %r15,%rdx
    28e3:       4c 89 f6                mov    %r14,%rsi
    28e6:       44 89 ef                mov    %r13d,%edi
    28e9:       41 ff 14 dc             callq  *(%r12,%rbx,8)
    28ed:       48 83 c3 01             add    $0x1,%rbx
    28f1:       48 39 dd                cmp    %rbx,%rbp
    28f4:       75 ea                   jne    28e0 <__libc_csu_init+0x40>
    28f6:       48 83 c4 08             add    $0x8,%rsp
    28fa:       5b                      pop    %rbx
    28fb:       5d                      pop    %rbp
    28fc:       41 5c                   pop    %r12
    28fe:       41 5d                   pop    %r13
    2900:       41 5e                   pop    %r14
    2902:       41 5f                   pop    %r15
    2904:       c3                      retq
    2905:       90                      nop
    2906:       66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
    290d:       00 00 00

0000000000002910 <__libc_csu_fini>:
    2910:       f3 c3                   repz retq

Disassembly of section .fini:

0000000000002914 <_fini>:
    2914:       48 83 ec 08             sub    $0x8,%rsp
    2918:       48 83 c4 08             add    $0x8,%rsp
    291c:       c3                      retq