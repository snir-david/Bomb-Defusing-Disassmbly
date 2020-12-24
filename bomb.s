┌────────────────────────────────────────────────────────────────────┐
│                        • MobaXterm 20.5 •                          │
│            (SSH client, X-server and networking tools)             │
│                                                                    │
│ ➤ SSH session to naharis3@u2.cs.biu.ac.il                          │
│   • SSH compression : ✔                                            │
│   • SSH-browser     : ✔                                            │
│   • X11-forwarding  : ✔  (remote display is forwarded through SSH) │
│   • DISPLAY         : ✔  (automatically set on remote server)      │
│                                                                    │
│ ➤ For more info, ctrl+click on help or visit our website           │
└────────────────────────────────────────────────────────────────────┘

Last login: Thu Dec 24 13:25:22 2020 from u2.cs.biu.ac.il
.- BS"D ----------------------------------------------------------------------.
|                                                                             |
|                 W E L C O M E to the Bar-Ilan university,                   |
|                  Math and Computer Science departments!                     |
|                                                                             |
|-----------------------------------------------------------------------------|
|                                                                             |
| NOTE:  Use of university computers and networks is restricted to            |
|        university-related professional purposes only.                       |
|                                                                             |
`-----------------------------------------------------------------------------'

u2 naharis3 80 : cd /bomb252
/bomb252: No such file or directory.
u2 naharis3 81 : cd ~/bomb252
u2 naharis3 82 : ls
README  bomb  bomb.c
u2 naharis3 83 : gdb bomb
GNU gdb (GDB) Red Hat Enterprise Linux (7.2-75.el6)
Copyright (C) 2010 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.  Type "show copying"
and "show warranty" for details.
This GDB was configured as "x86_64-redhat-linux-gnu".
For bug reporting instructions, please see:
<http://www.gnu.org/software/gdb/bugs/>...
Reading symbols from /u/stud/naharis3/bomb252/bomb...done.
(gdb) q
u2 naharis3 84 : objdump -D bomb

bomb:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400200 <.interp>:
400200:       2f                      (bad)
400201:       6c                      insb   (%dx),%es:(%rdi)
400202:       69 62 36 34 2f 6c 64    imul   $0x646c2f34,0x36(%rdx),%esp
400209:       2d 6c 69 6e 75          sub    $0x756e696c,%eax
40020e:       78 2d                   js     40023d <_init-0x823>
400210:       78 38                   js     40024a <_init-0x816>
400212:       36                      ss
400213:       2d 36 34 2e 73          sub    $0x732e3436,%eax
400218:       6f                      outsl  %ds:(%rsi),(%dx)
400219:       2e 32 00                xor    %cs:(%rax),%al

Disassembly of section .note.ABI-tag:

000000000040021c <.note.ABI-tag>:
40021c:       04 00                   add    $0x0,%al
40021e:       00 00                   add    %al,(%rax)
400220:       10 00                   adc    %al,(%rax)
400222:       00 00                   add    %al,(%rax)
400224:       01 00                   add    %eax,(%rax)
400226:       00 00                   add    %al,(%rax)
400228:       47                      rex.RXB
400229:       4e 55                   rex.WRX push %rbp
40022b:       00 00                   add    %al,(%rax)
40022d:       00 00                   add    %al,(%rax)
40022f:       00 02                   add    %al,(%rdx)
400231:       00 00                   add    %al,(%rax)
400233:       00 06                   add    %al,(%rsi)
400235:       00 00                   add    %al,(%rax)
400237:       00 12                   add    %dl,(%rdx)
400239:       00 00                   add    %al,(%rax)
   ...

Disassembly of section .note.gnu.build-id:

000000000040023c <.note.gnu.build-id>:
40023c:       04 00                   add    $0x0,%al
40023e:       00 00                   add    %al,(%rax)
400240:       14 00                   adc    $0x0,%al
400242:       00 00                   add    %al,(%rax)
400244:       03 00                   add    (%rax),%eax
400246:       00 00                   add    %al,(%rax)
400248:       47                      rex.RXB
400249:       4e 55                   rex.WRX push %rbp
40024b:       00 60 f1                add    %ah,-0xf(%rax)
40024e:       30 6c 6d 8b             xor    %ch,-0x75(%rbp,%rbp,2)
400252:       ec                      in     (%dx),%al
400253:       ef                      out    %eax,(%dx)
400254:       6e                      outsb  %ds:(%rsi),(%dx)
400255:       e5 91                   in     $0x91,%eax
400257:       ab                      stos   %eax,%es:(%rdi)
400258:       1c 2a                   sbb    $0x2a,%al
40025a:       e5 6d                   in     $0x6d,%eax
40025c:       4a                      rex.WX
40025d:       bd                      .byte 0xbd
40025e:       6a bb                   pushq  $0xffffffffffffffbb

Disassembly of section .gnu.hash:

0000000000400260 <.gnu.hash>:
400260:       03 00                   add    (%rax),%eax
400262:       00 00                   add    %al,(%rax)
400264:       1e                      (bad)
400265:       00 00                   add    %al,(%rax)
400267:       00 01                   add    %al,(%rcx)
400269:       00 00                   add    %al,(%rax)
40026b:       00 06                   add    %al,(%rsi)
40026d:       00 00                   add    %al,(%rax)
40026f:       00 00                   add    %al,(%rax)
400271:       01 20                   add    %esp,(%rax)
400273:       00 80 01 10 02 1e       add    %al,0x1e021001(%rax)
400279:       00 00                   add    %al,(%rax)
40027b:       00 1f                   add    %bl,(%rdi)
40027d:       00 00                   add    %al,(%rax)
40027f:       00 00                   add    %al,(%rax)
400281:       00 00                   add    %al,(%rax)
400283:       00 29                   add    %ch,(%rcx)
400285:       1d 8c 1c 66 55          sbb    $0x55661c8c,%eax
40028a:       61                      (bad)
40028b:       10 39                   adc    %bh,(%rcx)
40028d:       f2                      repnz
40028e:       8b                      .byte 0x8b
40028f:       1c                      .byte 0x1c

Disassembly of section .dynsym:

0000000000400290 <.dynsym>:
   ...
4002a8:       f1                      icebp
4002a9:       00 00                   add    %al,(%rax)
4002ab:       00 12                   add    %dl,(%rdx)
   ...
4002bd:       00 00                   add    %al,(%rax)
4002bf:       00 ea                   add    %ch,%dl
4002c1:       00 00                   add    %al,(%rax)
4002c3:       00 12                   add    %dl,(%rdx)
   ...
4002d5:       00 00                   add    %al,(%rax)
4002d7:       00 ca                   add    %cl,%dl
4002d9:       00 00                   add    %al,(%rax)
4002db:       00 12                   add    %dl,(%rdx)
   ...
4002ed:       00 00                   add    %al,(%rax)
4002ef:       00 01                   add    %al,(%rcx)
4002f1:       00 00                   add    %al,(%rax)
4002f3:       00 20                   add    %ah,(%rax)
   ...
400305:       00 00                   add    %al,(%rax)
400307:       00 61 00                add    %ah,0x0(%rcx)
40030a:       00 00                   add    %al,(%rax)
40030c:       12 00                   adc    (%rax),%al
   ...
40031e:       00 00                   add    %al,(%rax)
400320:       42 00 00                rex.X add %al,(%rax)
400323:       00 12                   add    %dl,(%rdx)
   ...
400335:       00 00                   add    %al,(%rax)
400337:       00 2f                   add    %ch,(%rdi)
400339:       00 00                   add    %al,(%rax)
40033b:       00 12                   add    %dl,(%rdx)
   ...
40034d:       00 00                   add    %al,(%rax)
40034f:       00 9d 00 00 00 12       add    %bl,0x12000000(%rbp)
   ...
400365:       00 00                   add    %al,(%rax)
400367:       00 8a 00 00 00 12       add    %cl,0x12000000(%rdx)
   ...
40037d:       00 00                   add    %al,(%rax)
40037f:       00 3c 00                add    %bh,(%rax,%rax,1)
400382:       00 00                   add    %al,(%rax)
400384:       12 00                   adc    (%rax),%al
   ...
400396:       00 00                   add    %al,(%rax)
400398:       fe 00                   incb   (%rax)
40039a:       00 00                   add    %al,(%rax)
40039c:       12 00                   adc    (%rax),%al
   ...
4003ae:       00 00                   add    %al,(%rax)
4003b0:       73 00                   jae    4003b2 <_init-0x6ae>
4003b2:       00 00                   add    %al,(%rax)
4003b4:       12 00                   adc    (%rax),%al
   ...
4003c6:       00 00                   add    %al,(%rax)
4003c8:       e4 00                   in     $0x0,%al
4003ca:       00 00                   add    %al,(%rax)
4003cc:       12 00                   adc    (%rax),%al
   ...
4003de:       00 00                   add    %al,(%rax)
4003e0:       af                      scas   %es:(%rdi),%eax
4003e1:       00 00                   add    %al,(%rax)
4003e3:       00 12                   add    %dl,(%rdx)
   ...
4003f5:       00 00                   add    %al,(%rax)
4003f7:       00 34 00                add    %dh,(%rax,%rax,1)
4003fa:       00 00                   add    %al,(%rax)
4003fc:       12 00                   adc    (%rax),%al
   ...
40040e:       00 00                   add    %al,(%rax)
400410:       f8                      clc
400411:       00 00                   add    %al,(%rax)
400413:       00 12                   add    %dl,(%rdx)
   ...
400425:       00 00                   add    %al,(%rax)
400427:       00 6c 00 00             add    %ch,0x0(%rax,%rax,1)
40042b:       00 12                   add    %dl,(%rdx)
   ...
40043d:       00 00                   add    %al,(%rax)
40043f:       00 52 00                add    %dl,0x0(%rdx)
400442:       00 00                   add    %al,(%rax)
400444:       12 00                   adc    (%rax),%al
   ...
400456:       00 00                   add    %al,(%rax)
400458:       d8 00                   fadds  (%rax)
40045a:       00 00                   add    %al,(%rax)
40045c:       12 00                   adc    (%rax),%al
   ...
40046e:       00 00                   add    %al,(%rax)
400470:       96                      xchg   %eax,%esi
400471:       00 00                   add    %al,(%rax)
400473:       00 12                   add    %dl,(%rdx)
   ...
400485:       00 00                   add    %al,(%rax)
400487:       00 5a 00                add    %bl,0x0(%rdx)
40048a:       00 00                   add    %al,(%rax)
40048c:       12 00                   adc    (%rax),%al
   ...
40049e:       00 00                   add    %al,(%rax)
4004a0:       1a 00                   sbb    (%rax),%al
4004a2:       00 00                   add    %al,(%rax)
4004a4:       12 00                   adc    (%rax),%al
   ...
4004b6:       00 00                   add    %al,(%rax)
4004b8:       a8 00                   test   $0x0,%al
4004ba:       00 00                   add    %al,(%rax)
4004bc:       12 00                   adc    (%rax),%al
   ...
4004ce:       00 00                   add    %al,(%rax)
4004d0:       c4 00 00 00             (bad)(bad)
4004d4:       12 00                   adc    (%rax),%al
   ...
4004e6:       00 00                   add    %al,(%rax)
4004e8:       79 00                   jns    4004ea <_init-0x576>
4004ea:       00 00                   add    %al,(%rax)
4004ec:       12 00                   adc    (%rax),%al
   ...
4004fe:       00 00                   add    %al,(%rax)
400500:       28 00                   sub    %al,(%rax)
400502:       00 00                   add    %al,(%rax)
400504:       12 00                   adc    (%rax),%al
   ...
400516:       00 00                   add    %al,(%rax)
400518:       f0 00 00                lock add %al,(%rax)
40051b:       00 12                   add    %dl,(%rdx)
   ...
40052d:       00 00                   add    %al,(%rax)
40052f:       00 10                   add    %dl,(%rax)
400531:       01 00                   add    %eax,(%rax)
400533:       00 12                   add    %dl,(%rdx)
   ...
400545:       00 00                   add    %al,(%rax)
400547:       00 21                   add    %ah,(%rcx)
400549:       00 00                   add    %al,(%rax)
40054b:       00 12                   add    %dl,(%rdx)
   ...
40055d:       00 00                   add    %al,(%rax)
40055f:       00 8f 00 00 00 11       add    %cl,0x11000000(%rdi)
400565:       00 19                   add    %bl,(%rcx)
400567:       00 50 38                add    %dl,0x38(%rax)
40056a:       60                      (bad)
40056b:       00 00                   add    %al,(%rax)
40056d:       00 00                   add    %al,(%rax)
40056f:       00 08                   add    %cl,(%rax)
400571:       00 00                   add    %al,(%rax)
400573:       00 00                   add    %al,(%rax)
400575:       00 00                   add    %al,(%rax)
400577:       00 66 00                add    %ah,0x0(%rsi)
40057a:       00 00                   add    %al,(%rax)
40057c:       11 00                   adc    %eax,(%rax)
40057e:       19 00                   sbb    %eax,(%rax)
400580:       40 38 60 00             cmp    %spl,0x0(%rax)
400584:       00 00                   add    %al,(%rax)
400586:       00 00                   add    %al,(%rax)
400588:       08 00                   or     %al,(%rax)
40058a:       00 00                   add    %al,(%rax)
40058c:       00 00                   add    %al,(%rax)
40058e:       00 00                   add    %al,(%rax)
400590:       bd 00 00 00 11          mov    $0x11000000,%ebp
400595:       00 19                   add    %bl,(%rcx)
400597:       00 48 38                add    %cl,0x38(%rax)
40059a:       60                      (bad)
40059b:       00 00                   add    %al,(%rax)
40059d:       00 00                   add    %al,(%rax)
40059f:       00 08                   add    %cl,(%rax)
4005a1:       00 00                   add    %al,(%rax)
4005a3:       00 00                   add    %al,(%rax)
4005a5:       00 00                   add    %al,(%rax)
   ...

Disassembly of section .dynstr:

00000000004005a8 <.dynstr>:
4005a8:       00 5f 5f                add    %bl,0x5f(%rdi)
4005ab:       67 6d                   insl   (%dx),%es:(%edi)
4005ad:       6f                      outsl  %ds:(%rsi),(%dx)
4005ae:       6e                      outsb  %ds:(%rsi),(%dx)
4005af:       5f                      pop    %rdi
4005b0:       73 74                   jae    400626 <_init-0x43a>
4005b2:       61                      (bad)
4005b3:       72 74                   jb     400629 <_init-0x437>
4005b5:       5f                      pop    %rdi
4005b6:       5f                      pop    %rdi
4005b7:       00 6c 69 62             add    %ch,0x62(%rcx,%rbp,2)
4005bb:       63 2e                   movslq (%rsi),%ebp
4005bd:       73 6f                   jae    40062e <_init-0x432>
4005bf:       2e 36 00 73 6f          cs add %dh,%cs:%ss:0x6f(%rbx)
4005c4:       63 6b 65                movslq 0x65(%rbx),%ebp
4005c7:       74 00                   je     4005c9 <_init-0x497>
4005c9:       66                      data16
4005ca:       66                      data16
4005cb:       6c                      insb   (%dx),%es:(%rdi)
4005cc:       75 73                   jne    400641 <_init-0x41f>
4005ce:       68 00 73 74 72          pushq  $0x72747300
4005d3:       63 70 79                movslq 0x79(%rax),%esi
4005d6:       00 65 78                add    %ah,0x78(%rbp)
4005d9:       69 74 00 73 70 72 69    imul   $0x6e697270,0x73(%rax,%rax,1),%esi
4005e0:       6e
4005e1:       74 66                   je     400649 <_init-0x417>
4005e3:       00 66 6f                add    %ah,0x6f(%rsi)
4005e6:       70 65                   jo     40064d <_init-0x413>
4005e8:       6e                      outsb  %ds:(%rsi),(%dx)
4005e9:       00 5f 5f                add    %bl,0x5f(%rdi)
4005ec:       69 73 6f 63 39 39 5f    imul   $0x5f393963,0x6f(%rbx),%esi
4005f3:       73 73                   jae    400668 <_init-0x3f8>
4005f5:       63 61 6e                movslq 0x6e(%rcx),%esp
4005f8:       66                      data16
4005f9:       00 63 6f                add    %ah,0x6f(%rbx)
4005fc:       6e                      outsb  %ds:(%rsi),(%dx)
4005fd:       6e                      outsb  %ds:(%rsi),(%dx)
4005fe:       65 63 74 00 73          movslq %gs:0x73(%rax,%rax,1),%esi
400603:       69 67 6e 61 6c 00 70    imul   $0x70006c61,0x6e(%rdi),%esp
40060a:       75 74                   jne    400680 <_init-0x3e0>
40060c:       73 00                   jae    40060e <_init-0x452>
40060e:       73 74                   jae    400684 <_init-0x3dc>
400610:       64 69 6e 00 73 74 72    imul   $0x74727473,%fs:0x0(%rsi),%ebp
400617:       74
400618:       6f                      outsl  %ds:(%rsi),(%dx)
400619:       6c                      insb   (%dx),%es:(%rdi)
40061a:       00 66 67                add    %ah,0x67(%rsi)
40061d:       65                      gs
40061e:       74 73                   je     400693 <_init-0x3cd>
400620:       00 5f 5f                add    %bl,0x5f(%rdi)
400623:       65                      gs
400624:       72 72                   jb     400698 <_init-0x3c8>
400626:       6e                      outsb  %ds:(%rsi),(%dx)
400627:       6f                      outsl  %ds:(%rsi),(%dx)
400628:       5f                      pop    %rdi
400629:       6c                      insb   (%dx),%es:(%rdi)
40062a:       6f                      outsl  %ds:(%rsi),(%dx)
40062b:       63 61 74                movslq 0x74(%rcx),%esp
40062e:       69 6f 6e 00 72 65 61    imul   $0x61657200,0x6e(%rdi),%ebp
400635:       64 00 73 74             add    %dh,%fs:0x74(%rbx)
400639:       64 6f                   outsl  %fs:(%rsi),(%dx)
40063b:       75 74                   jne    4006b1 <_init-0x3af>
40063d:       00 6d 65                add    %ch,0x65(%rbp)
400640:       6d                      insl   (%dx),%es:(%rdi)
400641:       63 70 79                movslq 0x79(%rax),%esi
400644:       00 73 74                add    %dh,0x74(%rbx)
400647:       72 63                   jb     4006ac <_init-0x3b4>
400649:       61                      (bad)
40064a:       73 65                   jae    4006b1 <_init-0x3af>
40064c:       63 6d 70                movslq 0x70(%rbp),%ebp
40064f:       00 67 65                add    %ah,0x65(%rdi)
400652:       74 65                   je     4006b9 <_init-0x3a7>
400654:       6e                      outsb  %ds:(%rsi),(%dx)
400655:       76 00                   jbe    400657 <_init-0x409>
400657:       5f                      pop    %rdi
400658:       5f                      pop    %rdi
400659:       63 74 79 70             movslq 0x70(%rcx,%rdi,2),%esi
40065d:       65                      gs
40065e:       5f                      pop    %rdi
40065f:       62                      (bad)
400660:       5f                      pop    %rdi
400661:       6c                      insb   (%dx),%es:(%rdi)
400662:       6f                      outsl  %ds:(%rsi),(%dx)
400663:       63 00                   movslq (%rax),%eax
400665:       73 74                   jae    4006db <_init-0x385>
400667:       64                      fs
400668:       65                      gs
400669:       72 72                   jb     4006dd <_init-0x383>
40066b:       00 61 6c                add    %ah,0x6c(%rcx)
40066e:       61                      (bad)
40066f:       72 6d                   jb     4006de <_init-0x382>
400671:       00 67 65                add    %ah,0x65(%rdi)
400674:       74 68                   je     4006de <_init-0x382>
400676:       6f                      outsl  %ds:(%rsi),(%dx)
400677:       73 74                   jae    4006ed <_init-0x373>
400679:       62                      (bad)
40067a:       79 6e                   jns    4006ea <_init-0x376>
40067c:       61                      (bad)
40067d:       6d                      insl   (%dx),%es:(%rdi)
40067e:       65 00 67 65             add    %ah,%gs:0x65(%rdi)
400682:       74 68                   je     4006ec <_init-0x374>
400684:       6f                      outsl  %ds:(%rsi),(%dx)
400685:       73 74                   jae    4006fb <_init-0x365>
400687:       6e                      outsb  %ds:(%rsi),(%dx)
400688:       61                      (bad)
400689:       6d                      insl   (%dx),%es:(%rdi)
40068a:       65 00 62 63             add    %ah,%gs:0x63(%rdx)
40068e:       6f                      outsl  %ds:(%rsi),(%dx)
40068f:       70 79                   jo     40070a <_init-0x356>
400691:       00 63 6c                add    %ah,0x6c(%rbx)
400694:       6f                      outsl  %ds:(%rsi),(%dx)
400695:       73 65                   jae    4006fc <_init-0x364>
400697:       00 66 70                add    %ah,0x70(%rsi)
40069a:       72 69                   jb     400705 <_init-0x35b>
40069c:       6e                      outsb  %ds:(%rsi),(%dx)
40069d:       74 66                   je     400705 <_init-0x35b>
40069f:       00 73 6c                add    %dh,0x6c(%rbx)
4006a2:       65                      gs
4006a3:       65                      gs
4006a4:       70 00                   jo     4006a6 <_init-0x3ba>
4006a6:       5f                      pop    %rdi
4006a7:       5f                      pop    %rdi
4006a8:       6c                      insb   (%dx),%es:(%rdi)
4006a9:       69 62 63 5f 73 74 61    imul   $0x6174735f,0x63(%rdx),%esp
4006b0:       72 74                   jb     400726 <_init-0x33a>
4006b2:       5f                      pop    %rdi
4006b3:       6d                      insl   (%dx),%es:(%rdi)
4006b4:       61                      (bad)
4006b5:       69 6e 00 77 72 69 74    imul   $0x74697277,0x0(%rsi),%ebp
4006bc:       65 00 47 4c             add    %al,%gs:0x4c(%rdi)
4006c0:       49                      rex.WB
4006c1:       42                      rex.X
4006c2:       43 5f                   rex.XB pop %r15
4006c4:       32 2e                   xor    (%rsi),%ch
4006c6:       33 00                   xor    (%rax),%eax
4006c8:       47                      rex.RXB
4006c9:       4c                      rex.WR
4006ca:       49                      rex.WB
4006cb:       42                      rex.X
4006cc:       43 5f                   rex.XB pop %r15
4006ce:       32 2e                   xor    (%rsi),%ch
4006d0:       37                      (bad)
4006d1:       00 47 4c                add    %al,0x4c(%rdi)
4006d4:       49                      rex.WB
4006d5:       42                      rex.X
4006d6:       43 5f                   rex.XB pop %r15
4006d8:       32 2e                   xor    (%rsi),%ch
4006da:       32 2e                   xor    (%rsi),%ch
4006dc:       35                      .byte 0x35
   ...

Disassembly of section .gnu.version:

00000000004006de <.gnu.version>:
4006de:       00 00                   add    %al,(%rax)
4006e0:       02 00                   add    (%rax),%al
4006e2:       02 00                   add    (%rax),%al
4006e4:       02 00                   add    (%rax),%al
4006e6:       00 00                   add    %al,(%rax)
4006e8:       02 00                   add    (%rax),%al
4006ea:       03 00                   add    (%rax),%eax
4006ec:       02 00                   add    (%rax),%al
4006ee:       02 00                   add    (%rax),%al
4006f0:       02 00                   add    (%rax),%al
4006f2:       02 00                   add    (%rax),%al
4006f4:       02 00                   add    (%rax),%al
4006f6:       02 00                   add    (%rax),%al
4006f8:       02 00                   add    (%rax),%al
4006fa:       04 00                   add    $0x0,%al
4006fc:       02 00                   add    (%rax),%al
4006fe:       02 00                   add    (%rax),%al
400700:       02 00                   add    (%rax),%al
400702:       02 00                   add    (%rax),%al
400704:       02 00                   add    (%rax),%al
400706:       02 00                   add    (%rax),%al
400708:       02 00                   add    (%rax),%al
40070a:       02 00                   add    (%rax),%al
40070c:       02 00                   add    (%rax),%al
40070e:       02 00                   add    (%rax),%al
400710:       02 00                   add    (%rax),%al
400712:       02 00                   add    (%rax),%al
400714:       02 00                   add    (%rax),%al
400716:       02 00                   add    (%rax),%al
400718:       02 00                   add    (%rax),%al
40071a:       02 00                   add    (%rax),%al
40071c:       02 00                   add    (%rax),%al
40071e:       02 00                   add    (%rax),%al

Disassembly of section .gnu.version_r:

0000000000400720 <.gnu.version_r>:
400720:       01 00                   add    %eax,(%rax)
400722:       03 00                   add    (%rax),%eax
400724:       10 00                   adc    %al,(%rax)
400726:       00 00                   add    %al,(%rax)
400728:       10 00                   adc    %al,(%rax)
40072a:       00 00                   add    %al,(%rax)
40072c:       00 00                   add    %al,(%rax)
40072e:       00 00                   add    %al,(%rax)
400730:       13 69 69                adc    0x69(%rcx),%ebp
400733:       0d 00 00 04 00          or     $0x40000,%eax
400738:       16                      (bad)
400739:       01 00                   add    %eax,(%rax)
40073b:       00 10                   add    %dl,(%rax)
40073d:       00 00                   add    %al,(%rax)
40073f:       00 17                   add    %dl,(%rdi)
400741:       69 69 0d 00 00 03 00    imul   $0x30000,0xd(%rcx),%ebp
400748:       20 01                   and    %al,(%rcx)
40074a:       00 00                   add    %al,(%rax)
40074c:       10 00                   adc    %al,(%rax)
40074e:       00 00                   add    %al,(%rax)
400750:       75 1a                   jne    40076c <_init-0x2f4>
400752:       69 09 00 00 02 00       imul   $0x20000,(%rcx),%ecx
400758:       2a 01                   sub    (%rcx),%al
40075a:       00 00                   add    %al,(%rax)
40075c:       00 00                   add    %al,(%rax)
   ...

Disassembly of section .rela.dyn:

0000000000400760 <.rela.dyn>:
400760:       a8 30                   test   $0x30,%al
400762:       60                      (bad)
400763:       00 00                   add    %al,(%rax)
400765:       00 00                   add    %al,(%rax)
400767:       00 06                   add    %al,(%rsi)
400769:       00 00                   add    %al,(%rax)
40076b:       00 04 00                add    %al,(%rax,%rax,1)
   ...
400776:       00 00                   add    %al,(%rax)
400778:       40 38 60 00             cmp    %spl,0x0(%rax)
40077c:       00 00                   add    %al,(%rax)
40077e:       00 00                   add    %al,(%rax)
400780:       05 00 00 00 1f          add    $0x1f000000,%eax
   ...
40078d:       00 00                   add    %al,(%rax)
40078f:       00 48 38                add    %cl,0x38(%rax)
400792:       60                      (bad)
400793:       00 00                   add    %al,(%rax)
400795:       00 00                   add    %al,(%rax)
400797:       00 05 00 00 00 20       add    %al,0x20000000(%rip)        # 2040079d <_end+0x1fdfc88d>
   ...
4007a5:       00 00                   add    %al,(%rax)
4007a7:       00 50 38                add    %dl,0x38(%rax)
4007aa:       60                      (bad)
4007ab:       00 00                   add    %al,(%rax)
4007ad:       00 00                   add    %al,(%rax)
4007af:       00 05 00 00 00 1e       add    %al,0x1e000000(%rip)        # 1e4007b5 <_end+0x1ddfc8a5>
   ...

Disassembly of section .rela.plt:

00000000004007c0 <.rela.plt>:
4007c0:       c8 30 60 00             enterq $0x6030,$0x0
4007c4:       00 00                   add    %al,(%rax)
4007c6:       00 00                   add    %al,(%rax)
4007c8:       07                      (bad)
4007c9:       00 00                   add    %al,(%rax)
4007cb:       00 01                   add    %al,(%rcx)
   ...
4007d5:       00 00                   add    %al,(%rax)
4007d7:       00 d0                   add    %dl,%al
4007d9:       30 60 00                xor    %ah,0x0(%rax)
4007dc:       00 00                   add    %al,(%rax)
4007de:       00 00                   add    %al,(%rax)
4007e0:       07                      (bad)
4007e1:       00 00                   add    %al,(%rax)
4007e3:       00 02                   add    %al,(%rdx)
   ...
4007ed:       00 00                   add    %al,(%rax)
4007ef:       00 d8                   add    %bl,%al
4007f1:       30 60 00                xor    %ah,0x0(%rax)
4007f4:       00 00                   add    %al,(%rax)
4007f6:       00 00                   add    %al,(%rax)
4007f8:       07                      (bad)
4007f9:       00 00                   add    %al,(%rax)
4007fb:       00 03                   add    %al,(%rbx)
   ...
400805:       00 00                   add    %al,(%rax)
400807:       00 e0                   add    %ah,%al
400809:       30 60 00                xor    %ah,0x0(%rax)
40080c:       00 00                   add    %al,(%rax)
40080e:       00 00                   add    %al,(%rax)
400810:       07                      (bad)
400811:       00 00                   add    %al,(%rax)
400813:       00 05 00 00 00 00       add    %al,0x0(%rip)        # 400819 <_init-0x247>
400819:       00 00                   add    %al,(%rax)
40081b:       00 00                   add    %al,(%rax)
40081d:       00 00                   add    %al,(%rax)
40081f:       00 e8                   add    %ch,%al
400821:       30 60 00                xor    %ah,0x0(%rax)
400824:       00 00                   add    %al,(%rax)
400826:       00 00                   add    %al,(%rax)
400828:       07                      (bad)
400829:       00 00                   add    %al,(%rax)
40082b:       00 06                   add    %al,(%rsi)
   ...
400835:       00 00                   add    %al,(%rax)
400837:       00 f0                   add    %dh,%al
400839:       30 60 00                xor    %ah,0x0(%rax)
40083c:       00 00                   add    %al,(%rax)
40083e:       00 00                   add    %al,(%rax)
400840:       07                      (bad)
400841:       00 00                   add    %al,(%rax)
400843:       00 07                   add    %al,(%rdi)
   ...
40084d:       00 00                   add    %al,(%rax)
40084f:       00 f8                   add    %bh,%al
400851:       30 60 00                xor    %ah,0x0(%rax)
400854:       00 00                   add    %al,(%rax)
400856:       00 00                   add    %al,(%rax)
400858:       07                      (bad)
400859:       00 00                   add    %al,(%rax)
40085b:       00 08                   add    %cl,(%rax)
   ...
400869:       31 60 00                xor    %esp,0x0(%rax)
40086c:       00 00                   add    %al,(%rax)
40086e:       00 00                   add    %al,(%rax)
400870:       07                      (bad)
400871:       00 00                   add    %al,(%rax)
400873:       00 09                   add    %cl,(%rcx)
   ...
40087d:       00 00                   add    %al,(%rax)
40087f:       00 08                   add    %cl,(%rax)
400881:       31 60 00                xor    %esp,0x0(%rax)
400884:       00 00                   add    %al,(%rax)
400886:       00 00                   add    %al,(%rax)
400888:       07                      (bad)
400889:       00 00                   add    %al,(%rax)
40088b:       00 0a                   add    %cl,(%rdx)
   ...
400895:       00 00                   add    %al,(%rax)
400897:       00 10                   add    %dl,(%rax)
400899:       31 60 00                xor    %esp,0x0(%rax)
40089c:       00 00                   add    %al,(%rax)
40089e:       00 00                   add    %al,(%rax)
4008a0:       07                      (bad)
4008a1:       00 00                   add    %al,(%rax)
4008a3:       00 0b                   add    %cl,(%rbx)
   ...
4008ad:       00 00                   add    %al,(%rax)
4008af:       00 18                   add    %bl,(%rax)
4008b1:       31 60 00                xor    %esp,0x0(%rax)
4008b4:       00 00                   add    %al,(%rax)
4008b6:       00 00                   add    %al,(%rax)
4008b8:       07                      (bad)
4008b9:       00 00                   add    %al,(%rax)
4008bb:       00 0c 00                add    %cl,(%rax,%rax,1)
   ...
4008c6:       00 00                   add    %al,(%rax)
4008c8:       20 31                   and    %dh,(%rcx)
4008ca:       60                      (bad)
4008cb:       00 00                   add    %al,(%rax)
4008cd:       00 00                   add    %al,(%rax)
4008cf:       00 07                   add    %al,(%rdi)
4008d1:       00 00                   add    %al,(%rax)
4008d3:       00 0d 00 00 00 00       add    %cl,0x0(%rip)        # 4008d9 <_init-0x187>
4008d9:       00 00                   add    %al,(%rax)
4008db:       00 00                   add    %al,(%rax)
4008dd:       00 00                   add    %al,(%rax)
4008df:       00 28                   add    %ch,(%rax)
4008e1:       31 60 00                xor    %esp,0x0(%rax)
4008e4:       00 00                   add    %al,(%rax)
4008e6:       00 00                   add    %al,(%rax)
4008e8:       07                      (bad)
4008e9:       00 00                   add    %al,(%rax)
4008eb:       00 0e                   add    %cl,(%rsi)
   ...
4008f5:       00 00                   add    %al,(%rax)
4008f7:       00 30                   add    %dh,(%rax)
4008f9:       31 60 00                xor    %esp,0x0(%rax)
4008fc:       00 00                   add    %al,(%rax)
4008fe:       00 00                   add    %al,(%rax)
400900:       07                      (bad)
400901:       00 00                   add    %al,(%rax)
400903:       00 0f                   add    %cl,(%rdi)
   ...
40090d:       00 00                   add    %al,(%rax)
40090f:       00 38                   add    %bh,(%rax)
400911:       31 60 00                xor    %esp,0x0(%rax)
400914:       00 00                   add    %al,(%rax)
400916:       00 00                   add    %al,(%rax)
400918:       07                      (bad)
400919:       00 00                   add    %al,(%rax)
40091b:       00 10                   add    %dl,(%rax)
   ...
400925:       00 00                   add    %al,(%rax)
400927:       00 40 31                add    %al,0x31(%rax)
40092a:       60                      (bad)
40092b:       00 00                   add    %al,(%rax)
40092d:       00 00                   add    %al,(%rax)
40092f:       00 07                   add    %al,(%rdi)
400931:       00 00                   add    %al,(%rax)
400933:       00 11                   add    %dl,(%rcx)
   ...
40093d:       00 00                   add    %al,(%rax)
40093f:       00 48 31                add    %cl,0x31(%rax)
400942:       60                      (bad)
400943:       00 00                   add    %al,(%rax)
400945:       00 00                   add    %al,(%rax)
400947:       00 07                   add    %al,(%rdi)
400949:       00 00                   add    %al,(%rax)
40094b:       00 12                   add    %dl,(%rdx)
   ...
400955:       00 00                   add    %al,(%rax)
400957:       00 50 31                add    %dl,0x31(%rax)
40095a:       60                      (bad)
40095b:       00 00                   add    %al,(%rax)
40095d:       00 00                   add    %al,(%rax)
40095f:       00 07                   add    %al,(%rdi)
400961:       00 00                   add    %al,(%rax)
400963:       00 13                   add    %dl,(%rbx)
   ...
40096d:       00 00                   add    %al,(%rax)
40096f:       00 58 31                add    %bl,0x31(%rax)
400972:       60                      (bad)
400973:       00 00                   add    %al,(%rax)
400975:       00 00                   add    %al,(%rax)
400977:       00 07                   add    %al,(%rdi)
400979:       00 00                   add    %al,(%rax)
40097b:       00 14 00                add    %dl,(%rax,%rax,1)
   ...
400986:       00 00                   add    %al,(%rax)
400988:       60                      (bad)
400989:       31 60 00                xor    %esp,0x0(%rax)
40098c:       00 00                   add    %al,(%rax)
40098e:       00 00                   add    %al,(%rax)
400990:       07                      (bad)
400991:       00 00                   add    %al,(%rax)
400993:       00 15 00 00 00 00       add    %dl,0x0(%rip)        # 400999 <_init-0xc7>
400999:       00 00                   add    %al,(%rax)
40099b:       00 00                   add    %al,(%rax)
40099d:       00 00                   add    %al,(%rax)
40099f:       00 68 31                add    %ch,0x31(%rax)
4009a2:       60                      (bad)
4009a3:       00 00                   add    %al,(%rax)
4009a5:       00 00                   add    %al,(%rax)
4009a7:       00 07                   add    %al,(%rdi)
4009a9:       00 00                   add    %al,(%rax)
4009ab:       00 16                   add    %dl,(%rsi)
   ...
4009b5:       00 00                   add    %al,(%rax)
4009b7:       00 70 31                add    %dh,0x31(%rax)
4009ba:       60                      (bad)
4009bb:       00 00                   add    %al,(%rax)
4009bd:       00 00                   add    %al,(%rax)
4009bf:       00 07                   add    %al,(%rdi)
4009c1:       00 00                   add    %al,(%rax)
4009c3:       00 17                   add    %dl,(%rdi)
   ...
4009cd:       00 00                   add    %al,(%rax)
4009cf:       00 78 31                add    %bh,0x31(%rax)
4009d2:       60                      (bad)
4009d3:       00 00                   add    %al,(%rax)
4009d5:       00 00                   add    %al,(%rax)
4009d7:       00 07                   add    %al,(%rdi)
4009d9:       00 00                   add    %al,(%rax)
4009db:       00 18                   add    %bl,(%rax)
   ...
4009e5:       00 00                   add    %al,(%rax)
4009e7:       00 80 31 60 00 00       add    %al,0x6031(%rax)
4009ed:       00 00                   add    %al,(%rax)
4009ef:       00 07                   add    %al,(%rdi)
4009f1:       00 00                   add    %al,(%rax)
4009f3:       00 19                   add    %bl,(%rcx)
   ...
4009fd:       00 00                   add    %al,(%rax)
4009ff:       00 88 31 60 00 00       add    %cl,0x6031(%rax)
400a05:       00 00                   add    %al,(%rax)
400a07:       00 07                   add    %al,(%rdi)
400a09:       00 00                   add    %al,(%rax)
400a0b:       00 1a                   add    %bl,(%rdx)
   ...
400a15:       00 00                   add    %al,(%rax)
400a17:       00 90 31 60 00 00       add    %dl,0x6031(%rax)
400a1d:       00 00                   add    %al,(%rax)
400a1f:       00 07                   add    %al,(%rdi)
400a21:       00 00                   add    %al,(%rax)
400a23:       00 1b                   add    %bl,(%rbx)
   ...
400a2d:       00 00                   add    %al,(%rax)
400a2f:       00 98 31 60 00 00       add    %bl,0x6031(%rax)
400a35:       00 00                   add    %al,(%rax)
400a37:       00 07                   add    %al,(%rdi)
400a39:       00 00                   add    %al,(%rax)
400a3b:       00 1c 00                add    %bl,(%rax,%rax,1)
   ...
400a46:       00 00                   add    %al,(%rax)
400a48:       a0 31 60 00 00 00 00    mov    0x700000000006031,%al
400a4f:       00 07
400a51:       00 00                   add    %al,(%rax)
400a53:       00 1d 00 00 00 00       add    %bl,0x0(%rip)        # 400a59 <_init-0x7>
400a59:       00 00                   add    %al,(%rax)
400a5b:       00 00                   add    %al,(%rax)
400a5d:       00 00                   add    %al,(%rax)
   ...

Disassembly of section .init:

0000000000400a60 <_init>:
400a60:       48 83 ec 08             sub    $0x8,%rsp
400a64:       e8 13 02 00 00          callq  400c7c <call_gmon_start>
400a69:       e8 a2 02 00 00          callq  400d10 <frame_dummy>
400a6e:       e8 1d 17 00 00          callq  402190 <__do_global_ctors_aux>
400a73:       48 83 c4 08             add    $0x8,%rsp
400a77:       c3                      retq

Disassembly of section .plt:

0000000000400a78 <printf@plt-0x10>:
400a78:       ff 35 3a 26 20 00       pushq  0x20263a(%rip)        # 6030b8 <_GLOBAL_OFFSET_TABLE_+0x8>
400a7e:       ff 25 3c 26 20 00       jmpq   *0x20263c(%rip)        # 6030c0 <_GLOBAL_OFFSET_TABLE_+0x10>
400a84:       0f 1f 40 00             nopl   0x0(%rax)

0000000000400a88 <printf@plt>:
400a88:       ff 25 3a 26 20 00       jmpq   *0x20263a(%rip)        # 6030c8 <_GLOBAL_OFFSET_TABLE_+0x18>
400a8e:       68 00 00 00 00          pushq  $0x0
400a93:       e9 e0 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400a98 <close@plt>:
400a98:       ff 25 32 26 20 00       jmpq   *0x202632(%rip)        # 6030d0 <_GLOBAL_OFFSET_TABLE_+0x20>
400a9e:       68 01 00 00 00          pushq  $0x1
400aa3:       e9 d0 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400aa8 <gethostbyname@plt>:
400aa8:       ff 25 2a 26 20 00       jmpq   *0x20262a(%rip)        # 6030d8 <_GLOBAL_OFFSET_TABLE_+0x28>
400aae:       68 02 00 00 00          pushq  $0x2
400ab3:       e9 c0 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400ab8 <puts@plt>:
400ab8:       ff 25 22 26 20 00       jmpq   *0x202622(%rip)        # 6030e0 <_GLOBAL_OFFSET_TABLE_+0x30>
400abe:       68 03 00 00 00          pushq  $0x3
400ac3:       e9 b0 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400ac8 <__isoc99_sscanf@plt>:
400ac8:       ff 25 1a 26 20 00       jmpq   *0x20261a(%rip)        # 6030e8 <_GLOBAL_OFFSET_TABLE_+0x38>
400ace:       68 04 00 00 00          pushq  $0x4
400ad3:       e9 a0 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400ad8 <exit@plt>:
400ad8:       ff 25 12 26 20 00       jmpq   *0x202612(%rip)        # 6030f0 <_GLOBAL_OFFSET_TABLE_+0x40>
400ade:       68 05 00 00 00          pushq  $0x5
400ae3:       e9 90 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400ae8 <strcasecmp@plt>:
400ae8:       ff 25 0a 26 20 00       jmpq   *0x20260a(%rip)        # 6030f8 <_GLOBAL_OFFSET_TABLE_+0x48>
400aee:       68 06 00 00 00          pushq  $0x6
400af3:       e9 80 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400af8 <read@plt>:
400af8:       ff 25 02 26 20 00       jmpq   *0x202602(%rip)        # 603100 <_GLOBAL_OFFSET_TABLE_+0x50>
400afe:       68 07 00 00 00          pushq  $0x7
400b03:       e9 70 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400b08 <fopen@plt>:
400b08:       ff 25 fa 25 20 00       jmpq   *0x2025fa(%rip)        # 603108 <_GLOBAL_OFFSET_TABLE_+0x58>
400b0e:       68 08 00 00 00          pushq  $0x8
400b13:       e9 60 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400b18 <__libc_start_main@plt>:
400b18:       ff 25 f2 25 20 00       jmpq   *0x2025f2(%rip)        # 603110 <_GLOBAL_OFFSET_TABLE_+0x60>
400b1e:       68 09 00 00 00          pushq  $0x9
400b23:       e9 50 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400b28 <fgets@plt>:
400b28:       ff 25 ea 25 20 00       jmpq   *0x2025ea(%rip)        # 603118 <_GLOBAL_OFFSET_TABLE_+0x68>
400b2e:       68 0a 00 00 00          pushq  $0xa
400b33:       e9 40 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400b38 <bcopy@plt>:
400b38:       ff 25 e2 25 20 00       jmpq   *0x2025e2(%rip)        # 603120 <_GLOBAL_OFFSET_TABLE_+0x70>
400b3e:       68 0b 00 00 00          pushq  $0xb
400b43:       e9 30 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400b48 <__ctype_b_loc@plt>:
400b48:       ff 25 da 25 20 00       jmpq   *0x2025da(%rip)        # 603128 <_GLOBAL_OFFSET_TABLE_+0x78>
400b4e:       68 0c 00 00 00          pushq  $0xc
400b53:       e9 20 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400b58 <sprintf@plt>:
400b58:       ff 25 d2 25 20 00       jmpq   *0x2025d2(%rip)        # 603130 <_GLOBAL_OFFSET_TABLE_+0x80>
400b5e:       68 0d 00 00 00          pushq  $0xd
400b63:       e9 10 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400b68 <sleep@plt>:
400b68:       ff 25 ca 25 20 00       jmpq   *0x2025ca(%rip)        # 603138 <_GLOBAL_OFFSET_TABLE_+0x88>
400b6e:       68 0e 00 00 00          pushq  $0xe
400b73:       e9 00 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400b78 <strtol@plt>:
400b78:       ff 25 c2 25 20 00       jmpq   *0x2025c2(%rip)        # 603140 <_GLOBAL_OFFSET_TABLE_+0x90>
400b7e:       68 0f 00 00 00          pushq  $0xf
400b83:       e9 f0 fe ff ff          jmpq   400a78 <_init+0x18>

0000000000400b88 <connect@plt>:
400b88:       ff 25 ba 25 20 00       jmpq   *0x2025ba(%rip)        # 603148 <_GLOBAL_OFFSET_TABLE_+0x98>
400b8e:       68 10 00 00 00          pushq  $0x10
400b93:       e9 e0 fe ff ff          jmpq   400a78 <_init+0x18>

0000000000400b98 <gethostname@plt>:
400b98:       ff 25 b2 25 20 00       jmpq   *0x2025b2(%rip)        # 603150 <_GLOBAL_OFFSET_TABLE_+0xa0>
400b9e:       68 11 00 00 00          pushq  $0x11
400ba3:       e9 d0 fe ff ff          jmpq   400a78 <_init+0x18>

0000000000400ba8 <memcpy@plt>:
400ba8:       ff 25 aa 25 20 00       jmpq   *0x2025aa(%rip)        # 603158 <_GLOBAL_OFFSET_TABLE_+0xa8>
400bae:       68 12 00 00 00          pushq  $0x12
400bb3:       e9 c0 fe ff ff          jmpq   400a78 <_init+0x18>

0000000000400bb8 <signal@plt>:
400bb8:       ff 25 a2 25 20 00       jmpq   *0x2025a2(%rip)        # 603160 <_GLOBAL_OFFSET_TABLE_+0xb0>
400bbe:       68 13 00 00 00          pushq  $0x13
400bc3:       e9 b0 fe ff ff          jmpq   400a78 <_init+0x18>

0000000000400bc8 <socket@plt>:
400bc8:       ff 25 9a 25 20 00       jmpq   *0x20259a(%rip)        # 603168 <_GLOBAL_OFFSET_TABLE_+0xb8>
400bce:       68 14 00 00 00          pushq  $0x14
400bd3:       e9 a0 fe ff ff          jmpq   400a78 <_init+0x18>

0000000000400bd8 <getenv@plt>:
400bd8:       ff 25 92 25 20 00       jmpq   *0x202592(%rip)        # 603170 <_GLOBAL_OFFSET_TABLE_+0xc0>
400bde:       68 15 00 00 00          pushq  $0x15
400be3:       e9 90 fe ff ff          jmpq   400a78 <_init+0x18>

0000000000400be8 <alarm@plt>:
400be8:       ff 25 8a 25 20 00       jmpq   *0x20258a(%rip)        # 603178 <_GLOBAL_OFFSET_TABLE_+0xc8>
400bee:       68 16 00 00 00          pushq  $0x16
400bf3:       e9 80 fe ff ff          jmpq   400a78 <_init+0x18>

0000000000400bf8 <__errno_location@plt>:
400bf8:       ff 25 82 25 20 00       jmpq   *0x202582(%rip)        # 603180 <_GLOBAL_OFFSET_TABLE_+0xd0>
400bfe:       68 17 00 00 00          pushq  $0x17
400c03:       e9 70 fe ff ff          jmpq   400a78 <_init+0x18>

0000000000400c08 <strcpy@plt>:
400c08:       ff 25 7a 25 20 00       jmpq   *0x20257a(%rip)        # 603188 <_GLOBAL_OFFSET_TABLE_+0xd8>
400c0e:       68 18 00 00 00          pushq  $0x18
400c13:       e9 60 fe ff ff          jmpq   400a78 <_init+0x18>

0000000000400c18 <fprintf@plt>:
400c18:       ff 25 72 25 20 00       jmpq   *0x202572(%rip)        # 603190 <_GLOBAL_OFFSET_TABLE_+0xe0>
400c1e:       68 19 00 00 00          pushq  $0x19
400c23:       e9 50 fe ff ff          jmpq   400a78 <_init+0x18>

0000000000400c28 <write@plt>:
400c28:       ff 25 6a 25 20 00       jmpq   *0x20256a(%rip)        # 603198 <_GLOBAL_OFFSET_TABLE_+0xe8>
400c2e:       68 1a 00 00 00          pushq  $0x1a
400c33:       e9 40 fe ff ff          jmpq   400a78 <_init+0x18>

0000000000400c38 <fflush@plt>:
400c38:       ff 25 62 25 20 00       jmpq   *0x202562(%rip)        # 6031a0 <_GLOBAL_OFFSET_TABLE_+0xf0>
400c3e:       68 1b 00 00 00          pushq  $0x1b
400c43:       e9 30 fe ff ff          jmpq   400a78 <_init+0x18>

Disassembly of section .text:

0000000000400c50 <_start>:
400c50:       31 ed                   xor    %ebp,%ebp
400c52:       49 89 d1                mov    %rdx,%r9
400c55:       5e                      pop    %rsi
400c56:       48 89 e2                mov    %rsp,%rdx
400c59:       48 83 e4 f0             and    $0xfffffffffffffff0,%rsp
400c5d:       50                      push   %rax
400c5e:       54                      push   %rsp
400c5f:       49 c7 c0 f0 20 40 00    mov    $0x4020f0,%r8
400c66:       48 c7 c1 00 21 40 00    mov    $0x402100,%rcx
400c6d:       48 c7 c7 34 0d 40 00    mov    $0x400d34,%rdi
400c74:       e8 9f fe ff ff          callq  400b18 <__libc_start_main@plt>
400c79:       f4                      hlt
400c7a:       90                      nop
400c7b:       90                      nop

0000000000400c7c <call_gmon_start>:
400c7c:       48 83 ec 08             sub    $0x8,%rsp
400c80:       48 8b 05 21 24 20 00    mov    0x202421(%rip),%rax        # 6030a8 <_DYNAMIC+0x190>
400c87:       48 85 c0                test   %rax,%rax
400c8a:       74 02                   je     400c8e <call_gmon_start+0x12>
400c8c:       ff d0                   callq  *%rax
400c8e:       48 83 c4 08             add    $0x8,%rsp
400c92:       c3                      retq
400c93:       90                      nop
400c94:       90                      nop
400c95:       90                      nop
400c96:       90                      nop
400c97:       90                      nop
400c98:       90                      nop
400c99:       90                      nop
400c9a:       90                      nop
400c9b:       90                      nop
400c9c:       90                      nop
400c9d:       90                      nop
400c9e:       90                      nop
400c9f:       90                      nop

0000000000400ca0 <__do_global_dtors_aux>:
400ca0:       55                      push   %rbp
400ca1:       48 89 e5                mov    %rsp,%rbp
400ca4:       53                      push   %rbx
400ca5:       48 83 ec 08             sub    $0x8,%rsp
400ca9:       80 3d a8 2b 20 00 00    cmpb   $0x0,0x202ba8(%rip)        # 603858 <completed.6364>
400cb0:       75 4b                   jne    400cfd <__do_global_dtors_aux+0x5d>
400cb2:       bb 08 2f 60 00          mov    $0x602f08,%ebx
400cb7:       48 8b 05 a2 2b 20 00    mov    0x202ba2(%rip),%rax        # 603860 <dtor_idx.6366>
400cbe:       48 81 eb 00 2f 60 00    sub    $0x602f00,%rbx
400cc5:       48 c1 fb 03             sar    $0x3,%rbx
400cc9:       48 83 eb 01             sub    $0x1,%rbx
400ccd:       48 39 d8                cmp    %rbx,%rax
400cd0:       73 24                   jae    400cf6 <__do_global_dtors_aux+0x56>
400cd2:       66 0f 1f 44 00 00       nopw   0x0(%rax,%rax,1)
400cd8:       48 83 c0 01             add    $0x1,%rax
400cdc:       48 89 05 7d 2b 20 00    mov    %rax,0x202b7d(%rip)        # 603860 <dtor_idx.6366>
400ce3:       ff 14 c5 00 2f 60 00    callq  *0x602f00(,%rax,8)
400cea:       48 8b 05 6f 2b 20 00    mov    0x202b6f(%rip),%rax        # 603860 <dtor_idx.6366>
400cf1:       48 39 d8                cmp    %rbx,%rax
400cf4:       72 e2                   jb     400cd8 <__do_global_dtors_aux+0x38>
400cf6:       c6 05 5b 2b 20 00 01    movb   $0x1,0x202b5b(%rip)        # 603858 <completed.6364>
400cfd:       48 83 c4 08             add    $0x8,%rsp
400d01:       5b                      pop    %rbx
400d02:       c9                      leaveq
400d03:       c3                      retq
400d04:       66 66 66 2e 0f 1f 84    data32 data32 nopw %cs:0x0(%rax,%rax,1)
400d0b:       00 00 00 00 00

0000000000400d10 <frame_dummy>:
400d10:       48 83 3d f8 21 20 00    cmpq   $0x0,0x2021f8(%rip)        # 602f10 <__JCR_END__>
400d17:       00
400d18:       55                      push   %rbp
400d19:       48 89 e5                mov    %rsp,%rbp
400d1c:       74 12                   je     400d30 <frame_dummy+0x20>
400d1e:       b8 00 00 00 00          mov    $0x0,%eax
400d23:       48 85 c0                test   %rax,%rax
400d26:       74 08                   je     400d30 <frame_dummy+0x20>
400d28:       bf 10 2f 60 00          mov    $0x602f10,%edi
400d2d:       c9                      leaveq
400d2e:       ff e0                   jmpq   *%rax
400d30:       c9                      leaveq
400d31:       c3                      retq
400d32:       90                      nop
400d33:       90                      nop

0000000000400d34 <main>:
400d34:       55                      push   %rbp
400d35:       53                      push   %rbx
400d36:       48 83 ec 08             sub    $0x8,%rsp
400d3a:       48 89 f3                mov    %rsi,%rbx
400d3d:       83 ff 01                cmp    $0x1,%edi
400d40:       75 10                   jne    400d52 <main+0x1e>
400d42:       48 8b 05 f7 2a 20 00    mov    0x202af7(%rip),%rax        # 603840 <__bss_start>
400d49:       48 89 05 20 2b 20 00    mov    %rax,0x202b20(%rip)        # 603870 <infile>
400d50:       eb 5a                   jmp    400dac <main+0x78>
400d52:       83 ff 02                cmp    $0x2,%edi
400d55:       75 39                   jne    400d90 <main+0x5c>
400d57:       48 8d 6e 08             lea    0x8(%rsi),%rbp
400d5b:       be f0 21 40 00          mov    $0x4021f0,%esi
400d60:       48 8b 7d 00             mov    0x0(%rbp),%rdi
400d64:       e8 9f fd ff ff          callq  400b08 <fopen@plt>
400d69:       48 89 05 00 2b 20 00    mov    %rax,0x202b00(%rip)        # 603870 <infile>
400d70:       48 85 c0                test   %rax,%rax
400d73:       75 37                   jne    400dac <main+0x78>
400d75:       48 8b 55 00             mov    0x0(%rbp),%rdx
400d79:       48 8b 33                mov    (%rbx),%rsi
400d7c:       bf f2 21 40 00          mov    $0x4021f2,%edi
400d81:       e8 02 fd ff ff          callq  400a88 <printf@plt>
400d86:       bf 08 00 00 00          mov    $0x8,%edi
400d8b:       e8 48 fd ff ff          callq  400ad8 <exit@plt>
400d90:       48 8b 36                mov    (%rsi),%rsi
400d93:       bf 0f 22 40 00          mov    $0x40220f,%edi
400d98:       b8 00 00 00 00          mov    $0x0,%eax
400d9d:       e8 e6 fc ff ff          callq  400a88 <printf@plt>
400da2:       bf 08 00 00 00          mov    $0x8,%edi
400da7:       e8 2c fd ff ff          callq  400ad8 <exit@plt>
400dac:       e8 2f 08 00 00          callq  4015e0 <initialize_bomb>
400db1:       bf 78 22 40 00          mov    $0x402278,%edi
400db6:       e8 fd fc ff ff          callq  400ab8 <puts@plt>
400dbb:       bf b8 22 40 00          mov    $0x4022b8,%edi
400dc0:       e8 f3 fc ff ff          callq  400ab8 <puts@plt>
400dc5:       e8 db 06 00 00          callq  4014a5 <read_line>
400dca:       48 89 c7                mov    %rax,%rdi
400dcd:       e8 de 03 00 00          callq  4011b0 <phase_1>
400dd2:       e8 4f 05 00 00          callq  401326 <phase_defused>
400dd7:       bf e8 22 40 00          mov    $0x4022e8,%edi
400ddc:       e8 d7 fc ff ff          callq  400ab8 <puts@plt>
400de1:       e8 bf 06 00 00          callq  4014a5 <read_line>
400de6:       48 89 c7                mov    %rax,%rdi
400de9:       e8 60 02 00 00          callq  40104e <phase_2>
400dee:       e8 33 05 00 00          callq  401326 <phase_defused>
400df3:       bf 29 22 40 00          mov    $0x402229,%edi
400df8:       e8 bb fc ff ff          callq  400ab8 <puts@plt>
400dfd:       e8 a3 06 00 00          callq  4014a5 <read_line>
400e02:       48 89 c7                mov    %rax,%rdi
400e05:       e8 1b 03 00 00          callq  401125 <phase_3>
400e0a:       e8 17 05 00 00          callq  401326 <phase_defused>
400e0f:       bf 47 22 40 00          mov    $0x402247,%edi
400e14:       e8 9f fc ff ff          callq  400ab8 <puts@plt>
400e19:       e8 87 06 00 00          callq  4014a5 <read_line>
400e1e:       48 89 c7                mov    %rax,%rdi
400e21:       e8 ac 02 00 00          callq  4010d2 <phase_4>
400e26:       e8 fb 04 00 00          callq  401326 <phase_defused>
400e2b:       bf 18 23 40 00          mov    $0x402318,%edi
400e30:       e8 83 fc ff ff          callq  400ab8 <puts@plt>
400e35:       e8 6b 06 00 00          callq  4014a5 <read_line>
400e3a:       48 89 c7                mov    %rax,%rdi
400e3d:       e8 50 02 00 00          callq  401092 <phase_5>
400e42:       e8 df 04 00 00          callq  401326 <phase_defused>
400e47:       bf 56 22 40 00          mov    $0x402256,%edi
400e4c:       e8 67 fc ff ff          callq  400ab8 <puts@plt>
400e51:       e8 4f 06 00 00          callq  4014a5 <read_line>
400e56:       48 89 c7                mov    %rax,%rdi
400e59:       e8 f5 00 00 00          callq  400f53 <phase_6>
400e5e:       e8 c3 04 00 00          callq  401326 <phase_defused>
400e63:       b8 00 00 00 00          mov    $0x0,%eax
400e68:       48 83 c4 08             add    $0x8,%rsp
400e6c:       5b                      pop    %rbx
400e6d:       5d                      pop    %rbp
400e6e:       c3                      retq
400e6f:       90                      nop

0000000000400e70 <func4>:
400e70:       48 89 5c 24 e8          mov    %rbx,-0x18(%rsp)
400e75:       48 89 6c 24 f0          mov    %rbp,-0x10(%rsp)
400e7a:       4c 89 64 24 f8          mov    %r12,-0x8(%rsp)
400e7f:       48 83 ec 18             sub    $0x18,%rsp
400e83:       89 fb                   mov    %edi,%ebx
400e85:       89 f5                   mov    %esi,%ebp
400e87:       85 ff                   test   %edi,%edi
400e89:       7f 07                   jg     400e92 <func4+0x22>
400e8b:       bd 00 00 00 00          mov    $0x0,%ebp
400e90:       eb 20                   jmp    400eb2 <func4+0x42>
400e92:       83 ff 01                cmp    $0x1,%edi
400e95:       74 1b                   je     400eb2 <func4+0x42>
400e97:       8d 7b ff                lea    -0x1(%rbx),%edi
400e9a:       e8 d1 ff ff ff          callq  400e70 <func4>
400e9f:       41 89 c4                mov    %eax,%r12d
400ea2:       8d 7b fe                lea    -0x2(%rbx),%edi
400ea5:       89 ee                   mov    %ebp,%esi
400ea7:       e8 c4 ff ff ff          callq  400e70 <func4>
400eac:       41 01 c4                add    %eax,%r12d
400eaf:       44 01 e5                add    %r12d,%ebp
400eb2:       89 e8                   mov    %ebp,%eax
400eb4:       48 8b 1c 24             mov    (%rsp),%rbx
400eb8:       48 8b 6c 24 08          mov    0x8(%rsp),%rbp
400ebd:       4c 8b 64 24 10          mov    0x10(%rsp),%r12
400ec2:       48 83 c4 18             add    $0x18,%rsp
400ec6:       c3                      retq

0000000000400ec7 <fun7>:
400ec7:       48 83 ec 08             sub    $0x8,%rsp
400ecb:       b8 ff ff ff ff          mov    $0xffffffff,%eax
400ed0:       48 85 ff                test   %rdi,%rdi
400ed3:       74 29                   je     400efe <fun7+0x37>
400ed5:       8b 17                   mov    (%rdi),%edx
400ed7:       39 f2                   cmp    %esi,%edx
400ed9:       7e 0d                   jle    400ee8 <fun7+0x21>
400edb:       48 8b 7f 08             mov    0x8(%rdi),%rdi
400edf:       e8 e3 ff ff ff          callq  400ec7 <fun7>
400ee4:       01 c0                   add    %eax,%eax
400ee6:       eb 16                   jmp    400efe <fun7+0x37>
400ee8:       b8 00 00 00 00          mov    $0x0,%eax
400eed:       39 f2                   cmp    %esi,%edx
400eef:       74 0d                   je     400efe <fun7+0x37>
400ef1:       48 8b 7f 10             mov    0x10(%rdi),%rdi
400ef5:       e8 cd ff ff ff          callq  400ec7 <fun7>
400efa:       8d 44 00 01             lea    0x1(%rax,%rax,1),%eax
400efe:       48 83 c4 08             add    $0x8,%rsp
400f02:       c3                      retq

0000000000400f03 <secret_phase>:
400f03:       53                      push   %rbx
400f04:       e8 9c 05 00 00          callq  4014a5 <read_line>
400f09:       ba 0a 00 00 00          mov    $0xa,%edx
400f0e:       be 00 00 00 00          mov    $0x0,%esi
400f13:       48 89 c7                mov    %rax,%rdi
400f16:       e8 5d fc ff ff          callq  400b78 <strtol@plt>
400f1b:       89 c3                   mov    %eax,%ebx
400f1d:       8d 43 ff                lea    -0x1(%rbx),%eax
400f20:       3d e8 03 00 00          cmp    $0x3e8,%eax
400f25:       76 05                   jbe    400f2c <secret_phase+0x29>
400f27:       e8 83 04 00 00          callq  4013af <explode_bomb>
400f2c:       89 de                   mov    %ebx,%esi
400f2e:       bf 20 34 60 00          mov    $0x603420,%edi
400f33:       e8 8f ff ff ff          callq  400ec7 <fun7>
400f38:       83 f8 04                cmp    $0x4,%eax
400f3b:       74 05                   je     400f42 <secret_phase+0x3f>
400f3d:       e8 6d 04 00 00          callq  4013af <explode_bomb>
400f42:       bf 40 23 40 00          mov    $0x402340,%edi
400f47:       e8 6c fb ff ff          callq  400ab8 <puts@plt>
400f4c:       e8 d5 03 00 00          callq  401326 <phase_defused>
400f51:       5b                      pop    %rbx
400f52:       c3                      retq

0000000000400f53 <phase_6>:
400f53:       41 54                   push   %r12
400f55:       55                      push   %rbp
400f56:       53                      push   %rbx
400f57:       48 83 ec 50             sub    $0x50,%rsp
400f5b:       48 8d 6c 24 30          lea    0x30(%rsp),%rbp
400f60:       48 89 ee                mov    %rbp,%rsi
400f63:       e8 7d 04 00 00          callq  4013e5 <read_six_numbers>
400f68:       41 bc 00 00 00 00       mov    $0x0,%r12d
400f6e:       8b 45 00                mov    0x0(%rbp),%eax
400f71:       83 e8 01                sub    $0x1,%eax
400f74:       83 f8 05                cmp    $0x5,%eax
400f77:       76 05                   jbe    400f7e <phase_6+0x2b>
400f79:       e8 31 04 00 00          callq  4013af <explode_bomb>
400f7e:       41 83 c4 01             add    $0x1,%r12d
400f82:       41 83 fc 06             cmp    $0x6,%r12d
400f86:       74 22                   je     400faa <phase_6+0x57>
400f88:       44 89 e3                mov    %r12d,%ebx
400f8b:       48 63 c3                movslq %ebx,%rax
400f8e:       8b 55 00                mov    0x0(%rbp),%edx
400f91:       3b 54 84 30             cmp    0x30(%rsp,%rax,4),%edx
400f95:       75 05                   jne    400f9c <phase_6+0x49>
400f97:       e8 13 04 00 00          callq  4013af <explode_bomb>
400f9c:       83 c3 01                add    $0x1,%ebx
400f9f:       83 fb 05                cmp    $0x5,%ebx
400fa2:       7e e7                   jle    400f8b <phase_6+0x38>
400fa4:       48 83 c5 04             add    $0x4,%rbp
400fa8:       eb c4                   jmp    400f6e <phase_6+0x1b>
400faa:       bb 00 00 00 00          mov    $0x0,%ebx
400faf:       4c 8d 44 24 30          lea    0x30(%rsp),%r8
400fb4:       bd 01 00 00 00          mov    $0x1,%ebp
400fb9:       be 50 32 60 00          mov    $0x603250,%esi
400fbe:       48 89 e7                mov    %rsp,%rdi
400fc1:       eb 19                   jmp    400fdc <phase_6+0x89>
400fc3:       48 8b 52 08             mov    0x8(%rdx),%rdx
400fc7:       83 c0 01                add    $0x1,%eax
400fca:       39 c8                   cmp    %ecx,%eax
400fcc:       75 f5                   jne    400fc3 <phase_6+0x70>
400fce:       48 89 14 5f             mov    %rdx,(%rdi,%rbx,2)
400fd2:       48 83 c3 04             add    $0x4,%rbx
400fd6:       48 83 fb 18             cmp    $0x18,%rbx
400fda:       74 10                   je     400fec <phase_6+0x99>
400fdc:       41 8b 0c 18             mov    (%r8,%rbx,1),%ecx
400fe0:       89 e8                   mov    %ebp,%eax
400fe2:       48 89 f2                mov    %rsi,%rdx
400fe5:       83 f9 01                cmp    $0x1,%ecx
400fe8:       7f d9                   jg     400fc3 <phase_6+0x70>
400fea:       eb e2                   jmp    400fce <phase_6+0x7b>
400fec:       48 8b 1c 24             mov    (%rsp),%rbx
400ff0:       48 8b 44 24 08          mov    0x8(%rsp),%rax
400ff5:       48 89 43 08             mov    %rax,0x8(%rbx)
400ff9:       48 8b 54 24 10          mov    0x10(%rsp),%rdx
400ffe:       48 89 50 08             mov    %rdx,0x8(%rax)
401002:       48 8b 44 24 18          mov    0x18(%rsp),%rax
401007:       48 89 42 08             mov    %rax,0x8(%rdx)
40100b:       48 8b 54 24 20          mov    0x20(%rsp),%rdx
401010:       48 89 50 08             mov    %rdx,0x8(%rax)
401014:       48 8b 44 24 28          mov    0x28(%rsp),%rax
401019:       48 89 42 08             mov    %rax,0x8(%rdx)
40101d:       48 c7 40 08 00 00 00    movq   $0x0,0x8(%rax)
401024:       00
401025:       bd 00 00 00 00          mov    $0x0,%ebp
40102a:       48 8b 43 08             mov    0x8(%rbx),%rax
40102e:       8b 13                   mov    (%rbx),%edx
401030:       3b 10                   cmp    (%rax),%edx
401032:       7e 05                   jle    401039 <phase_6+0xe6>
401034:       e8 76 03 00 00          callq  4013af <explode_bomb>
401039:       48 8b 5b 08             mov    0x8(%rbx),%rbx
40103d:       83 c5 01                add    $0x1,%ebp
401040:       83 fd 05                cmp    $0x5,%ebp
401043:       75 e5                   jne    40102a <phase_6+0xd7>
401045:       48 83 c4 50             add    $0x50,%rsp
401049:       5b                      pop    %rbx
40104a:       5d                      pop    %rbp
40104b:       41 5c                   pop    %r12
40104d:       c3                      retq

000000000040104e <phase_2>:
40104e:       55                      push   %rbp
40104f:       53                      push   %rbx
401050:       48 83 ec 28             sub    $0x28,%rsp
401054:       48 89 e6                mov    %rsp,%rsi
401057:       e8 89 03 00 00          callq  4013e5 <read_six_numbers>
40105c:       83 3c 24 00             cmpl   $0x0,(%rsp)
401060:       79 05                   jns    401067 <phase_2+0x19>
401062:       e8 48 03 00 00          callq  4013af <explode_bomb>
401067:       48 8d 5c 24 04          lea    0x4(%rsp),%rbx
40106c:       bd 01 00 00 00          mov    $0x1,%ebp
401071:       89 e8                   mov    %ebp,%eax
401073:       03 43 fc                add    -0x4(%rbx),%eax
401076:       39 03                   cmp    %eax,(%rbx)
401078:       74 05                   je     40107f <phase_2+0x31>
40107a:       e8 30 03 00 00          callq  4013af <explode_bomb>
40107f:       83 c5 01                add    $0x1,%ebp
401082:       48 83 c3 04             add    $0x4,%rbx
401086:       83 fd 06                cmp    $0x6,%ebp
401089:       75 e6                   jne    401071 <phase_2+0x23>
40108b:       48 83 c4 28             add    $0x28,%rsp
40108f:       5b                      pop    %rbx
401090:       5d                      pop    %rbp
401091:       c3                      retq

0000000000401092 <phase_5>:
401092:       53                      push   %rbx
401093:       48 89 fb                mov    %rdi,%rbx
401096:       e8 35 01 00 00          callq  4011d0 <string_length>
40109b:       83 f8 06                cmp    $0x6,%eax
40109e:       74 05                   je     4010a5 <phase_5+0x13>
4010a0:       e8 0a 03 00 00          callq  4013af <explode_bomb>
4010a5:       48 8d 73 06             lea    0x6(%rbx),%rsi
4010a9:       b8 00 00 00 00          mov    $0x0,%eax
4010ae:       ba e0 23 40 00          mov    $0x4023e0,%edx
4010b3:       48 0f be 0b             movsbq (%rbx),%rcx
4010b7:       83 e1 0f                and    $0xf,%ecx
4010ba:       03 04 8a                add    (%rdx,%rcx,4),%eax
4010bd:       48 83 c3 01             add    $0x1,%rbx
4010c1:       48 39 f3                cmp    %rsi,%rbx
4010c4:       75 ed                   jne    4010b3 <phase_5+0x21>
4010c6:       83 f8 3f                cmp    $0x3f,%eax
4010c9:       74 05                   je     4010d0 <phase_5+0x3e>
4010cb:       e8 df 02 00 00          callq  4013af <explode_bomb>
4010d0:       5b                      pop    %rbx
4010d1:       c3                      retq

00000000004010d2 <phase_4>:
4010d2:       48 83 ec 18             sub    $0x18,%rsp
4010d6:       48 8d 4c 24 0c          lea    0xc(%rsp),%rcx
4010db:       48 8d 54 24 08          lea    0x8(%rsp),%rdx
4010e0:       be 8a 24 40 00          mov    $0x40248a,%esi
4010e5:       b8 00 00 00 00          mov    $0x0,%eax
4010ea:       e8 d9 f9 ff ff          callq  400ac8 <__isoc99_sscanf@plt>
4010ef:       83 f8 02                cmp    $0x2,%eax
4010f2:       75 0e                   jne    401102 <phase_4+0x30>
4010f4:       8b 44 24 0c             mov    0xc(%rsp),%eax
4010f8:       83 f8 01                cmp    $0x1,%eax
4010fb:       7e 05                   jle    401102 <phase_4+0x30>
4010fd:       83 f8 04                cmp    $0x4,%eax
401100:       7e 05                   jle    401107 <phase_4+0x35>
401102:       e8 a8 02 00 00          callq  4013af <explode_bomb>
401107:       8b 74 24 0c             mov    0xc(%rsp),%esi
40110b:       bf 05 00 00 00          mov    $0x5,%edi
401110:       e8 5b fd ff ff          callq  400e70 <func4>
401115:       3b 44 24 08             cmp    0x8(%rsp),%eax
401119:       74 05                   je     401120 <phase_4+0x4e>
40111b:       e8 8f 02 00 00          callq  4013af <explode_bomb>
401120:       48 83 c4 18             add    $0x18,%rsp
401124:       c3                      retq

0000000000401125 <phase_3>:
401125:       48 83 ec 18             sub    $0x18,%rsp
401129:       48 8d 4c 24 08          lea    0x8(%rsp),%rcx
40112e:       48 8d 54 24 0c          lea    0xc(%rsp),%rdx
401133:       be 8a 24 40 00          mov    $0x40248a,%esi
401138:       b8 00 00 00 00          mov    $0x0,%eax
40113d:       e8 86 f9 ff ff          callq  400ac8 <__isoc99_sscanf@plt>
401142:       83 f8 01                cmp    $0x1,%eax
401145:       7f 05                   jg     40114c <phase_3+0x27>
401147:       e8 63 02 00 00          callq  4013af <explode_bomb>
40114c:       83 7c 24 0c 07          cmpl   $0x7,0xc(%rsp)
401151:       77 43                   ja     401196 <phase_3+0x71>
401153:       8b 44 24 0c             mov    0xc(%rsp),%eax
401157:       ff 24 c5 a0 23 40 00    jmpq   *0x4023a0(,%rax,8)
40115e:       b8 c9 03 00 00          mov    $0x3c9,%eax
401163:       eb 3b                   jmp    4011a0 <phase_3+0x7b>
401165:       b8 fd 02 00 00          mov    $0x2fd,%eax
40116a:       eb 34                   jmp    4011a0 <phase_3+0x7b>
40116c:       b8 5b 02 00 00          mov    $0x25b,%eax
401171:       eb 2d                   jmp    4011a0 <phase_3+0x7b>
401173:       b8 d4 00 00 00          mov    $0xd4,%eax
401178:       eb 26                   jmp    4011a0 <phase_3+0x7b>
40117a:       b8 77 00 00 00          mov    $0x77,%eax
40117f:       eb 1f                   jmp    4011a0 <phase_3+0x7b>
401181:       b8 e1 01 00 00          mov    $0x1e1,%eax
401186:       eb 18                   jmp    4011a0 <phase_3+0x7b>
401188:       b8 95 03 00 00          mov    $0x395,%eax
40118d:       eb 11                   jmp    4011a0 <phase_3+0x7b>
40118f:       b8 51 03 00 00          mov    $0x351,%eax
401194:       eb 0a                   jmp    4011a0 <phase_3+0x7b>
401196:       e8 14 02 00 00          callq  4013af <explode_bomb>
40119b:       b8 00 00 00 00          mov    $0x0,%eax
4011a0:       3b 44 24 08             cmp    0x8(%rsp),%eax
4011a4:       74 05                   je     4011ab <phase_3+0x86>
4011a6:       e8 04 02 00 00          callq  4013af <explode_bomb>
4011ab:       48 83 c4 18             add    $0x18,%rsp
4011af:       c3                      retq

00000000004011b0 <phase_1>:
4011b0:       48 83 ec 08             sub    $0x8,%rsp
4011b4:       be 68 23 40 00          mov    $0x402368,%esi
4011b9:       e8 2e 00 00 00          callq  4011ec <strings_not_equal>
4011be:       85 c0                   test   %eax,%eax
4011c0:       74 05                   je     4011c7 <phase_1+0x17>
4011c2:       e8 e8 01 00 00          callq  4013af <explode_bomb>
4011c7:       48 83 c4 08             add    $0x8,%rsp
4011cb:       c3                      retq
4011cc:       90                      nop
4011cd:       90                      nop
4011ce:       90                      nop
4011cf:       90                      nop

00000000004011d0 <string_length>:
4011d0:       48 89 fa                mov    %rdi,%rdx
4011d3:       b8 00 00 00 00          mov    $0x0,%eax
4011d8:       80 3f 00                cmpb   $0x0,(%rdi)
4011db:       74 0d                   je     4011ea <string_length+0x1a>
4011dd:       48 83 c2 01             add    $0x1,%rdx
4011e1:       89 d0                   mov    %edx,%eax
4011e3:       29 f8                   sub    %edi,%eax
4011e5:       80 3a 00                cmpb   $0x0,(%rdx)
4011e8:       75 f3                   jne    4011dd <string_length+0xd>
4011ea:       f3 c3                   repz retq

00000000004011ec <strings_not_equal>:
4011ec:       41 54                   push   %r12
4011ee:       55                      push   %rbp
4011ef:       53                      push   %rbx
4011f0:       48 89 fb                mov    %rdi,%rbx
4011f3:       48 89 f5                mov    %rsi,%rbp
4011f6:       e8 d5 ff ff ff          callq  4011d0 <string_length>
4011fb:       41 89 c4                mov    %eax,%r12d
4011fe:       48 89 ef                mov    %rbp,%rdi
401201:       e8 ca ff ff ff          callq  4011d0 <string_length>
401206:       41 39 c4                cmp    %eax,%r12d
401209:       75 26                   jne    401231 <strings_not_equal+0x45>
40120b:       0f b6 13                movzbl (%rbx),%edx
40120e:       84 d2                   test   %dl,%dl
401210:       74 26                   je     401238 <strings_not_equal+0x4c>
401212:       48 89 e8                mov    %rbp,%rax
401215:       3a 55 00                cmp    0x0(%rbp),%dl
401218:       74 0a                   je     401224 <strings_not_equal+0x38>
40121a:       eb 15                   jmp    401231 <strings_not_equal+0x45>
40121c:       48 83 c0 01             add    $0x1,%rax
401220:       3a 10                   cmp    (%rax),%dl
401222:       75 0d                   jne    401231 <strings_not_equal+0x45>
401224:       48 83 c3 01             add    $0x1,%rbx
401228:       0f b6 13                movzbl (%rbx),%edx
40122b:       84 d2                   test   %dl,%dl
40122d:       75 ed                   jne    40121c <strings_not_equal+0x30>
40122f:       eb 07                   jmp    401238 <strings_not_equal+0x4c>
401231:       b8 01 00 00 00          mov    $0x1,%eax
401236:       eb 05                   jmp    40123d <strings_not_equal+0x51>
401238:       b8 00 00 00 00          mov    $0x0,%eax
40123d:       5b                      pop    %rbx
40123e:       5d                      pop    %rbp
40123f:       41 5c                   pop    %r12
401241:       c3                      retq

0000000000401242 <initialize_bomb_solve>:
401242:       f3 c3                   repz retq

0000000000401244 <invalid_phase>:
401244:       48 83 ec 08             sub    $0x8,%rsp
401248:       48 89 fe                mov    %rdi,%rsi
40124b:       bf 20 24 40 00          mov    $0x402420,%edi
401250:       b8 00 00 00 00          mov    $0x0,%eax
401255:       e8 2e f8 ff ff          callq  400a88 <printf@plt>
40125a:       bf 08 00 00 00          mov    $0x8,%edi
40125f:       e8 74 f8 ff ff          callq  400ad8 <exit@plt>

0000000000401264 <send_msg>:
401264:       53                      push   %rbx
401265:       48 81 ec 00 40 00 00    sub    $0x4000,%rsp
40126c:       89 fa                   mov    %edi,%edx
40126e:       44 8b 05 f3 25 20 00    mov    0x2025f3(%rip),%r8d        # 603868 <num_input_strings>
401275:       49 63 c0                movslq %r8d,%rax
401278:       4c 8d 4c 80 fb          lea    -0x5(%rax,%rax,4),%r9
40127d:       49 c1 e1 04             shl    $0x4,%r9
401281:       49 81 c1 80 38 60 00    add    $0x603880,%r9
401288:       4c 89 cf                mov    %r9,%rdi
40128b:       b8 00 00 00 00          mov    $0x0,%eax
401290:       48 c7 c1 ff ff ff ff    mov    $0xffffffffffffffff,%rcx
401297:       f2 ae                   repnz scas %es:(%rdi),%al
401299:       48 f7 d1                not    %rcx
40129c:       48 83 c1 63             add    $0x63,%rcx
4012a0:       48 81 f9 00 20 00 00    cmp    $0x2000,%rcx
4012a7:       76 14                   jbe    4012bd <send_msg+0x59>
4012a9:       bf 08 25 40 00          mov    $0x402508,%edi
4012ae:       e8 d5 f7 ff ff          callq  400a88 <printf@plt>
4012b3:       bf 08 00 00 00          mov    $0x8,%edi
4012b8:       e8 1b f8 ff ff          callq  400ad8 <exit@plt>
4012bd:       85 d2                   test   %edx,%edx
4012bf:       b8 31 24 40 00          mov    $0x402431,%eax
4012c4:       b9 3a 24 40 00          mov    $0x40243a,%ecx
4012c9:       48 0f 44 c8             cmove  %rax,%rcx
4012cd:       48 8d 9c 24 00 20 00    lea    0x2000(%rsp),%rbx
4012d4:       00
4012d5:       8b 15 f5 1e 20 00       mov    0x201ef5(%rip),%edx        # 6031d0 <bomb_id>
4012db:       be 42 24 40 00          mov    $0x402442,%esi
4012e0:       48 89 df                mov    %rbx,%rdi
4012e3:       b8 00 00 00 00          mov    $0x0,%eax
4012e8:       e8 6b f8 ff ff          callq  400b58 <sprintf@plt>
4012ed:       49 89 e0                mov    %rsp,%r8
4012f0:       b9 00 00 00 00          mov    $0x0,%ecx
4012f5:       48 89 da                mov    %rbx,%rdx
4012f8:       be e0 31 60 00          mov    $0x6031e0,%esi
4012fd:       bf d4 31 60 00          mov    $0x6031d4,%edi
401302:       e8 45 0d 00 00          callq  40204c <driver_post>
401307:       85 c0                   test   %eax,%eax
401309:       79 12                   jns    40131d <send_msg+0xb9>
40130b:       48 89 e7                mov    %rsp,%rdi
40130e:       e8 a5 f7 ff ff          callq  400ab8 <puts@plt>
401313:       bf 00 00 00 00          mov    $0x0,%edi
401318:       e8 bb f7 ff ff          callq  400ad8 <exit@plt>
40131d:       48 81 c4 00 40 00 00    add    $0x4000,%rsp
401324:       5b                      pop    %rbx
401325:       c3                      retq

0000000000401326 <phase_defused>:
401326:       48 83 ec 68             sub    $0x68,%rsp
40132a:       bf 01 00 00 00          mov    $0x1,%edi
40132f:       e8 30 ff ff ff          callq  401264 <send_msg>
401334:       83 3d 2d 25 20 00 06    cmpl   $0x6,0x20252d(%rip)        # 603868 <num_input_strings>
40133b:       75 6d                   jne    4013aa <phase_defused+0x84>
40133d:       48 8d 4c 24 08          lea    0x8(%rsp),%rcx
401342:       48 8d 54 24 0c          lea    0xc(%rsp),%rdx
401347:       4c 8d 44 24 10          lea    0x10(%rsp),%r8
40134c:       be 4e 24 40 00          mov    $0x40244e,%esi
401351:       bf 70 39 60 00          mov    $0x603970,%edi
401356:       b8 00 00 00 00          mov    $0x0,%eax
40135b:       e8 68 f7 ff ff          callq  400ac8 <__isoc99_sscanf@plt>
401360:       83 f8 03                cmp    $0x3,%eax
401363:       75 31                   jne    401396 <phase_defused+0x70>
401365:       48 8d 7c 24 10          lea    0x10(%rsp),%rdi
40136a:       be 57 24 40 00          mov    $0x402457,%esi
40136f:       e8 78 fe ff ff          callq  4011ec <strings_not_equal>
401374:       85 c0                   test   %eax,%eax
401376:       75 1e                   jne    401396 <phase_defused+0x70>
401378:       bf 30 25 40 00          mov    $0x402530,%edi
40137d:       e8 36 f7 ff ff          callq  400ab8 <puts@plt>
401382:       bf 58 25 40 00          mov    $0x402558,%edi
401387:       e8 2c f7 ff ff          callq  400ab8 <puts@plt>
40138c:       b8 00 00 00 00          mov    $0x0,%eax
401391:       e8 6d fb ff ff          callq  400f03 <secret_phase>
401396:       bf 90 25 40 00          mov    $0x402590,%edi
40139b:       e8 18 f7 ff ff          callq  400ab8 <puts@plt>
4013a0:       bf c0 25 40 00          mov    $0x4025c0,%edi
4013a5:       e8 0e f7 ff ff          callq  400ab8 <puts@plt>
4013aa:       48 83 c4 68             add    $0x68,%rsp
4013ae:       c3                      retq

00000000004013af <explode_bomb>:
4013af:       48 83 ec 08             sub    $0x8,%rsp
4013b3:       bf 5e 24 40 00          mov    $0x40245e,%edi
4013b8:       e8 fb f6 ff ff          callq  400ab8 <puts@plt>
4013bd:       bf 67 24 40 00          mov    $0x402467,%edi
4013c2:       e8 f1 f6 ff ff          callq  400ab8 <puts@plt>
4013c7:       bf 00 00 00 00          mov    $0x0,%edi
4013cc:       e8 93 fe ff ff          callq  401264 <send_msg>
4013d1:       bf 08 26 40 00          mov    $0x402608,%edi
4013d6:       e8 dd f6 ff ff          callq  400ab8 <puts@plt>
4013db:       bf 08 00 00 00          mov    $0x8,%edi
4013e0:       e8 f3 f6 ff ff          callq  400ad8 <exit@plt>

00000000004013e5 <read_six_numbers>:
4013e5:       48 83 ec 18             sub    $0x18,%rsp
4013e9:       48 89 f2                mov    %rsi,%rdx
4013ec:       48 8d 4e 04             lea    0x4(%rsi),%rcx
4013f0:       48 8d 46 14             lea    0x14(%rsi),%rax
4013f4:       48 89 44 24 08          mov    %rax,0x8(%rsp)
4013f9:       48 8d 46 10             lea    0x10(%rsi),%rax
4013fd:       48 89 04 24             mov    %rax,(%rsp)
401401:       4c 8d 4e 0c             lea    0xc(%rsi),%r9
401405:       4c 8d 46 08             lea    0x8(%rsi),%r8
401409:       be 7e 24 40 00          mov    $0x40247e,%esi
40140e:       b8 00 00 00 00          mov    $0x0,%eax
401413:       e8 b0 f6 ff ff          callq  400ac8 <__isoc99_sscanf@plt>
401418:       83 f8 05                cmp    $0x5,%eax
40141b:       7f 05                   jg     401422 <read_six_numbers+0x3d>
40141d:       e8 8d ff ff ff          callq  4013af <explode_bomb>
401422:       48 83 c4 18             add    $0x18,%rsp
401426:       c3                      retq

0000000000401427 <blank_line>:
401427:       55                      push   %rbp
401428:       53                      push   %rbx
401429:       48 83 ec 08             sub    $0x8,%rsp
40142d:       48 89 fd                mov    %rdi,%rbp
401430:       eb 1e                   jmp    401450 <blank_line+0x29>
401432:       e8 11 f7 ff ff          callq  400b48 <__ctype_b_loc@plt>
401437:       48 0f be db             movsbq %bl,%rbx
40143b:       48 8b 00                mov    (%rax),%rax
40143e:       f6 44 58 01 20          testb  $0x20,0x1(%rax,%rbx,2)
401443:       75 07                   jne    40144c <blank_line+0x25>
401445:       b8 00 00 00 00          mov    $0x0,%eax
40144a:       eb 11                   jmp    40145d <blank_line+0x36>
40144c:       48 83 c5 01             add    $0x1,%rbp
401450:       0f b6 5d 00             movzbl 0x0(%rbp),%ebx
401454:       84 db                   test   %bl,%bl
401456:       75 da                   jne    401432 <blank_line+0xb>
401458:       b8 01 00 00 00          mov    $0x1,%eax
40145d:       48 83 c4 08             add    $0x8,%rsp
401461:       5b                      pop    %rbx
401462:       5d                      pop    %rbp
401463:       c3                      retq

0000000000401464 <skip>:
401464:       53                      push   %rbx
401465:       48 63 05 fc 23 20 00    movslq 0x2023fc(%rip),%rax        # 603868 <num_input_strings>
40146c:       48 8d 3c 80             lea    (%rax,%rax,4),%rdi
401470:       48 c1 e7 04             shl    $0x4,%rdi
401474:       48 81 c7 80 38 60 00    add    $0x603880,%rdi
40147b:       48 8b 15 ee 23 20 00    mov    0x2023ee(%rip),%rdx        # 603870 <infile>
401482:       be 50 00 00 00          mov    $0x50,%esi
401487:       e8 9c f6 ff ff          callq  400b28 <fgets@plt>
40148c:       48 89 c3                mov    %rax,%rbx
40148f:       48 85 c0                test   %rax,%rax
401492:       74 0c                   je     4014a0 <skip+0x3c>
401494:       48 89 c7                mov    %rax,%rdi
401497:       e8 8b ff ff ff          callq  401427 <blank_line>
40149c:       85 c0                   test   %eax,%eax
40149e:       75 c5                   jne    401465 <skip+0x1>
4014a0:       48 89 d8                mov    %rbx,%rax
4014a3:       5b                      pop    %rbx
4014a4:       c3                      retq

00000000004014a5 <read_line>:
4014a5:       55                      push   %rbp
4014a6:       53                      push   %rbx
4014a7:       48 83 ec 08             sub    $0x8,%rsp
4014ab:       b8 00 00 00 00          mov    $0x0,%eax
4014b0:       e8 af ff ff ff          callq  401464 <skip>
4014b5:       48 85 c0                test   %rax,%rax
4014b8:       75 6e                   jne    401528 <read_line+0x83>
4014ba:       48 8b 05 7f 23 20 00    mov    0x20237f(%rip),%rax        # 603840 <__bss_start>
4014c1:       48 39 05 a8 23 20 00    cmp    %rax,0x2023a8(%rip)        # 603870 <infile>
4014c8:       75 14                   jne    4014de <read_line+0x39>
4014ca:       bf 90 24 40 00          mov    $0x402490,%edi
4014cf:       e8 e4 f5 ff ff          callq  400ab8 <puts@plt>
4014d4:       bf 08 00 00 00          mov    $0x8,%edi
4014d9:       e8 fa f5 ff ff          callq  400ad8 <exit@plt>
4014de:       bf ae 24 40 00          mov    $0x4024ae,%edi
4014e3:       e8 f0 f6 ff ff          callq  400bd8 <getenv@plt>
4014e8:       48 85 c0                test   %rax,%rax
4014eb:       74 0a                   je     4014f7 <read_line+0x52>
4014ed:       bf 00 00 00 00          mov    $0x0,%edi
4014f2:       e8 e1 f5 ff ff          callq  400ad8 <exit@plt>
4014f7:       48 8b 05 42 23 20 00    mov    0x202342(%rip),%rax        # 603840 <__bss_start>
4014fe:       48 89 05 6b 23 20 00    mov    %rax,0x20236b(%rip)        # 603870 <infile>
401505:       b8 00 00 00 00          mov    $0x0,%eax
40150a:       e8 55 ff ff ff          callq  401464 <skip>
40150f:       48 85 c0                test   %rax,%rax
401512:       75 14                   jne    401528 <read_line+0x83>
401514:       bf 90 24 40 00          mov    $0x402490,%edi
401519:       e8 9a f5 ff ff          callq  400ab8 <puts@plt>
40151e:       bf 00 00 00 00          mov    $0x0,%edi
401523:       e8 b0 f5 ff ff          callq  400ad8 <exit@plt>
401528:       bd 80 38 60 00          mov    $0x603880,%ebp
40152d:       48 63 05 34 23 20 00    movslq 0x202334(%rip),%rax        # 603868 <num_input_strings>
401534:       48 8d 04 80             lea    (%rax,%rax,4),%rax
401538:       48 c1 e0 04             shl    $0x4,%rax
40153c:       48 8d b8 80 38 60 00    lea    0x603880(%rax),%rdi
401543:       b8 00 00 00 00          mov    $0x0,%eax
401548:       48 c7 c1 ff ff ff ff    mov    $0xffffffffffffffff,%rcx
40154f:       f2 ae                   repnz scas %es:(%rdi),%al
401551:       48 f7 d1                not    %rcx
401554:       8d 59 ff                lea    -0x1(%rcx),%ebx
401557:       83 fb 4e                cmp    $0x4e,%ebx
40155a:       7e 48                   jle    4015a4 <read_line+0xff>
40155c:       bf b9 24 40 00          mov    $0x4024b9,%edi
401561:       e8 52 f5 ff ff          callq  400ab8 <puts@plt>
401566:       8b 05 fc 22 20 00       mov    0x2022fc(%rip),%eax        # 603868 <num_input_strings>
40156c:       8d 50 01                lea    0x1(%rax),%edx
40156f:       89 15 f3 22 20 00       mov    %edx,0x2022f3(%rip)        # 603868 <num_input_strings>
401575:       48 98                   cltq
401577:       48 8d 04 80             lea    (%rax,%rax,4),%rax
40157b:       48 c1 e0 04             shl    $0x4,%rax
40157f:       48 8d 44 05 00          lea    0x0(%rbp,%rax,1),%rax
401584:       c7 00 2a 2a 2a 74       movl   $0x742a2a2a,(%rax)
40158a:       c7 40 04 72 75 6e 63    movl   $0x636e7572,0x4(%rax)
401591:       c7 40 08 61 74 65 64    movl   $0x64657461,0x8(%rax)
401598:       c7 40 0c 2a 2a 2a 00    movl   $0x2a2a2a,0xc(%rax)
40159f:       e8 0b fe ff ff          callq  4013af <explode_bomb>
4015a4:       8b 0d be 22 20 00       mov    0x2022be(%rip),%ecx        # 603868 <num_input_strings>
4015aa:       83 eb 01                sub    $0x1,%ebx
4015ad:       48 63 db                movslq %ebx,%rbx
4015b0:       48 63 c1                movslq %ecx,%rax
4015b3:       48 8d 14 85 00 00 00    lea    0x0(,%rax,4),%rdx
4015ba:       00
4015bb:       48 8d 34 02             lea    (%rdx,%rax,1),%rsi
4015bf:       48 c1 e6 04             shl    $0x4,%rsi
4015c3:       c6 84 33 80 38 60 00    movb   $0x0,0x603880(%rbx,%rsi,1)
4015ca:       00
4015cb:       83 c1 01                add    $0x1,%ecx
4015ce:       89 0d 94 22 20 00       mov    %ecx,0x202294(%rip)        # 603868 <num_input_strings>
4015d4:       48 8d 44 35 00          lea    0x0(%rbp,%rsi,1),%rax
4015d9:       48 83 c4 08             add    $0x8,%rsp
4015dd:       5b                      pop    %rbx
4015de:       5d                      pop    %rbp
4015df:       c3                      retq

00000000004015e0 <initialize_bomb>:
4015e0:       55                      push   %rbp
4015e1:       53                      push   %rbx
4015e2:       48 81 ec 48 20 00 00    sub    $0x2048,%rsp
4015e9:       be 9d 16 40 00          mov    $0x40169d,%esi
4015ee:       bf 02 00 00 00          mov    $0x2,%edi
4015f3:       e8 c0 f5 ff ff          callq  400bb8 <signal@plt>
4015f8:       48 8d bc 24 00 20 00    lea    0x2000(%rsp),%rdi
4015ff:       00
401600:       be 40 00 00 00          mov    $0x40,%esi
401605:       e8 8e f5 ff ff          callq  400b98 <gethostname@plt>
40160a:       85 c0                   test   %eax,%eax
40160c:       75 1b                   jne    401629 <initialize_bomb+0x49>
40160e:       48 8b 3d 2b 1e 20 00    mov    0x201e2b(%rip),%rdi        # 603440 <host_table>
401615:       bb 48 34 60 00          mov    $0x603448,%ebx
40161a:       48 8d ac 24 00 20 00    lea    0x2000(%rsp),%rbp
401621:       00
401622:       48 85 ff                test   %rdi,%rdi
401625:       75 16                   jne    40163d <initialize_bomb+0x5d>
401627:       eb 56                   jmp    40167f <initialize_bomb+0x9f>
401629:       bf 30 26 40 00          mov    $0x402630,%edi
40162e:       e8 85 f4 ff ff          callq  400ab8 <puts@plt>
401633:       bf 08 00 00 00          mov    $0x8,%edi
401638:       e8 9b f4 ff ff          callq  400ad8 <exit@plt>
40163d:       48 89 ee                mov    %rbp,%rsi
401640:       e8 a3 f4 ff ff          callq  400ae8 <strcasecmp@plt>
401645:       85 c0                   test   %eax,%eax
401647:       74 0e                   je     401657 <initialize_bomb+0x77>
401649:       48 8b 3b                mov    (%rbx),%rdi
40164c:       48 83 c3 08             add    $0x8,%rbx
401650:       48 85 ff                test   %rdi,%rdi
401653:       75 e8                   jne    40163d <initialize_bomb+0x5d>
401655:       eb 28                   jmp    40167f <initialize_bomb+0x9f>
401657:       48 89 e7                mov    %rsp,%rdi
40165a:       e8 91 00 00 00          callq  4016f0 <init_driver>
40165f:       85 c0                   test   %eax,%eax
401661:       79 30                   jns    401693 <initialize_bomb+0xb3>
401663:       48 89 e6                mov    %rsp,%rsi
401666:       bf d4 24 40 00          mov    $0x4024d4,%edi
40166b:       b8 00 00 00 00          mov    $0x0,%eax
401670:       e8 13 f4 ff ff          callq  400a88 <printf@plt>
401675:       bf 08 00 00 00          mov    $0x8,%edi
40167a:       e8 59 f4 ff ff          callq  400ad8 <exit@plt>
40167f:       bf 68 26 40 00          mov    $0x402668,%edi
401684:       e8 2f f4 ff ff          callq  400ab8 <puts@plt>
401689:       bf 08 00 00 00          mov    $0x8,%edi
40168e:       e8 45 f4 ff ff          callq  400ad8 <exit@plt>
401693:       48 81 c4 48 20 00 00    add    $0x2048,%rsp
40169a:       5b                      pop    %rbx
40169b:       5d                      pop    %rbp
40169c:       c3                      retq

000000000040169d <sig_handler>:
40169d:       48 83 ec 08             sub    $0x8,%rsp
4016a1:       bf a0 26 40 00          mov    $0x4026a0,%edi
4016a6:       e8 0d f4 ff ff          callq  400ab8 <puts@plt>
4016ab:       bf 03 00 00 00          mov    $0x3,%edi
4016b0:       e8 b3 f4 ff ff          callq  400b68 <sleep@plt>
4016b5:       bf ee 24 40 00          mov    $0x4024ee,%edi
4016ba:       b8 00 00 00 00          mov    $0x0,%eax
4016bf:       e8 c4 f3 ff ff          callq  400a88 <printf@plt>
4016c4:       48 8b 3d 85 21 20 00    mov    0x202185(%rip),%rdi        # 603850 <stdout@@GLIBC_2.2.5>
4016cb:       e8 68 f5 ff ff          callq  400c38 <fflush@plt>
4016d0:       bf 01 00 00 00          mov    $0x1,%edi
4016d5:       e8 8e f4 ff ff          callq  400b68 <sleep@plt>
4016da:       bf f6 24 40 00          mov    $0x4024f6,%edi
4016df:       e8 d4 f3 ff ff          callq  400ab8 <puts@plt>
4016e4:       bf 10 00 00 00          mov    $0x10,%edi
4016e9:       e8 ea f3 ff ff          callq  400ad8 <exit@plt>
4016ee:       90                      nop
4016ef:       90                      nop

00000000004016f0 <init_driver>:
4016f0:       41 54                   push   %r12
4016f2:       55                      push   %rbp
4016f3:       53                      push   %rbx
4016f4:       48 83 ec 10             sub    $0x10,%rsp
4016f8:       49 89 fc                mov    %rdi,%r12
4016fb:       be 01 00 00 00          mov    $0x1,%esi
401700:       bf 0d 00 00 00          mov    $0xd,%edi
401705:       e8 ae f4 ff ff          callq  400bb8 <signal@plt>
40170a:       be 01 00 00 00          mov    $0x1,%esi
40170f:       bf 1d 00 00 00          mov    $0x1d,%edi
401714:       e8 9f f4 ff ff          callq  400bb8 <signal@plt>
401719:       be 01 00 00 00          mov    $0x1,%esi
40171e:       bf 1d 00 00 00          mov    $0x1d,%edi
401723:       e8 90 f4 ff ff          callq  400bb8 <signal@plt>
401728:       ba 00 00 00 00          mov    $0x0,%edx
40172d:       be 01 00 00 00          mov    $0x1,%esi
401732:       bf 02 00 00 00          mov    $0x2,%edi
401737:       e8 8c f4 ff ff          callq  400bc8 <socket@plt>
40173c:       89 c5                   mov    %eax,%ebp
40173e:       85 c0                   test   %eax,%eax
401740:       79 62                   jns    4017a4 <init_driver+0xb4>
401742:       41 c7 04 24 45 72 72    movl   $0x6f727245,(%r12)
401749:       6f
40174a:       41 c7 44 24 04 72 3a    movl   $0x43203a72,0x4(%r12)
401751:       20 43
401753:       41 c7 44 24 08 6c 69    movl   $0x6e65696c,0x8(%r12)
40175a:       65 6e
40175c:       41 c7 44 24 0c 74 20    movl   $0x6e752074,0xc(%r12)
401763:       75 6e
401765:       41 c7 44 24 10 61 62    movl   $0x656c6261,0x10(%r12)
40176c:       6c 65
40176e:       41 c7 44 24 14 20 74    movl   $0x206f7420,0x14(%r12)
401775:       6f 20
401777:       41 c7 44 24 18 63 72    movl   $0x61657263,0x18(%r12)
40177e:       65 61
401780:       41 c7 44 24 1c 74 65    movl   $0x73206574,0x1c(%r12)
401787:       20 73
401789:       41 c7 44 24 20 6f 63    movl   $0x656b636f,0x20(%r12)
401790:       6b 65
401792:       66 41 c7 44 24 24 74    movw   $0x74,0x24(%r12)
401799:       00
40179a:       b8 ff ff ff ff          mov    $0xffffffff,%eax
40179f:       e9 18 01 00 00          jmpq   4018bc <init_driver+0x1cc>
4017a4:       bf fe 24 40 00          mov    $0x4024fe,%edi
4017a9:       e8 fa f2 ff ff          callq  400aa8 <gethostbyname@plt>
4017ae:       48 85 c0                test   %rax,%rax
4017b1:       0f 85 81 00 00 00       jne    401838 <init_driver+0x148>
4017b7:       41 c7 04 24 45 72 72    movl   $0x6f727245,(%r12)
4017be:       6f
4017bf:       41 c7 44 24 04 72 3a    movl   $0x44203a72,0x4(%r12)
4017c6:       20 44
4017c8:       41 c7 44 24 08 4e 53    movl   $0x6920534e,0x8(%r12)
4017cf:       20 69
4017d1:       41 c7 44 24 0c 73 20    movl   $0x6e752073,0xc(%r12)
4017d8:       75 6e
4017da:       41 c7 44 24 10 61 62    movl   $0x656c6261,0x10(%r12)
4017e1:       6c 65
4017e3:       41 c7 44 24 14 20 74    movl   $0x206f7420,0x14(%r12)
4017ea:       6f 20
4017ec:       41 c7 44 24 18 72 65    movl   $0x6f736572,0x18(%r12)
4017f3:       73 6f
4017f5:       41 c7 44 24 1c 6c 76    movl   $0x2065766c,0x1c(%r12)
4017fc:       65 20
4017fe:       41 c7 44 24 20 73 65    movl   $0x76726573,0x20(%r12)
401805:       72 76
401807:       41 c7 44 24 24 65 72    movl   $0x61207265,0x24(%r12)
40180e:       20 61
401810:       41 c7 44 24 28 64 64    movl   $0x65726464,0x28(%r12)
401817:       72 65
401819:       66 41 c7 44 24 2c 73    movw   $0x7373,0x2c(%r12)
401820:       73
401821:       41 c6 44 24 2e 00       movb   $0x0,0x2e(%r12)
401827:       89 ef                   mov    %ebp,%edi
401829:       e8 6a f2 ff ff          callq  400a98 <close@plt>
40182e:       b8 ff ff ff ff          mov    $0xffffffff,%eax
401833:       e9 84 00 00 00          jmpq   4018bc <init_driver+0x1cc>
401838:       48 c7 04 24 00 00 00    movq   $0x0,(%rsp)
40183f:       00
401840:       48 c7 44 24 08 00 00    movq   $0x0,0x8(%rsp)
401847:       00 00
401849:       66 c7 04 24 02 00       movw   $0x2,(%rsp)
40184f:       48 63 50 14             movslq 0x14(%rax),%rdx
401853:       48 8d 74 24 04          lea    0x4(%rsp),%rsi
401858:       48 8b 40 18             mov    0x18(%rax),%rax
40185c:       48 8b 38                mov    (%rax),%rdi
40185f:       e8 d4 f2 ff ff          callq  400b38 <bcopy@plt>
401864:       66 c7 44 24 02 3b 6e    movw   $0x6e3b,0x2(%rsp)
40186b:       ba 10 00 00 00          mov    $0x10,%edx
401870:       48 89 e6                mov    %rsp,%rsi
401873:       89 ef                   mov    %ebp,%edi
401875:       e8 0e f3 ff ff          callq  400b88 <connect@plt>
40187a:       85 c0                   test   %eax,%eax
40187c:       79 25                   jns    4018a3 <init_driver+0x1b3>
40187e:       ba fe 24 40 00          mov    $0x4024fe,%edx
401883:       be 28 27 40 00          mov    $0x402728,%esi
401888:       4c 89 e7                mov    %r12,%rdi
40188b:       b8 00 00 00 00          mov    $0x0,%eax
401890:       e8 c3 f2 ff ff          callq  400b58 <sprintf@plt>
401895:       89 ef                   mov    %ebp,%edi
401897:       e8 fc f1 ff ff          callq  400a98 <close@plt>
40189c:       b8 ff ff ff ff          mov    $0xffffffff,%eax
4018a1:       eb 19                   jmp    4018bc <init_driver+0x1cc>
4018a3:       89 ef                   mov    %ebp,%edi
4018a5:       e8 ee f1 ff ff          callq  400a98 <close@plt>
4018aa:       66 41 c7 04 24 4f 4b    movw   $0x4b4f,(%r12)
4018b1:       41 c6 44 24 02 00       movb   $0x0,0x2(%r12)
4018b7:       b8 00 00 00 00          mov    $0x0,%eax
4018bc:       48 83 c4 10             add    $0x10,%rsp
4018c0:       5b                      pop    %rbx
4018c1:       5d                      pop    %rbp
4018c2:       41 5c                   pop    %r12
4018c4:       c3                      retq

00000000004018c5 <init_timeout>:
4018c5:       53                      push   %rbx
4018c6:       89 fb                   mov    %edi,%ebx
4018c8:       85 ff                   test   %edi,%edi
4018ca:       74 1e                   je     4018ea <init_timeout+0x25>
4018cc:       be c3 20 40 00          mov    $0x4020c3,%esi
4018d1:       bf 0e 00 00 00          mov    $0xe,%edi
4018d6:       e8 dd f2 ff ff          callq  400bb8 <signal@plt>
4018db:       85 db                   test   %ebx,%ebx
4018dd:       bf 00 00 00 00          mov    $0x0,%edi
4018e2:       0f 49 fb                cmovns %ebx,%edi
4018e5:       e8 fe f2 ff ff          callq  400be8 <alarm@plt>
4018ea:       5b                      pop    %rbx
4018eb:       c3                      retq

00000000004018ec <rio_readlineb>:
4018ec:       41 57                   push   %r15
4018ee:       41 56                   push   %r14
4018f0:       41 55                   push   %r13
4018f2:       41 54                   push   %r12
4018f4:       55                      push   %rbp
4018f5:       53                      push   %rbx
4018f6:       48 83 ec 28             sub    $0x28,%rsp
4018fa:       48 89 fb                mov    %rdi,%rbx
4018fd:       48 89 14 24             mov    %rdx,(%rsp)
401901:       49 89 f7                mov    %rsi,%r15
401904:       48 83 fa 01             cmp    $0x1,%rdx
401908:       0f 86 c0 00 00 00       jbe    4019ce <rio_readlineb+0xe2>
40190e:       4c 8d 6f 10             lea    0x10(%rdi),%r13
401912:       4d 89 ec                mov    %r13,%r12
401915:       41 be 01 00 00 00       mov    $0x1,%r14d
40191b:       eb 38                   jmp    401955 <rio_readlineb+0x69>
40191d:       ba 00 20 00 00          mov    $0x2000,%edx
401922:       4c 89 ee                mov    %r13,%rsi
401925:       8b 3b                   mov    (%rbx),%edi
401927:       e8 cc f1 ff ff          callq  400af8 <read@plt>
40192c:       89 43 04                mov    %eax,0x4(%rbx)
40192f:       85 c0                   test   %eax,%eax
401931:       79 16                   jns    401949 <rio_readlineb+0x5d>
401933:       e8 c0 f2 ff ff          callq  400bf8 <__errno_location@plt>
401938:       83 38 04                cmpl   $0x4,(%rax)
40193b:       74 18                   je     401955 <rio_readlineb+0x69>
40193d:       48 c7 c2 ff ff ff ff    mov    $0xffffffffffffffff,%rdx
401944:       e9 a6 00 00 00          jmpq   4019ef <rio_readlineb+0x103>
401949:       85 c0                   test   %eax,%eax
40194b:       0f 84 99 00 00 00       je     4019ea <rio_readlineb+0xfe>
401951:       4c 89 63 08             mov    %r12,0x8(%rbx)
401955:       8b 6b 04                mov    0x4(%rbx),%ebp
401958:       85 ed                   test   %ebp,%ebp
40195a:       7e c1                   jle    40191d <rio_readlineb+0x31>
40195c:       85 ed                   test   %ebp,%ebp
40195e:       0f 85 90 00 00 00       jne    4019f4 <rio_readlineb+0x108>
401964:       48 63 c5                movslq %ebp,%rax
401967:       48 89 44 24 08          mov    %rax,0x8(%rsp)
40196c:       48 8b 73 08             mov    0x8(%rbx),%rsi
401970:       48 89 c2                mov    %rax,%rdx
401973:       48 8d 7c 24 1f          lea    0x1f(%rsp),%rdi
401978:       e8 2b f2 ff ff          callq  400ba8 <memcpy@plt>
40197d:       48 8b 44 24 08          mov    0x8(%rsp),%rax
401982:       48 01 43 08             add    %rax,0x8(%rbx)
401986:       29 6b 04                sub    %ebp,0x4(%rbx)
401989:       89 c2                   mov    %eax,%edx
40198b:       83 f8 01                cmp    $0x1,%eax
40198e:       75 15                   jne    4019a5 <rio_readlineb+0xb9>
401990:       0f b6 44 24 1f          movzbl 0x1f(%rsp),%eax
401995:       41 88 07                mov    %al,(%r15)
401998:       49 83 c7 01             add    $0x1,%r15
40199c:       80 7c 24 1f 0a          cmpb   $0xa,0x1f(%rsp)
4019a1:       75 1c                   jne    4019bf <rio_readlineb+0xd3>
4019a3:       eb 2f                   jmp    4019d4 <rio_readlineb+0xe8>
4019a5:       44 89 f1                mov    %r14d,%ecx
4019a8:       48 c7 c0 ff ff ff ff    mov    $0xffffffffffffffff,%rax
4019af:       85 d2                   test   %edx,%edx
4019b1:       75 28                   jne    4019db <rio_readlineb+0xef>
4019b3:       b8 00 00 00 00          mov    $0x0,%eax
4019b8:       83 f9 01                cmp    $0x1,%ecx
4019bb:       75 17                   jne    4019d4 <rio_readlineb+0xe8>
4019bd:       eb 1c                   jmp    4019db <rio_readlineb+0xef>
4019bf:       41 83 c6 01             add    $0x1,%r14d
4019c3:       49 63 c6                movslq %r14d,%rax
4019c6:       48 3b 04 24             cmp    (%rsp),%rax
4019ca:       72 89                   jb     401955 <rio_readlineb+0x69>
4019cc:       eb 06                   jmp    4019d4 <rio_readlineb+0xe8>
4019ce:       41 be 01 00 00 00       mov    $0x1,%r14d
4019d4:       41 c6 07 00             movb   $0x0,(%r15)
4019d8:       49 63 c6                movslq %r14d,%rax
4019db:       48 83 c4 28             add    $0x28,%rsp
4019df:       5b                      pop    %rbx
4019e0:       5d                      pop    %rbp
4019e1:       41 5c                   pop    %r12
4019e3:       41 5d                   pop    %r13
4019e5:       41 5e                   pop    %r14
4019e7:       41 5f                   pop    %r15
4019e9:       c3                      retq
4019ea:       ba 00 00 00 00          mov    $0x0,%edx
4019ef:       44 89 f1                mov    %r14d,%ecx
4019f2:       eb b4                   jmp    4019a8 <rio_readlineb+0xbc>
4019f4:       48 8b 43 08             mov    0x8(%rbx),%rax
4019f8:       0f b6 00                movzbl (%rax),%eax
4019fb:       88 44 24 1f             mov    %al,0x1f(%rsp)
4019ff:       48 83 43 08 01          addq   $0x1,0x8(%rbx)
401a04:       83 6b 04 01             subl   $0x1,0x4(%rbx)
401a08:       eb 86                   jmp    401990 <rio_readlineb+0xa4>

0000000000401a0a <submitr>:
401a0a:       41 57                   push   %r15
401a0c:       41 56                   push   %r14
401a0e:       41 55                   push   %r13
401a10:       41 54                   push   %r12
401a12:       55                      push   %rbp
401a13:       53                      push   %rbx
401a14:       48 81 ec 78 a0 00 00    sub    $0xa078,%rsp
401a1b:       48 89 fb                mov    %rdi,%rbx
401a1e:       89 f5                   mov    %esi,%ebp
401a20:       48 89 54 24 18          mov    %rdx,0x18(%rsp)
401a25:       48 89 4c 24 20          mov    %rcx,0x20(%rsp)
401a2a:       4c 89 44 24 28          mov    %r8,0x28(%rsp)
401a2f:       4d 89 cf                mov    %r9,%r15
401a32:       4c 8b a4 24 b0 a0 00    mov    0xa0b0(%rsp),%r12
401a39:       00
401a3a:       4c 8b b4 24 b8 a0 00    mov    0xa0b8(%rsp),%r14
401a41:       00
401a42:       c7 84 24 4c 20 00 00    movl   $0x0,0x204c(%rsp)
401a49:       00 00 00 00
401a4d:       ba 00 00 00 00          mov    $0x0,%edx
401a52:       be 01 00 00 00          mov    $0x1,%esi
401a57:       bf 02 00 00 00          mov    $0x2,%edi
401a5c:       e8 67 f1 ff ff          callq  400bc8 <socket@plt>
401a61:       41 89 c5                mov    %eax,%r13d
401a64:       85 c0                   test   %eax,%eax
401a66:       79 19                   jns    401a81 <submitr+0x77>
401a68:       be 50 27 40 00          mov    $0x402750,%esi
401a6d:       b9 26 00 00 00          mov    $0x26,%ecx
401a72:       4c 89 f7                mov    %r14,%rdi
401a75:       f3 a4                   rep movsb %ds:(%rsi),%es:(%rdi)
401a77:       b8 ff ff ff ff          mov    $0xffffffff,%eax
401a7c:       e9 4a 05 00 00          jmpq   401fcb <submitr+0x5c1>
401a81:       48 89 df                mov    %rbx,%rdi
401a84:       e8 1f f0 ff ff          callq  400aa8 <gethostbyname@plt>
401a89:       48 85 c0                test   %rax,%rax
401a8c:       75 21                   jne    401aaf <submitr+0xa5>
401a8e:       be 78 27 40 00          mov    $0x402778,%esi
401a93:       b9 2f 00 00 00          mov    $0x2f,%ecx
401a98:       4c 89 f7                mov    %r14,%rdi
401a9b:       f3 a4                   rep movsb %ds:(%rsi),%es:(%rdi)
401a9d:       44 89 ef                mov    %r13d,%edi
401aa0:       e8 f3 ef ff ff          callq  400a98 <close@plt>
401aa5:       b8 ff ff ff ff          mov    $0xffffffff,%eax
401aaa:       e9 1c 05 00 00          jmpq   401fcb <submitr+0x5c1>
401aaf:       48 8d 9c 24 60 a0 00    lea    0xa060(%rsp),%rbx
401ab6:       00
401ab7:       48 c7 03 00 00 00 00    movq   $0x0,(%rbx)
401abe:       48 c7 43 08 00 00 00    movq   $0x0,0x8(%rbx)
401ac5:       00
401ac6:       66 c7 84 24 60 a0 00    movw   $0x2,0xa060(%rsp)
401acd:       00 02 00
401ad0:       48 63 50 14             movslq 0x14(%rax),%rdx
401ad4:       48 8d 73 04             lea    0x4(%rbx),%rsi
401ad8:       48 8b 40 18             mov    0x18(%rax),%rax
401adc:       48 8b 38                mov    (%rax),%rdi
401adf:       e8 54 f0 ff ff          callq  400b38 <bcopy@plt>
401ae4:       66 c1 cd 08             ror    $0x8,%bp
401ae8:       66 89 ac 24 62 a0 00    mov    %bp,0xa062(%rsp)
401aef:       00
401af0:       ba 10 00 00 00          mov    $0x10,%edx
401af5:       48 89 de                mov    %rbx,%rsi
401af8:       44 89 ef                mov    %r13d,%edi
401afb:       e8 88 f0 ff ff          callq  400b88 <connect@plt>
401b00:       85 c0                   test   %eax,%eax
401b02:       79 21                   jns    401b25 <submitr+0x11b>
401b04:       be a8 27 40 00          mov    $0x4027a8,%esi
401b09:       b9 27 00 00 00          mov    $0x27,%ecx
401b0e:       4c 89 f7                mov    %r14,%rdi
401b11:       f3 a4                   rep movsb %ds:(%rsi),%es:(%rdi)
401b13:       44 89 ef                mov    %r13d,%edi
401b16:       e8 7d ef ff ff          callq  400a98 <close@plt>
401b1b:       b8 ff ff ff ff          mov    $0xffffffff,%eax
401b20:       e9 a6 04 00 00          jmpq   401fcb <submitr+0x5c1>
401b25:       48 c7 c2 ff ff ff ff    mov    $0xffffffffffffffff,%rdx
401b2c:       4c 89 e7                mov    %r12,%rdi
401b2f:       b8 00 00 00 00          mov    $0x0,%eax
401b34:       48 89 d1                mov    %rdx,%rcx
401b37:       f2 ae                   repnz scas %es:(%rdi),%al
401b39:       48 89 cb                mov    %rcx,%rbx
401b3c:       48 f7 d3                not    %rbx
401b3f:       48 8b 7c 24 18          mov    0x18(%rsp),%rdi
401b44:       48 89 d1                mov    %rdx,%rcx
401b47:       f2 ae                   repnz scas %es:(%rdi),%al
401b49:       48 89 ce                mov    %rcx,%rsi
401b4c:       48 8b 7c 24 20          mov    0x20(%rsp),%rdi
401b51:       48 89 d1                mov    %rdx,%rcx
401b54:       f2 ae                   repnz scas %es:(%rdi),%al
401b56:       48 89 cd                mov    %rcx,%rbp
401b59:       48 f7 d5                not    %rbp
401b5c:       4c 89 ff                mov    %r15,%rdi
401b5f:       48 89 d1                mov    %rdx,%rcx
401b62:       f2 ae                   repnz scas %es:(%rdi),%al
401b64:       48 29 f5                sub    %rsi,%rbp
401b67:       48 29 cd                sub    %rcx,%rbp
401b6a:       48 8d 5c 5b fd          lea    -0x3(%rbx,%rbx,2),%rbx
401b6f:       48 8d 44 1d 7b          lea    0x7b(%rbp,%rbx,1),%rax
401b74:       48 3d 00 20 00 00       cmp    $0x2000,%rax
401b7a:       0f 86 81 00 00 00       jbe    401c01 <submitr+0x1f7>
401b80:       41 c7 06 45 72 72 6f    movl   $0x6f727245,(%r14)
401b87:       41 c7 46 04 72 3a 20    movl   $0x52203a72,0x4(%r14)
401b8e:       52
401b8f:       41 c7 46 08 65 73 75    movl   $0x6c757365,0x8(%r14)
401b96:       6c
401b97:       41 c7 46 0c 74 20 73    movl   $0x74732074,0xc(%r14)
401b9e:       74
401b9f:       41 c7 46 10 72 69 6e    movl   $0x676e6972,0x10(%r14)
401ba6:       67
401ba7:       41 c7 46 14 20 74 6f    movl   $0x6f6f7420,0x14(%r14)
401bae:       6f
401baf:       41 c7 46 18 20 6c 61    movl   $0x72616c20,0x18(%r14)
401bb6:       72
401bb7:       41 c7 46 1c 67 65 2e    movl   $0x202e6567,0x1c(%r14)
401bbe:       20
401bbf:       41 c7 46 20 49 6e 63    movl   $0x72636e49,0x20(%r14)
401bc6:       72
401bc7:       41 c7 46 24 65 61 73    movl   $0x65736165,0x24(%r14)
401bce:       65
401bcf:       41 c7 46 28 20 53 55    movl   $0x42555320,0x28(%r14)
401bd6:       42
401bd7:       41 c7 46 2c 4d 49 54    movl   $0x5254494d,0x2c(%r14)
401bde:       52
401bdf:       41 c7 46 30 5f 4d 41    movl   $0x58414d5f,0x30(%r14)
401be6:       58
401be7:       41 c7 46 34 42 55 46    movl   $0x465542,0x34(%r14)
401bee:       00
401bef:       44 89 ef                mov    %r13d,%edi
401bf2:       e8 a1 ee ff ff          callq  400a98 <close@plt>
401bf7:       b8 ff ff ff ff          mov    $0xffffffff,%eax
401bfc:       e9 ca 03 00 00          jmpq   401fcb <submitr+0x5c1>
401c01:       48 8d 94 24 50 40 00    lea    0x4050(%rsp),%rdx
401c08:       00
401c09:       b9 00 04 00 00          mov    $0x400,%ecx
401c0e:       b8 00 00 00 00          mov    $0x0,%eax
401c13:       48 89 d7                mov    %rdx,%rdi
401c16:       f3 48 ab                rep stos %rax,%es:(%rdi)
401c19:       4c 89 e7                mov    %r12,%rdi
401c1c:       48 c7 c1 ff ff ff ff    mov    $0xffffffffffffffff,%rcx
401c23:       f2 ae                   repnz scas %es:(%rdi),%al
401c25:       48 f7 d1                not    %rcx
401c28:       83 e9 01                sub    $0x1,%ecx
401c2b:       0f 84 ac 03 00 00       je     401fdd <submitr+0x5d3>
401c31:       48 89 d3                mov    %rdx,%rbx
401c34:       4c 89 e5                mov    %r12,%rbp
401c37:       44 8d 61 ff             lea    -0x1(%rcx),%r12d
401c3b:       0f b6 45 00             movzbl 0x0(%rbp),%eax
401c3f:       3c 2a                   cmp    $0x2a,%al
401c41:       74 27                   je     401c6a <submitr+0x260>
401c43:       3c 2d                   cmp    $0x2d,%al
401c45:       74 23                   je     401c6a <submitr+0x260>
401c47:       3c 2e                   cmp    $0x2e,%al
401c49:       74 1f                   je     401c6a <submitr+0x260>
401c4b:       3c 5f                   cmp    $0x5f,%al
401c4d:       0f 1f 00                nopl   (%rax)
401c50:       74 18                   je     401c6a <submitr+0x260>
401c52:       8d 50 d0                lea    -0x30(%rax),%edx
401c55:       80 fa 09                cmp    $0x9,%dl
401c58:       76 10                   jbe    401c6a <submitr+0x260>
401c5a:       8d 50 bf                lea    -0x41(%rax),%edx
401c5d:       80 fa 19                cmp    $0x19,%dl
401c60:       76 08                   jbe    401c6a <submitr+0x260>
401c62:       8d 50 9f                lea    -0x61(%rax),%edx
401c65:       80 fa 19                cmp    $0x19,%dl
401c68:       77 08                   ja     401c72 <submitr+0x268>
401c6a:       88 03                   mov    %al,(%rbx)
401c6c:       48 83 c3 01             add    $0x1,%rbx
401c70:       eb 4b                   jmp    401cbd <submitr+0x2b3>
401c72:       3c 20                   cmp    $0x20,%al
401c74:       75 09                   jne    401c7f <submitr+0x275>
401c76:       c6 03 2b                movb   $0x2b,(%rbx)
401c79:       48 83 c3 01             add    $0x1,%rbx
401c7d:       eb 3e                   jmp    401cbd <submitr+0x2b3>
401c7f:       8d 50 e0                lea    -0x20(%rax),%edx
401c82:       80 fa 5f                cmp    $0x5f,%dl
401c85:       76 04                   jbe    401c8b <submitr+0x281>
401c87:       3c 09                   cmp    $0x9,%al
401c89:       75 48                   jne    401cd3 <submitr+0x2c9>
401c8b:       0f b6 d0                movzbl %al,%edx
401c8e:       be d8 26 40 00          mov    $0x4026d8,%esi
401c93:       48 8d 7c 24 30          lea    0x30(%rsp),%rdi
401c98:       b8 00 00 00 00          mov    $0x0,%eax
401c9d:       e8 b6 ee ff ff          callq  400b58 <sprintf@plt>
401ca2:       0f b6 44 24 30          movzbl 0x30(%rsp),%eax
401ca7:       88 03                   mov    %al,(%rbx)
401ca9:       0f b6 44 24 31          movzbl 0x31(%rsp),%eax
401cae:       88 43 01                mov    %al,0x1(%rbx)
401cb1:       0f b6 44 24 32          movzbl 0x32(%rsp),%eax
401cb6:       88 43 02                mov    %al,0x2(%rbx)
401cb9:       48 83 c3 03             add    $0x3,%rbx
401cbd:       45 85 e4                test   %r12d,%r12d
401cc0:       0f 84 17 03 00 00       je     401fdd <submitr+0x5d3>
401cc6:       48 83 c5 01             add    $0x1,%rbp
401cca:       41 83 ec 01             sub    $0x1,%r12d
401cce:       e9 68 ff ff ff          jmpq   401c3b <submitr+0x231>
401cd3:       be d0 27 40 00          mov    $0x4027d0,%esi
401cd8:       b9 43 00 00 00          mov    $0x43,%ecx
401cdd:       4c 89 f7                mov    %r14,%rdi
401ce0:       f3 a4                   rep movsb %ds:(%rsi),%es:(%rdi)
401ce2:       44 89 ef                mov    %r13d,%edi
401ce5:       e8 ae ed ff ff          callq  400a98 <close@plt>
401cea:       b8 ff ff ff ff          mov    $0xffffffff,%eax
401cef:       e9 d7 02 00 00          jmpq   401fcb <submitr+0x5c1>
401cf4:       48 01 c5                add    %rax,%rbp
401cf7:       48 89 da                mov    %rbx,%rdx
401cfa:       48 89 ee                mov    %rbp,%rsi
401cfd:       44 89 ef                mov    %r13d,%edi
401d00:       e8 23 ef ff ff          callq  400c28 <write@plt>
401d05:       48 85 c0                test   %rax,%rax
401d08:       7f 0d                   jg     401d17 <submitr+0x30d>
401d0a:       e8 e9 ee ff ff          callq  400bf8 <__errno_location@plt>
401d0f:       83 38 04                cmpl   $0x4,(%rax)
401d12:       75 0d                   jne    401d21 <submitr+0x317>
401d14:       4c 89 f8                mov    %r15,%rax
401d17:       48 29 c3                sub    %rax,%rbx
401d1a:       75 d8                   jne    401cf4 <submitr+0x2ea>
401d1c:       4d 85 e4                test   %r12,%r12
401d1f:       79 5d                   jns    401d7e <submitr+0x374>
401d21:       4c 89 f7                mov    %r14,%rdi
401d24:       be 18 28 40 00          mov    $0x402818,%esi
401d29:       b8 2c 00 00 00          mov    $0x2c,%eax
401d2e:       41 f6 c6 01             test   $0x1,%r14b
401d32:       74 04                   je     401d38 <submitr+0x32e>
401d34:       a4                      movsb  %ds:(%rsi),%es:(%rdi)
401d35:       83 e8 01                sub    $0x1,%eax
401d38:       40 f6 c7 02             test   $0x2,%dil
401d3c:       74 05                   je     401d43 <submitr+0x339>
401d3e:       66 a5                   movsw  %ds:(%rsi),%es:(%rdi)
401d40:       83 e8 02                sub    $0x2,%eax
401d43:       89 c1                   mov    %eax,%ecx
401d45:       c1 e9 02                shr    $0x2,%ecx
401d48:       89 c9                   mov    %ecx,%ecx
401d4a:       f3 a5                   rep movsl %ds:(%rsi),%es:(%rdi)
401d4c:       ba 00 00 00 00          mov    $0x0,%edx
401d51:       a8 02                   test   $0x2,%al
401d53:       74 0c                   je     401d61 <submitr+0x357>
401d55:       0f b7 0c 16             movzwl (%rsi,%rdx,1),%ecx
401d59:       66 89 0c 17             mov    %cx,(%rdi,%rdx,1)
401d5d:       48 83 c2 02             add    $0x2,%rdx
401d61:       a8 01                   test   $0x1,%al
401d63:       74 07                   je     401d6c <submitr+0x362>
401d65:       0f b6 04 16             movzbl (%rsi,%rdx,1),%eax
401d69:       88 04 17                mov    %al,(%rdi,%rdx,1)
401d6c:       44 89 ef                mov    %r13d,%edi
401d6f:       e8 24 ed ff ff          callq  400a98 <close@plt>
401d74:       b8 ff ff ff ff          mov    $0xffffffff,%eax
401d79:       e9 4d 02 00 00          jmpq   401fcb <submitr+0x5c1>
401d7e:       44 89 ac 24 50 80 00    mov    %r13d,0x8050(%rsp)
401d85:       00
401d86:       c7 84 24 54 80 00 00    movl   $0x0,0x8054(%rsp)
401d8d:       00 00 00 00
401d91:       48 8d bc 24 50 80 00    lea    0x8050(%rsp),%rdi
401d98:       00
401d99:       48 8d 47 10             lea    0x10(%rdi),%rax
401d9d:       48 89 84 24 58 80 00    mov    %rax,0x8058(%rsp)
401da4:       00
401da5:       48 8d b4 24 50 60 00    lea    0x6050(%rsp),%rsi
401dac:       00
401dad:       ba 00 20 00 00          mov    $0x2000,%edx
401db2:       e8 35 fb ff ff          callq  4018ec <rio_readlineb>
401db7:       48 85 c0                test   %rax,%rax
401dba:       7f 21                   jg     401ddd <submitr+0x3d3>
401dbc:       be 48 28 40 00          mov    $0x402848,%esi
401dc1:       b9 36 00 00 00          mov    $0x36,%ecx
401dc6:       4c 89 f7                mov    %r14,%rdi
401dc9:       f3 a4                   rep movsb %ds:(%rsi),%es:(%rdi)
401dcb:       44 89 ef                mov    %r13d,%edi
401dce:       e8 c5 ec ff ff          callq  400a98 <close@plt>
401dd3:       b8 ff ff ff ff          mov    $0xffffffff,%eax
401dd8:       e9 ee 01 00 00          jmpq   401fcb <submitr+0x5c1>
401ddd:       4c 8d bc 24 50 60 00    lea    0x6050(%rsp),%r15
401de4:       00
401de5:       48 8d 8c 24 4c 20 00    lea    0x204c(%rsp),%rcx
401dec:       00
401ded:       48 8d 94 24 50 20 00    lea    0x2050(%rsp),%rdx
401df4:       00
401df5:       4c 8d 44 24 40          lea    0x40(%rsp),%r8
401dfa:       be df 26 40 00          mov    $0x4026df,%esi
401dff:       4c 89 ff                mov    %r15,%rdi
401e02:       b8 00 00 00 00          mov    $0x0,%eax
401e07:       e8 bc ec ff ff          callq  400ac8 <__isoc99_sscanf@plt>
401e0c:       8b 94 24 4c 20 00 00    mov    0x204c(%rsp),%edx
401e13:       81 fa c8 00 00 00       cmp    $0xc8,%edx
401e19:       0f 84 b8 00 00 00       je     401ed7 <submitr+0x4cd>
401e1f:       48 8d 4c 24 40          lea    0x40(%rsp),%rcx
401e24:       be 80 28 40 00          mov    $0x402880,%esi
401e29:       4c 89 f7                mov    %r14,%rdi
401e2c:       b8 00 00 00 00          mov    $0x0,%eax
401e31:       e8 22 ed ff ff          callq  400b58 <sprintf@plt>
401e36:       44 89 ef                mov    %r13d,%edi
401e39:       e8 5a ec ff ff          callq  400a98 <close@plt>
401e3e:       b8 ff ff ff ff          mov    $0xffffffff,%eax
401e43:       e9 83 01 00 00          jmpq   401fcb <submitr+0x5c1>
401e48:       ba 00 20 00 00          mov    $0x2000,%edx
401e4d:       48 89 de                mov    %rbx,%rsi
401e50:       4c 89 e7                mov    %r12,%rdi
401e53:       e8 94 fa ff ff          callq  4018ec <rio_readlineb>
401e58:       48 85 c0                test   %rax,%rax
401e5b:       0f 8f 8b 00 00 00       jg     401eec <submitr+0x4e2>
401e61:       41 c7 06 45 72 72 6f    movl   $0x6f727245,(%r14)
401e68:       41 c7 46 04 72 3a 20    movl   $0x43203a72,0x4(%r14)
401e6f:       43
401e70:       41 c7 46 08 6c 69 65    movl   $0x6e65696c,0x8(%r14)
401e77:       6e
401e78:       41 c7 46 0c 74 20 75    movl   $0x6e752074,0xc(%r14)
401e7f:       6e
401e80:       41 c7 46 10 61 62 6c    movl   $0x656c6261,0x10(%r14)
401e87:       65
401e88:       41 c7 46 14 20 74 6f    movl   $0x206f7420,0x14(%r14)
401e8f:       20
401e90:       41 c7 46 18 72 65 61    movl   $0x64616572,0x18(%r14)
401e97:       64
401e98:       41 c7 46 1c 20 68 65    movl   $0x61656820,0x1c(%r14)
401e9f:       61
401ea0:       41 c7 46 20 64 65 72    movl   $0x73726564,0x20(%r14)
401ea7:       73
401ea8:       41 c7 46 24 20 66 72    movl   $0x6f726620,0x24(%r14)
401eaf:       6f
401eb0:       41 c7 46 28 6d 20 73    movl   $0x6573206d,0x28(%r14)
401eb7:       65
401eb8:       41 c7 46 2c 72 76 65    movl   $0x72657672,0x2c(%r14)
401ebf:       72
401ec0:       41 c6 46 30 00          movb   $0x0,0x30(%r14)
401ec5:       44 89 ef                mov    %r13d,%edi
401ec8:       e8 cb eb ff ff          callq  400a98 <close@plt>
401ecd:       b8 ff ff ff ff          mov    $0xffffffff,%eax
401ed2:       e9 f4 00 00 00          jmpq   401fcb <submitr+0x5c1>
401ed7:       48 8d 9c 24 50 60 00    lea    0x6050(%rsp),%rbx
401ede:       00
401edf:       bd f0 26 40 00          mov    $0x4026f0,%ebp
401ee4:       4c 8d a4 24 50 80 00    lea    0x8050(%rsp),%r12
401eeb:       00
401eec:       0f b6 03                movzbl (%rbx),%eax
401eef:       3a 45 00                cmp    0x0(%rbp),%al
401ef2:       0f 85 50 ff ff ff       jne    401e48 <submitr+0x43e>
401ef8:       0f b6 43 01             movzbl 0x1(%rbx),%eax
401efc:       3a 45 01                cmp    0x1(%rbp),%al
401eff:       0f 85 43 ff ff ff       jne    401e48 <submitr+0x43e>
401f05:       0f b6 43 02             movzbl 0x2(%rbx),%eax
401f09:       3a 45 02                cmp    0x2(%rbp),%al
401f0c:       0f 85 36 ff ff ff       jne    401e48 <submitr+0x43e>
401f12:       48 8d b4 24 50 60 00    lea    0x6050(%rsp),%rsi
401f19:       00
401f1a:       48 8d bc 24 50 80 00    lea    0x8050(%rsp),%rdi
401f21:       00
401f22:       ba 00 20 00 00          mov    $0x2000,%edx
401f27:       e8 c0 f9 ff ff          callq  4018ec <rio_readlineb>
401f2c:       48 85 c0                test   %rax,%rax
401f2f:       7f 5a                   jg     401f8b <submitr+0x581>
401f31:       4c 89 f7                mov    %r14,%rdi
401f34:       be b0 28 40 00          mov    $0x4028b0,%esi
401f39:       b8 38 00 00 00          mov    $0x38,%eax
401f3e:       41 f6 c6 01             test   $0x1,%r14b
401f42:       74 04                   je     401f48 <submitr+0x53e>
401f44:       a4                      movsb  %ds:(%rsi),%es:(%rdi)
401f45:       83 e8 01                sub    $0x1,%eax
401f48:       40 f6 c7 02             test   $0x2,%dil
401f4c:       74 05                   je     401f53 <submitr+0x549>
401f4e:       66 a5                   movsw  %ds:(%rsi),%es:(%rdi)
401f50:       83 e8 02                sub    $0x2,%eax
401f53:       89 c1                   mov    %eax,%ecx
401f55:       c1 e9 02                shr    $0x2,%ecx
401f58:       89 c9                   mov    %ecx,%ecx
401f5a:       f3 a5                   rep movsl %ds:(%rsi),%es:(%rdi)
401f5c:       ba 00 00 00 00          mov    $0x0,%edx
401f61:       a8 02                   test   $0x2,%al
401f63:       74 0c                   je     401f71 <submitr+0x567>
401f65:       0f b7 0c 16             movzwl (%rsi,%rdx,1),%ecx
401f69:       66 89 0c 17             mov    %cx,(%rdi,%rdx,1)
401f6d:       48 83 c2 02             add    $0x2,%rdx
401f71:       a8 01                   test   $0x1,%al
401f73:       74 07                   je     401f7c <submitr+0x572>
401f75:       0f b6 04 16             movzbl (%rsi,%rdx,1),%eax
401f79:       88 04 17                mov    %al,(%rdi,%rdx,1)
401f7c:       44 89 ef                mov    %r13d,%edi
401f7f:       e8 14 eb ff ff          callq  400a98 <close@plt>
401f84:       b8 ff ff ff ff          mov    $0xffffffff,%eax
401f89:       eb 40                   jmp    401fcb <submitr+0x5c1>
401f8b:       4c 89 fe                mov    %r15,%rsi
401f8e:       4c 89 f7                mov    %r14,%rdi
401f91:       e8 72 ec ff ff          callq  400c08 <strcpy@plt>
401f96:       44 89 ef                mov    %r13d,%edi
401f99:       e8 fa ea ff ff          callq  400a98 <close@plt>
401f9e:       b8 f3 26 40 00          mov    $0x4026f3,%eax
401fa3:       41 0f b6 16             movzbl (%r14),%edx
401fa7:       3a 10                   cmp    (%rax),%dl
401fa9:       75 1b                   jne    401fc6 <submitr+0x5bc>
401fab:       41 0f b6 56 01          movzbl 0x1(%r14),%edx
401fb0:       3a 50 01                cmp    0x1(%rax),%dl
401fb3:       75 11                   jne    401fc6 <submitr+0x5bc>
401fb5:       41 0f b6 56 02          movzbl 0x2(%r14),%edx
401fba:       3a 50 02                cmp    0x2(%rax),%dl
401fbd:       75 07                   jne    401fc6 <submitr+0x5bc>
401fbf:       b8 00 00 00 00          mov    $0x0,%eax
401fc4:       eb 05                   jmp    401fcb <submitr+0x5c1>
401fc6:       b8 ff ff ff ff          mov    $0xffffffff,%eax
401fcb:       48 81 c4 78 a0 00 00    add    $0xa078,%rsp
401fd2:       5b                      pop    %rbx
401fd3:       5d                      pop    %rbp
401fd4:       41 5c                   pop    %r12
401fd6:       41 5d                   pop    %r13
401fd8:       41 5e                   pop    %r14
401fda:       41 5f                   pop    %r15
401fdc:       c3                      retq
401fdd:       48 8d 9c 24 50 60 00    lea    0x6050(%rsp),%rbx
401fe4:       00
401fe5:       48 8d 84 24 50 40 00    lea    0x4050(%rsp),%rax
401fec:       00
401fed:       48 89 04 24             mov    %rax,(%rsp)
401ff1:       4d 89 f9                mov    %r15,%r9
401ff4:       4c 8b 44 24 28          mov    0x28(%rsp),%r8
401ff9:       48 8b 4c 24 20          mov    0x20(%rsp),%rcx
401ffe:       48 8b 54 24 18          mov    0x18(%rsp),%rdx
402003:       be e8 28 40 00          mov    $0x4028e8,%esi
402008:       48 89 df                mov    %rbx,%rdi
40200b:       b8 00 00 00 00          mov    $0x0,%eax
402010:       e8 43 eb ff ff          callq  400b58 <sprintf@plt>
402015:       48 89 df                mov    %rbx,%rdi
402018:       b8 00 00 00 00          mov    $0x0,%eax
40201d:       48 c7 c1 ff ff ff ff    mov    $0xffffffffffffffff,%rcx
402024:       f2 ae                   repnz scas %es:(%rdi),%al
402026:       48 f7 d1                not    %rcx
402029:       49 89 cc                mov    %rcx,%r12
40202c:       49 83 ec 01             sub    $0x1,%r12
402030:       0f 84 48 fd ff ff       je     401d7e <submitr+0x374>
402036:       4c 89 e3                mov    %r12,%rbx
402039:       48 8d ac 24 50 60 00    lea    0x6050(%rsp),%rbp
402040:       00
402041:       41 bf 00 00 00 00       mov    $0x0,%r15d
402047:       e9 ab fc ff ff          jmpq   401cf7 <submitr+0x2ed>

000000000040204c <driver_post>:
40204c:       53                      push   %rbx
40204d:       48 83 ec 10             sub    $0x10,%rsp
402051:       4c 89 c3                mov    %r8,%rbx
402054:       85 c9                   test   %ecx,%ecx
402056:       74 22                   je     40207a <driver_post+0x2e>
402058:       48 89 d6                mov    %rdx,%rsi
40205b:       bf f6 26 40 00          mov    $0x4026f6,%edi
402060:       b8 00 00 00 00          mov    $0x0,%eax
402065:       e8 1e ea ff ff          callq  400a88 <printf@plt>
40206a:       66 c7 03 4f 4b          movw   $0x4b4f,(%rbx)
40206f:       c6 43 02 00             movb   $0x0,0x2(%rbx)
402073:       b8 00 00 00 00          mov    $0x0,%eax
402078:       eb 43                   jmp    4020bd <driver_post+0x71>
40207a:       48 85 ff                test   %rdi,%rdi
40207d:       74 30                   je     4020af <driver_post+0x63>
40207f:       80 3f 00                cmpb   $0x0,(%rdi)
402082:       74 2b                   je     4020af <driver_post+0x63>
402084:       4c 89 44 24 08          mov    %r8,0x8(%rsp)
402089:       48 89 14 24             mov    %rdx,(%rsp)
40208d:       41 b9 0d 27 40 00       mov    $0x40270d,%r9d
402093:       49 89 f0                mov    %rsi,%r8
402096:       48 89 f9                mov    %rdi,%rcx
402099:       ba 1c 27 40 00          mov    $0x40271c,%edx
40209e:       be 6e 3b 00 00          mov    $0x3b6e,%esi
4020a3:       bf fe 24 40 00          mov    $0x4024fe,%edi
4020a8:       e8 5d f9 ff ff          callq  401a0a <submitr>
4020ad:       eb 0e                   jmp    4020bd <driver_post+0x71>
4020af:       66 c7 03 4f 4b          movw   $0x4b4f,(%rbx)
4020b4:       c6 43 02 00             movb   $0x0,0x2(%rbx)
4020b8:       b8 00 00 00 00          mov    $0x0,%eax
4020bd:       48 83 c4 10             add    $0x10,%rsp
4020c1:       5b                      pop    %rbx
4020c2:       c3                      retq

00000000004020c3 <sigalrm_handler>:
4020c3:       48 83 ec 08             sub    $0x8,%rsp
4020c7:       ba 00 00 00 00          mov    $0x0,%edx
4020cc:       be 40 29 40 00          mov    $0x402940,%esi
4020d1:       48 8b 3d 70 17 20 00    mov    0x201770(%rip),%rdi        # 603848 <stderr@@GLIBC_2.2.5>
4020d8:       b8 00 00 00 00          mov    $0x0,%eax
4020dd:       e8 36 eb ff ff          callq  400c18 <fprintf@plt>
4020e2:       bf 01 00 00 00          mov    $0x1,%edi
4020e7:       e8 ec e9 ff ff          callq  400ad8 <exit@plt>
4020ec:       90                      nop
4020ed:       90                      nop
4020ee:       90                      nop
4020ef:       90                      nop

00000000004020f0 <__libc_csu_fini>:
4020f0:       f3 c3                   repz retq
4020f2:       66 66 66 66 66 2e 0f    data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
4020f9:       1f 84 00 00 00 00 00

0000000000402100 <__libc_csu_init>:
402100:       48 89 6c 24 d8          mov    %rbp,-0x28(%rsp)
402105:       4c 89 64 24 e0          mov    %r12,-0x20(%rsp)
40210a:       48 8d 2d db 0d 20 00    lea    0x200ddb(%rip),%rbp        # 602eec <__init_array_end>
402111:       4c 8d 25 d4 0d 20 00    lea    0x200dd4(%rip),%r12        # 602eec <__init_array_end>
402118:       4c 89 6c 24 e8          mov    %r13,-0x18(%rsp)
40211d:       4c 89 74 24 f0          mov    %r14,-0x10(%rsp)
402122:       4c 89 7c 24 f8          mov    %r15,-0x8(%rsp)
402127:       48 89 5c 24 d0          mov    %rbx,-0x30(%rsp)
40212c:       48 83 ec 38             sub    $0x38,%rsp
402130:       4c 29 e5                sub    %r12,%rbp
402133:       41 89 fd                mov    %edi,%r13d
402136:       49 89 f6                mov    %rsi,%r14
402139:       48 c1 fd 03             sar    $0x3,%rbp
40213d:       49 89 d7                mov    %rdx,%r15
402140:       e8 1b e9 ff ff          callq  400a60 <_init>
402145:       48 85 ed                test   %rbp,%rbp
402148:       74 1c                   je     402166 <__libc_csu_init+0x66>
40214a:       31 db                   xor    %ebx,%ebx
40214c:       0f 1f 40 00             nopl   0x0(%rax)
402150:       4c 89 fa                mov    %r15,%rdx
402153:       4c 89 f6                mov    %r14,%rsi
402156:       44 89 ef                mov    %r13d,%edi
402159:       41 ff 14 dc             callq  *(%r12,%rbx,8)
40215d:       48 83 c3 01             add    $0x1,%rbx
402161:       48 39 eb                cmp    %rbp,%rbx
402164:       72 ea                   jb     402150 <__libc_csu_init+0x50>
402166:       48 8b 5c 24 08          mov    0x8(%rsp),%rbx
40216b:       48 8b 6c 24 10          mov    0x10(%rsp),%rbp
402170:       4c 8b 64 24 18          mov    0x18(%rsp),%r12
402175:       4c 8b 6c 24 20          mov    0x20(%rsp),%r13
40217a:       4c 8b 74 24 28          mov    0x28(%rsp),%r14
40217f:       4c 8b 7c 24 30          mov    0x30(%rsp),%r15
402184:       48 83 c4 38             add    $0x38,%rsp
402188:       c3                      retq
402189:       90                      nop
40218a:       90                      nop
40218b:       90                      nop
40218c:       90                      nop
40218d:       90                      nop
40218e:       90                      nop
40218f:       90                      nop

0000000000402190 <__do_global_ctors_aux>:
402190:       55                      push   %rbp
402191:       48 89 e5                mov    %rsp,%rbp
402194:       53                      push   %rbx
402195:       48 83 ec 08             sub    $0x8,%rsp
402199:       48 8b 05 50 0d 20 00    mov    0x200d50(%rip),%rax        # 602ef0 <__CTOR_LIST__>
4021a0:       48 83 f8 ff             cmp    $0xffffffffffffffff,%rax
4021a4:       74 19                   je     4021bf <__do_global_ctors_aux+0x2f>
4021a6:       bb f0 2e 60 00          mov    $0x602ef0,%ebx
4021ab:       0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)
4021b0:       48 83 eb 08             sub    $0x8,%rbx
4021b4:       ff d0                   callq  *%rax
4021b6:       48 8b 03                mov    (%rbx),%rax
4021b9:       48 83 f8 ff             cmp    $0xffffffffffffffff,%rax
4021bd:       75 f1                   jne    4021b0 <__do_global_ctors_aux+0x20>
4021bf:       48 83 c4 08             add    $0x8,%rsp
4021c3:       5b                      pop    %rbx
4021c4:       c9                      leaveq
4021c5:       c3                      retq
4021c6:       90                      nop
4021c7:       90                      nop

Disassembly of section .fini:

00000000004021c8 <_fini>:
4021c8:       48 83 ec 08             sub    $0x8,%rsp
4021cc:       e8 cf ea ff ff          callq  400ca0 <__do_global_dtors_aux>
4021d1:       48 83 c4 08             add    $0x8,%rsp
4021d5:       c3                      retq

Disassembly of section .rodata:

00000000004021e0 <_IO_stdin_used>:
4021e0:       01 00                   add    %eax,(%rax)
4021e2:       02 00                   add    (%rax),%al
4021e4:       00 00                   add    %al,(%rax)
   ...

00000000004021e8 <__dso_handle>:
   ...
4021f0:       72 00                   jb     4021f2 <__dso_handle+0xa>
4021f2:       25 73 3a 20 45          and    $0x45203a73,%eax
4021f7:       72 72                   jb     40226b <__dso_handle+0x83>
4021f9:       6f                      outsl  %ds:(%rsi),(%dx)
4021fa:       72 3a                   jb     402236 <__dso_handle+0x4e>
4021fc:       20 43 6f                and    %al,0x6f(%rbx)
4021ff:       75 6c                   jne    40226d <__dso_handle+0x85>
402201:       64 6e                   outsb  %fs:(%rsi),(%dx)
402203:       27                      (bad)
402204:       74 20                   je     402226 <__dso_handle+0x3e>
402206:       6f                      outsl  %ds:(%rsi),(%dx)
402207:       70 65                   jo     40226e <__dso_handle+0x86>
402209:       6e                      outsb  %ds:(%rsi),(%dx)
40220a:       20 25 73 0a 00 55       and    %ah,0x55000a73(%rip)        # 55402c83 <_end+0x54dfed73>
402210:       73 61                   jae    402273 <__dso_handle+0x8b>
402212:       67 65 3a 20             cmp    %gs:(%eax),%ah
402216:       25 73 20 5b 3c          and    $0x3c5b2073,%eax
40221b:       69 6e 70 75 74 5f 66    imul   $0x665f7475,0x70(%rsi),%ebp
402222:       69 6c 65 3e 5d 0a 00    imul   $0x54000a5d,0x3e(%rbp,%riz,2),%ebp
402229:       54
40222a:       68 61 74 27 73          pushq  $0x73277461
40222f:       20 6e 75                and    %ch,0x75(%rsi)
402232:       6d                      insl   (%dx),%es:(%rdi)
402233:       62                      (bad)
402234:       65                      gs
402235:       72 20                   jb     402257 <__dso_handle+0x6f>
402237:       32 2e                   xor    (%rsi),%ch
402239:       20 20                   and    %ah,(%rax)
40223b:       4b                      rex.WXB
40223c:       65                      gs
40223d:       65                      gs
40223e:       70 20                   jo     402260 <__dso_handle+0x78>
402240:       67 6f                   outsl  %ds:(%esi),(%dx)
402242:       69 6e 67 21 00 48 61    imul   $0x61480021,0x67(%rsi),%ebp
402249:       6c                      insb   (%dx),%es:(%rdi)
40224a:       66                      data16
40224b:       77 61                   ja     4022ae <__dso_handle+0xc6>
40224d:       79 20                   jns    40226f <__dso_handle+0x87>
40224f:       74 68                   je     4022b9 <__dso_handle+0xd1>
402251:       65                      gs
402252:       72 65                   jb     4022b9 <__dso_handle+0xd1>
402254:       21 00                   and    %eax,(%rax)
402256:       47 6f                   rex.RXB outsl %ds:(%rsi),(%dx)
402258:       6f                      outsl  %ds:(%rsi),(%dx)
402259:       64 20 77 6f             and    %dh,%fs:0x6f(%rdi)
40225d:       72 6b                   jb     4022ca <__dso_handle+0xe2>
40225f:       21 20                   and    %esp,(%rax)
402261:       20 4f 6e                and    %cl,0x6e(%rdi)
402264:       20 74 6f 20             and    %dh,0x20(%rdi,%rbp,2)
402268:       74 68                   je     4022d2 <__dso_handle+0xea>
40226a:       65 20 6e 65             and    %ch,%gs:0x65(%rsi)
40226e:       78 74                   js     4022e4 <__dso_handle+0xfc>
402270:       2e 2e 2e 00 00          cs cs add %al,%cs:(%rax)
402275:       00 00                   add    %al,(%rax)
402277:       00 57 65                add    %dl,0x65(%rdi)
40227a:       6c                      insb   (%dx),%es:(%rdi)
40227b:       63 6f 6d                movslq 0x6d(%rdi),%ebp
40227e:       65 20 74 6f 20          and    %dh,%gs:0x20(%rdi,%rbp,2)
402283:       6d                      insl   (%dx),%es:(%rdi)
402284:       79 20                   jns    4022a6 <__dso_handle+0xbe>
402286:       66 69 65 6e 64 69       imul   $0x6964,0x6e(%rbp),%sp
40228c:       73 68                   jae    4022f6 <__dso_handle+0x10e>
40228e:       20 6c 69 74             and    %ch,0x74(%rcx,%rbp,2)
402292:       74 6c                   je     402300 <__dso_handle+0x118>
402294:       65 20 62 6f             and    %ah,%gs:0x6f(%rdx)
402298:       6d                      insl   (%dx),%es:(%rdi)
402299:       62                      (bad)
40229a:       2e 20 59 6f             and    %bl,%cs:0x6f(%rcx)
40229e:       75 20                   jne    4022c0 <__dso_handle+0xd8>
4022a0:       68 61 76 65 20          pushq  $0x20657661
4022a5:       36 20 70 68             and    %dh,%ss:0x68(%rax)
4022a9:       61                      (bad)
4022aa:       73 65                   jae    402311 <__dso_handle+0x129>
4022ac:       73 20                   jae    4022ce <__dso_handle+0xe6>
4022ae:       77 69                   ja     402319 <__dso_handle+0x131>
4022b0:       74 68                   je     40231a <__dso_handle+0x132>
4022b2:       00 00                   add    %al,(%rax)
4022b4:       00 00                   add    %al,(%rax)
4022b6:       00 00                   add    %al,(%rax)
4022b8:       77 68                   ja     402322 <__dso_handle+0x13a>
4022ba:       69 63 68 20 74 6f 20    imul   $0x206f7420,0x68(%rbx),%esp
4022c1:       62                      (bad)
4022c2:       6c                      insb   (%dx),%es:(%rdi)
4022c3:       6f                      outsl  %ds:(%rsi),(%dx)
4022c4:       77 20                   ja     4022e6 <__dso_handle+0xfe>
4022c6:       79 6f                   jns    402337 <__dso_handle+0x14f>
4022c8:       75 72                   jne    40233c <__dso_handle+0x154>
4022ca:       73 65                   jae    402331 <__dso_handle+0x149>
4022cc:       6c                      insb   (%dx),%es:(%rdi)
4022cd:       66                      data16
4022ce:       20 75 70                and    %dh,0x70(%rbp)
4022d1:       2e 20 48 61             and    %cl,%cs:0x61(%rax)
4022d5:       76 65                   jbe    40233c <__dso_handle+0x154>
4022d7:       20 61 20                and    %ah,0x20(%rcx)
4022da:       6e                      outsb  %ds:(%rsi),(%dx)
4022db:       69 63 65 20 64 61 79    imul   $0x79616420,0x65(%rbx),%esp
4022e2:       21 00                   and    %eax,(%rax)
4022e4:       00 00                   add    %al,(%rax)
4022e6:       00 00                   add    %al,(%rax)
4022e8:       50                      push   %rax
4022e9:       68 61 73 65 20          pushq  $0x20657361
4022ee:       31 20                   xor    %esp,(%rax)
4022f0:       64                      fs
4022f1:       65                      gs
4022f2:       66                      data16
4022f3:       75 73                   jne    402368 <__dso_handle+0x180>
4022f5:       65 64 2e 20 48 6f       gs fs and %cl,%cs:%fs:%gs:0x6f(%rax)
4022fb:       77 20                   ja     40231d <__dso_handle+0x135>
4022fd:       61                      (bad)
4022fe:       62                      (bad)
4022ff:       6f                      outsl  %ds:(%rsi),(%dx)
402300:       75 74                   jne    402376 <__dso_handle+0x18e>
402302:       20 74 68 65             and    %dh,0x65(%rax,%rbp,2)
402306:       20 6e 65                and    %ch,0x65(%rsi)
402309:       78 74                   js     40237f <__dso_handle+0x197>
40230b:       20 6f 6e                and    %ch,0x6e(%rdi)
40230e:       65                      gs
40230f:       3f                      (bad)
   ...
402318:       53                      push   %rbx
402319:       6f                      outsl  %ds:(%rsi),(%dx)
40231a:       20 79 6f                and    %bh,0x6f(%rcx)
40231d:       75 20                   jne    40233f <__dso_handle+0x157>
40231f:       67 6f                   outsl  %ds:(%esi),(%dx)
402321:       74 20                   je     402343 <__dso_handle+0x15b>
402323:       74 68                   je     40238d <__dso_handle+0x1a5>
402325:       61                      (bad)
402326:       74 20                   je     402348 <__dso_handle+0x160>
402328:       6f                      outsl  %ds:(%rsi),(%dx)
402329:       6e                      outsb  %ds:(%rsi),(%dx)
40232a:       65 2e 20 20             gs and %ah,%cs:%gs:(%rax)
40232e:       54                      push   %rsp
40232f:       72 79                   jb     4023aa <__dso_handle+0x1c2>
402331:       20 74 68 69             and    %dh,0x69(%rax,%rbp,2)
402335:       73 20                   jae    402357 <__dso_handle+0x16f>
402337:       6f                      outsl  %ds:(%rsi),(%dx)
402338:       6e                      outsb  %ds:(%rsi),(%dx)
402339:       65 2e 00 00             gs add %al,%cs:%gs:(%rax)
40233d:       00 00                   add    %al,(%rax)
40233f:       00 57 6f                add    %dl,0x6f(%rdi)
402342:       77 21                   ja     402365 <__dso_handle+0x17d>
402344:       20 59 6f                and    %bl,0x6f(%rcx)
402347:       75 27                   jne    402370 <__dso_handle+0x188>
402349:       76 65                   jbe    4023b0 <__dso_handle+0x1c8>
40234b:       20 64 65 66             and    %ah,0x66(%rbp,%riz,2)
40234f:       75 73                   jne    4023c4 <__dso_handle+0x1dc>
402351:       65 64 20 74 68 65       gs and %dh,%fs:%gs:0x65(%rax,%rbp,2)
402357:       20 73 65                and    %dh,0x65(%rbx)
40235a:       63 72 65                movslq 0x65(%rdx),%esi
40235d:       74 20                   je     40237f <__dso_handle+0x197>
40235f:       73 74                   jae    4023d5 <__dso_handle+0x1ed>
402361:       61                      (bad)
402362:       67 65 21 00             and    %eax,%gs:(%eax)
402366:       00 00                   add    %al,(%rax)
402368:       48 6f                   rex.W outsl %ds:(%rsi),(%dx)
40236a:       75 73                   jne    4023df <__dso_handle+0x1f7>
40236c:       65                      gs
40236d:       73 20                   jae    40238f <__dso_handle+0x1a7>
40236f:       77 69                   ja     4023da <__dso_handle+0x1f2>
402371:       6c                      insb   (%dx),%es:(%rdi)
402372:       6c                      insb   (%dx),%es:(%rdi)
402373:       20 62 65                and    %ah,0x65(%rdx)
402376:       67 61                   addr32 (bad)
402378:       74 20                   je     40239a <__dso_handle+0x1b2>
40237a:       6a 6f                   pushq  $0x6f
40237c:       62                      (bad)
40237d:       73 2c                   jae    4023ab <__dso_handle+0x1c3>
40237f:       20 6a 6f                and    %ch,0x6f(%rdx)
402382:       62                      (bad)
402383:       73 20                   jae    4023a5 <__dso_handle+0x1bd>
402385:       77 69                   ja     4023f0 <array.3305+0x10>
402387:       6c                      insb   (%dx),%es:(%rdi)
402388:       6c                      insb   (%dx),%es:(%rdi)
402389:       20 62 65                and    %ah,0x65(%rdx)
40238c:       67 61                   addr32 (bad)
40238e:       74 20                   je     4023b0 <__dso_handle+0x1c8>
402390:       68 6f 75 73 65          pushq  $0x6573756f
402395:       73 2e                   jae    4023c5 <__dso_handle+0x1dd>
   ...
40239f:       00 65 11                add    %ah,0x11(%rbp)
4023a2:       40 00 00                add    %al,(%rax)
4023a5:       00 00                   add    %al,(%rax)
4023a7:       00 5e 11                add    %bl,0x11(%rsi)
4023aa:       40 00 00                add    %al,(%rax)
4023ad:       00 00                   add    %al,(%rax)
4023af:       00 6c 11 40             add    %ch,0x40(%rcx,%rdx,1)
4023b3:       00 00                   add    %al,(%rax)
4023b5:       00 00                   add    %al,(%rax)
4023b7:       00 73 11                add    %dh,0x11(%rbx)
4023ba:       40 00 00                add    %al,(%rax)
4023bd:       00 00                   add    %al,(%rax)
4023bf:       00 7a 11                add    %bh,0x11(%rdx)
4023c2:       40 00 00                add    %al,(%rax)
4023c5:       00 00                   add    %al,(%rax)
4023c7:       00 81 11 40 00 00       add    %al,0x4011(%rcx)
4023cd:       00 00                   add    %al,(%rax)
4023cf:       00 88 11 40 00 00       add    %cl,0x4011(%rax)
4023d5:       00 00                   add    %al,(%rax)
4023d7:       00 8f 11 40 00 00       add    %cl,0x4011(%rdi)
4023dd:       00 00                   add    %al,(%rax)
   ...

00000000004023e0 <array.3305>:
4023e0:       02 00                   add    (%rax),%al
4023e2:       00 00                   add    %al,(%rax)
4023e4:       0a 00                   or     (%rax),%al
4023e6:       00 00                   add    %al,(%rax)
4023e8:       06                      (bad)
4023e9:       00 00                   add    %al,(%rax)
4023eb:       00 01                   add    %al,(%rcx)
4023ed:       00 00                   add    %al,(%rax)
4023ef:       00 0c 00                add    %cl,(%rax,%rax,1)
4023f2:       00 00                   add    %al,(%rax)
4023f4:       10 00                   adc    %al,(%rax)
4023f6:       00 00                   add    %al,(%rax)
4023f8:       09 00                   or     %eax,(%rax)
4023fa:       00 00                   add    %al,(%rax)
4023fc:       03 00                   add    (%rax),%eax
4023fe:       00 00                   add    %al,(%rax)
402400:       04 00                   add    $0x0,%al
402402:       00 00                   add    %al,(%rax)
402404:       07                      (bad)
402405:       00 00                   add    %al,(%rax)
402407:       00 0e                   add    %cl,(%rsi)
402409:       00 00                   add    %al,(%rax)
40240b:       00 05 00 00 00 0b       add    %al,0xb000000(%rip)        # b402411 <_end+0xadfe501>
402411:       00 00                   add    %al,(%rax)
402413:       00 08                   add    %cl,(%rax)
402415:       00 00                   add    %al,(%rax)
402417:       00 0f                   add    %cl,(%rdi)
402419:       00 00                   add    %al,(%rax)
40241b:       00 0d 00 00 00 49       add    %cl,0x49000000(%rip)        # 49402421 <_end+0x48dfe511>
402421:       6e                      outsb  %ds:(%rsi),(%dx)
402422:       76 61                   jbe    402485 <array.3305+0xa5>
402424:       6c                      insb   (%dx),%es:(%rdi)
402425:       69 64 20 70 68 61 73    imul   $0x65736168,0x70(%rax,%riz,1),%esp
40242c:       65
40242d:       25 73 0a 00 65          and    $0x65000a73,%eax
402432:       78 70                   js     4024a4 <array.3305+0xc4>
402434:       6c                      insb   (%dx),%es:(%rdi)
402435:       6f                      outsl  %ds:(%rsi),(%dx)
402436:       64 65 64 00 64 65 66    fs gs add %ah,%fs:%gs:0x66(%rbp,%riz,2)
40243d:       75 73                   jne    4024b2 <array.3305+0xd2>
40243f:       65 64 00 25 64 3a 25    gs add %ah,%fs:%gs:0x73253a64(%rip)        # 73655eab <_end+0x73051f9b>
402446:       73
402447:       3a 25 64 3a 25 73       cmp    0x73253a64(%rip),%ah        # 73655eb1 <_end+0x73051fa1>
40244d:       00 25 64 20 25 64       add    %ah,0x64252064(%rip)        # 646544b7 <_end+0x640505a7>
402453:       20 25 73 00 44 72       and    %ah,0x72440073(%rip)        # 728424cc <_end+0x7223e5bc>
402459:       45 76 69                rex.RB jbe 4024c5 <array.3305+0xe5>
40245c:       6c                      insb   (%dx),%es:(%rdi)
40245d:       00 0a                   add    %cl,(%rdx)
40245f:       42                      rex.X
402460:       4f                      rex.WRXB
402461:       4f                      rex.WRXB
402462:       4d 21 21                and    %r12,(%r9)
402465:       21 00                   and    %eax,(%rax)
402467:       54                      push   %rsp
402468:       68 65 20 62 6f          pushq  $0x6f622065
40246d:       6d                      insl   (%dx),%es:(%rdi)
40246e:       62                      (bad)
40246f:       20 68 61                and    %ch,0x61(%rax)
402472:       73 20                   jae    402494 <array.3305+0xb4>
402474:       62                      (bad)
402475:       6c                      insb   (%dx),%es:(%rdi)
402476:       6f                      outsl  %ds:(%rsi),(%dx)
402477:       77 6e                   ja     4024e7 <array.3305+0x107>
402479:       20 75 70                and    %dh,0x70(%rbp)
40247c:       2e 00 25 64 20 25 64    add    %ah,%cs:0x64252064(%rip)        # 646544e7 <_end+0x640505d7>
402483:       20 25 64 20 25 64       and    %ah,0x64252064(%rip)        # 646544ed <_end+0x640505dd>
402489:       20 25 64 20 25 64       and    %ah,0x64252064(%rip)        # 646544f3 <_end+0x640505e3>
40248f:       00 45 72                add    %al,0x72(%rbp)
402492:       72 6f                   jb     402503 <array.3305+0x123>
402494:       72 3a                   jb     4024d0 <array.3305+0xf0>
402496:       20 50 72                and    %dl,0x72(%rax)
402499:       65                      gs
40249a:       6d                      insl   (%dx),%es:(%rdi)
40249b:       61                      (bad)
40249c:       74 75                   je     402513 <array.3305+0x133>
40249e:       72 65                   jb     402505 <array.3305+0x125>
4024a0:       20 45 4f                and    %al,0x4f(%rbp)
4024a3:       46 20 6f 6e             rex.RX and %r13b,0x6e(%rdi)
4024a7:       20 73 74                and    %dh,0x74(%rbx)
4024aa:       64 69 6e 00 47 52 41    imul   $0x44415247,%fs:0x0(%rsi),%ebp
4024b1:       44
4024b2:       45 5f                   rex.RB pop %r15
4024b4:       42                      rex.X
4024b5:       4f                      rex.WRXB
4024b6:       4d                      rex.WRB
4024b7:       42 00 45 72             rex.X add %al,0x72(%rbp)
4024bb:       72 6f                   jb     40252c <array.3305+0x14c>
4024bd:       72 3a                   jb     4024f9 <array.3305+0x119>
4024bf:       20 49 6e                and    %cl,0x6e(%rcx)
4024c2:       70 75                   jo     402539 <array.3305+0x159>
4024c4:       74 20                   je     4024e6 <array.3305+0x106>
4024c6:       6c                      insb   (%dx),%es:(%rdi)
4024c7:       69 6e 65 20 74 6f 6f    imul   $0x6f6f7420,0x65(%rsi),%ebp
4024ce:       20 6c 6f 6e             and    %ch,0x6e(%rdi,%rbp,2)
4024d2:       67 00 49 6e             add    %cl,0x6e(%ecx)
4024d6:       69 74 69 61 6c 69 7a    imul   $0x617a696c,0x61(%rcx,%rbp,2),%esi
4024dd:       61
4024de:       74 69                   je     402549 <array.3305+0x169>
4024e0:       6f                      outsl  %ds:(%rsi),(%dx)
4024e1:       6e                      outsb  %ds:(%rsi),(%dx)
4024e2:       20 65 72                and    %ah,0x72(%rbp)
4024e5:       72 6f                   jb     402556 <array.3305+0x176>
4024e7:       72 3a                   jb     402523 <array.3305+0x143>
4024e9:       0a 25 73 0a 00 57       or     0x57000a73(%rip),%ah        # 57402f62 <_end+0x56dff052>
4024ef:       65                      gs
4024f0:       6c                      insb   (%dx),%es:(%rdi)
4024f1:       6c                      insb   (%dx),%es:(%rdi)
4024f2:       2e 2e 2e 00 4f 4b       cs cs add %cl,%cs:0x4b(%rdi)
4024f8:       2e 20 3a                and    %bh,%cs:(%rdx)
4024fb:       2d 29 00 75 32          sub    $0x32750029,%eax
   ...
402508:       45 52                   rex.RB push %r10
40250a:       52                      push   %rdx
40250b:       4f 52                   rex.WRXB push %r10
40250d:       3a 20                   cmp    (%rax),%ah
40250f:       49 6e                   rex.WB outsb %ds:(%rsi),(%dx)
402511:       70 75                   jo     402588 <array.3305+0x1a8>
402513:       74 20                   je     402535 <array.3305+0x155>
402515:       73 74                   jae    40258b <array.3305+0x1ab>
402517:       72 69                   jb     402582 <array.3305+0x1a2>
402519:       6e                      outsb  %ds:(%rsi),(%dx)
40251a:       67 20 69 73             and    %ch,0x73(%ecx)
40251e:       20 74 6f 6f             and    %dh,0x6f(%rdi,%rbp,2)
402522:       20 6c 61 72             and    %ch,0x72(%rcx,%riz,2)
402526:       67 65 2e 00 00          gs add %al,%cs:%gs:(%eax)
40252b:       00 00                   add    %al,(%rax)
40252d:       00 00                   add    %al,(%rax)
40252f:       00 43 75                add    %al,0x75(%rbx)
402532:       72 73                   jb     4025a7 <array.3305+0x1c7>
402534:       65                      gs
402535:       73 2c                   jae    402563 <array.3305+0x183>
402537:       20 79 6f                and    %bh,0x6f(%rcx)
40253a:       75 27                   jne    402563 <array.3305+0x183>
40253c:       76 65                   jbe    4025a3 <array.3305+0x1c3>
40253e:       20 66 6f                and    %ah,0x6f(%rsi)
402541:       75 6e                   jne    4025b1 <array.3305+0x1d1>
402543:       64 20 74 68 65          and    %dh,%fs:0x65(%rax,%rbp,2)
402548:       20 73 65                and    %dh,0x65(%rbx)
40254b:       63 72 65                movslq 0x65(%rdx),%esi
40254e:       74 20                   je     402570 <array.3305+0x190>
402550:       70 68                   jo     4025ba <array.3305+0x1da>
402552:       61                      (bad)
402553:       73 65                   jae    4025ba <array.3305+0x1da>
402555:       21 00                   and    %eax,(%rax)
402557:       00 42 75                add    %al,0x75(%rdx)
40255a:       74 20                   je     40257c <array.3305+0x19c>
40255c:       66 69 6e 64 69 6e       imul   $0x6e69,0x64(%rsi),%bp
402562:       67 20 69 74             and    %ch,0x74(%ecx)
402566:       20 61 6e                and    %ah,0x6e(%rcx)
402569:       64 20 73 6f             and    %dh,%fs:0x6f(%rbx)
40256d:       6c                      insb   (%dx),%es:(%rdi)
40256e:       76 69                   jbe    4025d9 <array.3305+0x1f9>
402570:       6e                      outsb  %ds:(%rsi),(%dx)
402571:       67 20 69 74             and    %ch,0x74(%ecx)
402575:       20 61 72                and    %ah,0x72(%rcx)
402578:       65 20 71 75             and    %dh,%gs:0x75(%rcx)
40257c:       69 74 65 20 64 69 66    imul   $0x66666964,0x20(%rbp,%riz,2),%esi
402583:       66
402584:       65                      gs
402585:       72 65                   jb     4025ec <array.3305+0x20c>
402587:       6e                      outsb  %ds:(%rsi),(%dx)
402588:       74 2e                   je     4025b8 <array.3305+0x1d8>
40258a:       2e 2e 00 00             cs add %al,%cs:(%rax)
40258e:       00 00                   add    %al,(%rax)
402590:       43 6f                   rex.XB outsl %ds:(%rsi),(%dx)
402592:       6e                      outsb  %ds:(%rsi),(%dx)
402593:       67 72 61                addr32 jb 4025f7 <array.3305+0x217>
402596:       74 75                   je     40260d <array.3305+0x22d>
402598:       6c                      insb   (%dx),%es:(%rdi)
402599:       61                      (bad)
40259a:       74 69                   je     402605 <array.3305+0x225>
40259c:       6f                      outsl  %ds:(%rsi),(%dx)
40259d:       6e                      outsb  %ds:(%rsi),(%dx)
40259e:       73 21                   jae    4025c1 <array.3305+0x1e1>
4025a0:       20 59 6f                and    %bl,0x6f(%rcx)
4025a3:       75 27                   jne    4025cc <array.3305+0x1ec>
4025a5:       76 65                   jbe    40260c <array.3305+0x22c>
4025a7:       20 64 65 66             and    %ah,0x66(%rbp,%riz,2)
4025ab:       75 73                   jne    402620 <array.3305+0x240>
4025ad:       65 64 20 74 68 65       gs and %dh,%fs:%gs:0x65(%rax,%rbp,2)
4025b3:       20 62 6f                and    %ah,0x6f(%rdx)
4025b6:       6d                      insl   (%dx),%es:(%rdi)
4025b7:       62                      (bad)
4025b8:       21 00                   and    %eax,(%rax)
4025ba:       00 00                   add    %al,(%rax)
4025bc:       00 00                   add    %al,(%rax)
4025be:       00 00                   add    %al,(%rax)
4025c0:       59                      pop    %rcx
4025c1:       6f                      outsl  %ds:(%rsi),(%dx)
4025c2:       75 72                   jne    402636 <array.3305+0x256>
4025c4:       20 69 6e                and    %ch,0x6e(%rcx)
4025c7:       73 74                   jae    40263d <array.3305+0x25d>
4025c9:       72 75                   jb     402640 <array.3305+0x260>
4025cb:       63 74 6f 72             movslq 0x72(%rdi,%rbp,2),%esi
4025cf:       20 68 61                and    %ch,0x61(%rax)
4025d2:       73 20                   jae    4025f4 <array.3305+0x214>
4025d4:       62                      (bad)
4025d5:       65 65 6e                gs outsb %gs:(%rsi),(%dx)
4025d8:       20 6e 6f                and    %ch,0x6f(%rsi)
4025db:       74 69                   je     402646 <array.3305+0x266>
4025dd:       66 69 65 64 20 61       imul   $0x6120,0x64(%rbp),%sp
4025e3:       6e                      outsb  %ds:(%rsi),(%dx)
4025e4:       64 20 77 69             and    %dh,%fs:0x69(%rdi)
4025e8:       6c                      insb   (%dx),%es:(%rdi)
4025e9:       6c                      insb   (%dx),%es:(%rdi)
4025ea:       20 76 65                and    %dh,0x65(%rsi)
4025ed:       72 69                   jb     402658 <array.3305+0x278>
4025ef:       66                      data16
4025f0:       79 20                   jns    402612 <array.3305+0x232>
4025f2:       79 6f                   jns    402663 <array.3305+0x283>
4025f4:       75 72                   jne    402668 <array.3305+0x288>
4025f6:       20 73 6f                and    %dh,0x6f(%rbx)
4025f9:       6c                      insb   (%dx),%es:(%rdi)
4025fa:       75 74                   jne    402670 <array.3305+0x290>
4025fc:       69 6f 6e 2e 00 00 00    imul   $0x2e,0x6e(%rdi),%ebp
402603:       00 00                   add    %al,(%rax)
402605:       00 00                   add    %al,(%rax)
402607:       00 59 6f                add    %bl,0x6f(%rcx)
40260a:       75 72                   jne    40267e <array.3305+0x29e>
40260c:       20 69 6e                and    %ch,0x6e(%rcx)
40260f:       73 74                   jae    402685 <array.3305+0x2a5>
402611:       72 75                   jb     402688 <array.3305+0x2a8>
402613:       63 74 6f 72             movslq 0x72(%rdi,%rbp,2),%esi
402617:       20 68 61                and    %ch,0x61(%rax)
40261a:       73 20                   jae    40263c <array.3305+0x25c>
40261c:       62                      (bad)
40261d:       65 65 6e                gs outsb %gs:(%rsi),(%dx)
402620:       20 6e 6f                and    %ch,0x6f(%rsi)
402623:       74 69                   je     40268e <array.3305+0x2ae>
402625:       66 69 65 64 2e 00       imul   $0x2e,0x64(%rbp),%sp
40262b:       00 00                   add    %al,(%rax)
40262d:       00 00                   add    %al,(%rax)
40262f:       00 49 6e                add    %cl,0x6e(%rcx)
402632:       69 74 69 61 6c 69 7a    imul   $0x617a696c,0x61(%rcx,%rbp,2),%esi
402639:       61
40263a:       74 69                   je     4026a5 <array.3305+0x2c5>
40263c:       6f                      outsl  %ds:(%rsi),(%dx)
40263d:       6e                      outsb  %ds:(%rsi),(%dx)
40263e:       20 65 72                and    %ah,0x72(%rbp)
402641:       72 6f                   jb     4026b2 <array.3305+0x2d2>
402643:       72 3a                   jb     40267f <array.3305+0x29f>
402645:       20 52 75                and    %dl,0x75(%rdx)
402648:       6e                      outsb  %ds:(%rsi),(%dx)
402649:       6e                      outsb  %ds:(%rsi),(%dx)
40264a:       69 6e 67 20 6f 6e 20    imul   $0x206e6f20,0x67(%rsi),%ebp
402651:       61                      (bad)
402652:       6e                      outsb  %ds:(%rsi),(%dx)
402653:       20 69 6c                and    %ch,0x6c(%rcx)
402656:       6c                      insb   (%dx),%es:(%rdi)
402657:       65                      gs
402658:       67 61                   addr32 (bad)
40265a:       6c                      insb   (%dx),%es:(%rdi)
40265b:       20 68 6f                and    %ch,0x6f(%rax)
40265e:       73 74                   jae    4026d4 <array.3305+0x2f4>
402660:       20 5b 31                and    %bl,0x31(%rbx)
402663:       5d                      pop    %rbp
402664:       00 00                   add    %al,(%rax)
402666:       00 00                   add    %al,(%rax)
402668:       49 6e                   rex.WB outsb %ds:(%rsi),(%dx)
40266a:       69 74 69 61 6c 69 7a    imul   $0x617a696c,0x61(%rcx,%rbp,2),%esi
402671:       61
402672:       74 69                   je     4026dd <array.3305+0x2fd>
402674:       6f                      outsl  %ds:(%rsi),(%dx)
402675:       6e                      outsb  %ds:(%rsi),(%dx)
402676:       20 65 72                and    %ah,0x72(%rbp)
402679:       72 6f                   jb     4026ea <array.3305+0x30a>
40267b:       72 3a                   jb     4026b7 <array.3305+0x2d7>
40267d:       20 52 75                and    %dl,0x75(%rdx)
402680:       6e                      outsb  %ds:(%rsi),(%dx)
402681:       6e                      outsb  %ds:(%rsi),(%dx)
402682:       69 6e 67 20 6f 6e 20    imul   $0x206e6f20,0x67(%rsi),%ebp
402689:       61                      (bad)
40268a:       6e                      outsb  %ds:(%rsi),(%dx)
40268b:       20 69 6c                and    %ch,0x6c(%rcx)
40268e:       6c                      insb   (%dx),%es:(%rdi)
40268f:       65                      gs
402690:       67 61                   addr32 (bad)
402692:       6c                      insb   (%dx),%es:(%rdi)
402693:       20 68 6f                and    %ch,0x6f(%rax)
402696:       73 74                   jae    40270c <array.3305+0x32c>
402698:       20 5b 32                and    %bl,0x32(%rbx)
40269b:       5d                      pop    %rbp
40269c:       00 00                   add    %al,(%rax)
40269e:       00 00                   add    %al,(%rax)
4026a0:       53                      push   %rbx
4026a1:       6f                      outsl  %ds:(%rsi),(%dx)
4026a2:       20 79 6f                and    %bh,0x6f(%rcx)
4026a5:       75 20                   jne    4026c7 <array.3305+0x2e7>
4026a7:       74 68                   je     402711 <array.3305+0x331>
4026a9:       69 6e 6b 20 79 6f 75    imul   $0x756f7920,0x6b(%rsi),%ebp
4026b0:       20 63 61                and    %ah,0x61(%rbx)
4026b3:       6e                      outsb  %ds:(%rsi),(%dx)
4026b4:       20 73 74                and    %dh,0x74(%rbx)
4026b7:       6f                      outsl  %ds:(%rsi),(%dx)
4026b8:       70 20                   jo     4026da <array.3305+0x2fa>
4026ba:       74 68                   je     402724 <array.3305+0x344>
4026bc:       65 20 62 6f             and    %ah,%gs:0x6f(%rdx)
4026c0:       6d                      insl   (%dx),%es:(%rdi)
4026c1:       62                      (bad)
4026c2:       20 77 69                and    %dh,0x69(%rdi)
4026c5:       74 68                   je     40272f <array.3305+0x34f>
4026c7:       20 63 74                and    %ah,0x74(%rbx)
4026ca:       72 6c                   jb     402738 <array.3305+0x358>
4026cc:       2d 63 2c 20 64          sub    $0x64202c63,%eax
4026d1:       6f                      outsl  %ds:(%rsi),(%dx)
4026d2:       20 79 6f                and    %bh,0x6f(%rcx)
4026d5:       75 3f                   jne    402716 <array.3305+0x336>
4026d7:       00 25 25 25 30 32       add    %ah,0x32302525(%rip)        # 32704c02 <_end+0x32100cf2>
4026dd:       58                      pop    %rax
4026de:       00 25 73 20 25 64       add    %ah,0x64252073(%rip)        # 64654757 <_end+0x64050847>
4026e4:       20 25 5b 61 2d 7a       and    %ah,0x7a2d615b(%rip)        # 7a6d8845 <_end+0x7a0d4935>
4026ea:       41 2d 7a 20 5d 00       rex.B sub $0x5d207a,%eax
4026f0:       0d 0a 00 4f 4b          or     $0x4b4f000a,%eax
4026f5:       00 0a                   add    %cl,(%rdx)
4026f7:       41 55                   push   %r13
4026f9:       54                      push   %rsp
4026fa:       4f 52                   rex.WRXB push %r10
4026fc:       45 53                   rex.RB push %r11
4026fe:       55                      push   %rbp
4026ff:       4c 54                   rex.WR push %rsp
402701:       5f                      pop    %rdi
402702:       53                      push   %rbx
402703:       54                      push   %rsp
402704:       52                      push   %rdx
402705:       49                      rex.WB
402706:       4e                      rex.WRX
402707:       47 3d 25 73 0a 00       rex.RXB cmp $0xa7325,%eax
40270d:       38 39                   cmp    %bh,(%rcx)
40270f:       32 33                   xor    (%rbx),%dh
402711:       30 5f 35                xor    %bl,0x35(%rdi)
402714:       37                      (bad)
402715:       37                      (bad)
402716:       37                      (bad)
402717:       5f                      pop    %rdi
402718:       65                      gs
402719:       78 34                   js     40274f <array.3305+0x36f>
40271b:       00 63 73                add    %ah,0x73(%rbx)
40271e:       61                      (bad)
40271f:       70 70                   jo     402791 <array.3305+0x3b1>
402721:       00 00                   add    %al,(%rax)
402723:       00 00                   add    %al,(%rax)
402725:       00 00                   add    %al,(%rax)
402727:       00 45 72                add    %al,0x72(%rbp)
40272a:       72 6f                   jb     40279b <array.3305+0x3bb>
40272c:       72 3a                   jb     402768 <array.3305+0x388>
40272e:       20 55 6e                and    %dl,0x6e(%rbp)
402731:       61                      (bad)
402732:       62                      (bad)
402733:       6c                      insb   (%dx),%es:(%rdi)
402734:       65 20 74 6f 20          and    %dh,%gs:0x20(%rdi,%rbp,2)
402739:       63 6f 6e                movslq 0x6e(%rdi),%ebp
40273c:       6e                      outsb  %ds:(%rsi),(%dx)
40273d:       65 63 74 20 74          movslq %gs:0x74(%rax,%riz,1),%esi
402742:       6f                      outsl  %ds:(%rsi),(%dx)
402743:       20 73 65                and    %dh,0x65(%rbx)
402746:       72 76                   jb     4027be <array.3305+0x3de>
402748:       65                      gs
402749:       72 20                   jb     40276b <array.3305+0x38b>
40274b:       25 73 00 00 00          and    $0x73,%eax
402750:       45 72 72                rex.RB jb 4027c5 <array.3305+0x3e5>
402753:       6f                      outsl  %ds:(%rsi),(%dx)
402754:       72 3a                   jb     402790 <array.3305+0x3b0>
402756:       20 43 6c                and    %al,0x6c(%rbx)
402759:       69 65 6e 74 20 75 6e    imul   $0x6e752074,0x6e(%rbp),%esp
402760:       61                      (bad)
402761:       62                      (bad)
402762:       6c                      insb   (%dx),%es:(%rdi)
402763:       65 20 74 6f 20          and    %dh,%gs:0x20(%rdi,%rbp,2)
402768:       63 72 65                movslq 0x65(%rdx),%esi
40276b:       61                      (bad)
40276c:       74 65                   je     4027d3 <array.3305+0x3f3>
40276e:       20 73 6f                and    %dh,0x6f(%rbx)
402771:       63 6b 65                movslq 0x65(%rbx),%ebp
402774:       74 00                   je     402776 <array.3305+0x396>
402776:       00 00                   add    %al,(%rax)
402778:       45 72 72                rex.RB jb 4027ed <array.3305+0x40d>
40277b:       6f                      outsl  %ds:(%rsi),(%dx)
40277c:       72 3a                   jb     4027b8 <array.3305+0x3d8>
40277e:       20 44 4e 53             and    %al,0x53(%rsi,%rcx,2)
402782:       20 69 73                and    %ch,0x73(%rcx)
402785:       20 75 6e                and    %dh,0x6e(%rbp)
402788:       61                      (bad)
402789:       62                      (bad)
40278a:       6c                      insb   (%dx),%es:(%rdi)
40278b:       65 20 74 6f 20          and    %dh,%gs:0x20(%rdi,%rbp,2)
402790:       72 65                   jb     4027f7 <array.3305+0x417>
402792:       73 6f                   jae    402803 <array.3305+0x423>
402794:       6c                      insb   (%dx),%es:(%rdi)
402795:       76 65                   jbe    4027fc <array.3305+0x41c>
402797:       20 73 65                and    %dh,0x65(%rbx)
40279a:       72 76                   jb     402812 <array.3305+0x432>
40279c:       65                      gs
40279d:       72 20                   jb     4027bf <array.3305+0x3df>
40279f:       61                      (bad)
4027a0:       64                      fs
4027a1:       64                      fs
4027a2:       72 65                   jb     402809 <array.3305+0x429>
4027a4:       73 73                   jae    402819 <array.3305+0x439>
4027a6:       00 00                   add    %al,(%rax)
4027a8:       45 72 72                rex.RB jb 40281d <array.3305+0x43d>
4027ab:       6f                      outsl  %ds:(%rsi),(%dx)
4027ac:       72 3a                   jb     4027e8 <array.3305+0x408>
4027ae:       20 55 6e                and    %dl,0x6e(%rbp)
4027b1:       61                      (bad)
4027b2:       62                      (bad)
4027b3:       6c                      insb   (%dx),%es:(%rdi)
4027b4:       65 20 74 6f 20          and    %dh,%gs:0x20(%rdi,%rbp,2)
4027b9:       63 6f 6e                movslq 0x6e(%rdi),%ebp
4027bc:       6e                      outsb  %ds:(%rsi),(%dx)
4027bd:       65 63 74 20 74          movslq %gs:0x74(%rax,%riz,1),%esi
4027c2:       6f                      outsl  %ds:(%rsi),(%dx)
4027c3:       20 74 68 65             and    %dh,0x65(%rax,%rbp,2)
4027c7:       20 73 65                and    %dh,0x65(%rbx)
4027ca:       72 76                   jb     402842 <array.3305+0x462>
4027cc:       65                      gs
4027cd:       72 00                   jb     4027cf <array.3305+0x3ef>
4027cf:       00 45 72                add    %al,0x72(%rbp)
4027d2:       72 6f                   jb     402843 <array.3305+0x463>
4027d4:       72 3a                   jb     402810 <array.3305+0x430>
4027d6:       20 52 65                and    %dl,0x65(%rdx)
4027d9:       73 75                   jae    402850 <array.3305+0x470>
4027db:       6c                      insb   (%dx),%es:(%rdi)
4027dc:       74 20                   je     4027fe <array.3305+0x41e>
4027de:       73 74                   jae    402854 <array.3305+0x474>
4027e0:       72 69                   jb     40284b <array.3305+0x46b>
4027e2:       6e                      outsb  %ds:(%rsi),(%dx)
4027e3:       67 20 63 6f             and    %ah,0x6f(%ebx)
4027e7:       6e                      outsb  %ds:(%rsi),(%dx)
4027e8:       74 61                   je     40284b <array.3305+0x46b>
4027ea:       69 6e 73 20 61 6e 20    imul   $0x206e6120,0x73(%rsi),%ebp
4027f1:       69 6c 6c 65 67 61 6c    imul   $0x206c6167,0x65(%rsp,%rbp,2),%ebp
4027f8:       20
4027f9:       6f                      outsl  %ds:(%rsi),(%dx)
4027fa:       72 20                   jb     40281c <array.3305+0x43c>
4027fc:       75 6e                   jne    40286c <array.3305+0x48c>
4027fe:       70 72                   jo     402872 <array.3305+0x492>
402800:       69 6e 74 61 62 6c 65    imul   $0x656c6261,0x74(%rsi),%ebp
402807:       20 63 68                and    %ah,0x68(%rbx)
40280a:       61                      (bad)
40280b:       72 61                   jb     40286e <array.3305+0x48e>
40280d:       63 74 65 72             movslq 0x72(%rbp,%riz,2),%esi
402811:       2e 00 00                add    %al,%cs:(%rax)
402814:       00 00                   add    %al,(%rax)
402816:       00 00                   add    %al,(%rax)
402818:       45 72 72                rex.RB jb 40288d <array.3305+0x4ad>
40281b:       6f                      outsl  %ds:(%rsi),(%dx)
40281c:       72 3a                   jb     402858 <array.3305+0x478>
40281e:       20 43 6c                and    %al,0x6c(%rbx)
402821:       69 65 6e 74 20 75 6e    imul   $0x6e752074,0x6e(%rbp),%esp
402828:       61                      (bad)
402829:       62                      (bad)
40282a:       6c                      insb   (%dx),%es:(%rdi)
40282b:       65 20 74 6f 20          and    %dh,%gs:0x20(%rdi,%rbp,2)
402830:       77 72                   ja     4028a4 <array.3305+0x4c4>
402832:       69 74 65 20 74 6f 20    imul   $0x74206f74,0x20(%rbp,%riz,2),%esi
402839:       74
40283a:       68 65 20 73 65          pushq  $0x65732065
40283f:       72 76                   jb     4028b7 <array.3305+0x4d7>
402841:       65                      gs
402842:       72 00                   jb     402844 <array.3305+0x464>
402844:       00 00                   add    %al,(%rax)
402846:       00 00                   add    %al,(%rax)
402848:       45 72 72                rex.RB jb 4028bd <array.3305+0x4dd>
40284b:       6f                      outsl  %ds:(%rsi),(%dx)
40284c:       72 3a                   jb     402888 <array.3305+0x4a8>
40284e:       20 43 6c                and    %al,0x6c(%rbx)
402851:       69 65 6e 74 20 75 6e    imul   $0x6e752074,0x6e(%rbp),%esp
402858:       61                      (bad)
402859:       62                      (bad)
40285a:       6c                      insb   (%dx),%es:(%rdi)
40285b:       65 20 74 6f 20          and    %dh,%gs:0x20(%rdi,%rbp,2)
402860:       72 65                   jb     4028c7 <array.3305+0x4e7>
402862:       61                      (bad)
402863:       64 20 66 69             and    %ah,%fs:0x69(%rsi)
402867:       72 73                   jb     4028dc <array.3305+0x4fc>
402869:       74 20                   je     40288b <array.3305+0x4ab>
40286b:       68 65 61 64 65          pushq  $0x65646165
402870:       72 20                   jb     402892 <array.3305+0x4b2>
402872:       66                      data16
402873:       72 6f                   jb     4028e4 <array.3305+0x504>
402875:       6d                      insl   (%dx),%es:(%rdi)
402876:       20 73 65                and    %dh,0x65(%rbx)
402879:       72 76                   jb     4028f1 <array.3305+0x511>
40287b:       65                      gs
40287c:       72 00                   jb     40287e <array.3305+0x49e>
40287e:       00 00                   add    %al,(%rax)
402880:       45 72 72                rex.RB jb 4028f5 <array.3305+0x515>
402883:       6f                      outsl  %ds:(%rsi),(%dx)
402884:       72 3a                   jb     4028c0 <array.3305+0x4e0>
402886:       20 48 54                and    %cl,0x54(%rax)
402889:       54                      push   %rsp
40288a:       50                      push   %rax
40288b:       20 72 65                and    %dh,0x65(%rdx)
40288e:       71 75                   jno    402905 <array.3305+0x525>
402890:       65                      gs
402891:       73 74                   jae    402907 <array.3305+0x527>
402893:       20 66 61                and    %ah,0x61(%rsi)
402896:       69 6c 65 64 20 77 69    imul   $0x74697720,0x64(%rbp,%riz,2),%ebp
40289d:       74
40289e:       68 20 65 72 72          pushq  $0x72726520
4028a3:       6f                      outsl  %ds:(%rsi),(%dx)
4028a4:       72 20                   jb     4028c6 <array.3305+0x4e6>
4028a6:       25 64 3a 20 25          and    $0x25203a64,%eax
4028ab:       73 00                   jae    4028ad <array.3305+0x4cd>
4028ad:       00 00                   add    %al,(%rax)
4028af:       00 45 72                add    %al,0x72(%rbp)
4028b2:       72 6f                   jb     402923 <array.3305+0x543>
4028b4:       72 3a                   jb     4028f0 <array.3305+0x510>
4028b6:       20 43 6c                and    %al,0x6c(%rbx)
4028b9:       69 65 6e 74 20 75 6e    imul   $0x6e752074,0x6e(%rbp),%esp
4028c0:       61                      (bad)
4028c1:       62                      (bad)
4028c2:       6c                      insb   (%dx),%es:(%rdi)
4028c3:       65 20 74 6f 20          and    %dh,%gs:0x20(%rdi,%rbp,2)
4028c8:       72 65                   jb     40292f <array.3305+0x54f>
4028ca:       61                      (bad)
4028cb:       64 20 73 74             and    %dh,%fs:0x74(%rbx)
4028cf:       61                      (bad)
4028d0:       74 75                   je     402947 <array.3305+0x567>
4028d2:       73 20                   jae    4028f4 <array.3305+0x514>
4028d4:       6d                      insl   (%dx),%es:(%rdi)
4028d5:       65                      gs
4028d6:       73 73                   jae    40294b <array.3305+0x56b>
4028d8:       61                      (bad)
4028d9:       67 65 20 66 72          and    %ah,%gs:0x72(%esi)
4028de:       6f                      outsl  %ds:(%rsi),(%dx)
4028df:       6d                      insl   (%dx),%es:(%rdi)
4028e0:       20 73 65                and    %dh,0x65(%rbx)
4028e3:       72 76                   jb     40295b <array.3305+0x57b>
4028e5:       65                      gs
4028e6:       72 00                   jb     4028e8 <array.3305+0x508>
4028e8:       47                      rex.RXB
4028e9:       45 54                   rex.RB push %r12
4028eb:       20 2f                   and    %ch,(%rdi)
4028ed:       25 73 2f 73 75          and    $0x75732f73,%eax
4028f2:       62                      (bad)
4028f3:       6d                      insl   (%dx),%es:(%rdi)
4028f4:       69 74 72 2e 70 6c 2f    imul   $0x3f2f6c70,0x2e(%rdx,%rsi,2),%esi
4028fb:       3f
4028fc:       75 73                   jne    402971 <array.3305+0x591>
4028fe:       65                      gs
4028ff:       72 69                   jb     40296a <array.3305+0x58a>
402901:       64                      fs
402902:       3d 25 73 26 75          cmp    $0x75267325,%eax
402907:       73 65                   jae    40296e <array.3305+0x58e>
402909:       72 70                   jb     40297b <array.3305+0x59b>
40290b:       77 64                   ja     402971 <array.3305+0x591>
40290d:       3d 25 73 26 6c          cmp    $0x6c267325,%eax
402912:       61                      (bad)
402913:       62                      (bad)
402914:       3d 25 73 26 72          cmp    $0x72267325,%eax
402919:       65                      gs
40291a:       73 75                   jae    402991 <array.3305+0x5b1>
40291c:       6c                      insb   (%dx),%es:(%rdi)
40291d:       74 3d                   je     40295c <array.3305+0x57c>
40291f:       25 73 26 73 75          and    $0x75732673,%eax
402924:       62                      (bad)
402925:       6d                      insl   (%dx),%es:(%rdi)
402926:       69 74 3d 73 75 62 6d    imul   $0x696d6275,0x73(%rbp,%rdi,1),%esi
40292d:       69
40292e:       74 20                   je     402950 <array.3305+0x570>
402930:       48 54                   rex.W push %rsp
402932:       54                      push   %rsp
402933:       50                      push   %rax
402934:       2f                      (bad)
402935:       31 2e                   xor    %ebp,(%rsi)
402937:       30 0d 0a 0d 0a 00       xor    %cl,0xa0d0a(%rip)        # 4a3647 <__FRAME_END__+0xa075f>
40293d:       00 00                   add    %al,(%rax)
40293f:       00 50 72                add    %dl,0x72(%rax)
402942:       6f                      outsl  %ds:(%rsi),(%dx)
402943:       67 72 61                addr32 jb 4029a7 <array.3305+0x5c7>
402946:       6d                      insl   (%dx),%es:(%rdi)
402947:       20 74 69 6d             and    %dh,0x6d(%rcx,%rbp,2)
40294b:       65 64 20 6f 75          gs and %ch,%fs:%gs:0x75(%rdi)
402950:       74 20                   je     402972 <array.3305+0x592>
402952:       61                      (bad)
402953:       66                      data16
402954:       74 65                   je     4029bb <array.3305+0x5db>
402956:       72 20                   jb     402978 <array.3305+0x598>
402958:       25 64 20 73 65          and    $0x65732064,%eax
40295d:       63 6f 6e                movslq 0x6e(%rdi),%ebp
402960:       64                      fs
402961:       73 0a                   jae    40296d <array.3305+0x58d>
402963:       00 00                   add    %al,(%rax)
402965:       00 00                   add    %al,(%rax)
   ...

Disassembly of section .eh_frame_hdr:

0000000000402968 <.eh_frame_hdr>:
402968:       01 1b                   add    %ebx,(%rbx)
40296a:       03 3b                   add    (%rbx),%edi
40296c:       04 01                   add    $0x1,%al
40296e:       00 00                   add    %al,(%rax)
402970:       1f                      (bad)
402971:       00 00                   add    %al,(%rax)
402973:       00 cc                   add    %cl,%ah
402975:       e3 ff                   jrcxz  402976 <array.3305+0x596>
402977:       ff 20                   jmpq   *(%rax)
402979:       01 00                   add    %eax,(%rax)
40297b:       00 08                   add    %cl,(%rax)
40297d:       e5 ff                   in     $0xff,%eax
40297f:       ff 50 01                callq  *0x1(%rax)
402982:       00 00                   add    %al,(%rax)
402984:       5f                      pop    %rdi
402985:       e5 ff                   in     $0xff,%eax
402987:       ff 70 01                pushq  0x1(%rax)
40298a:       00 00                   add    %al,(%rax)
40298c:       9b                      fwait
40298d:       e5 ff                   in     $0xff,%eax
40298f:       ff 88 01 00 00 eb       decl   -0x14ffffff(%rax)
402995:       e5 ff                   in     $0xff,%eax
402997:       ff a8 01 00 00 e6       ljmpq  *-0x19ffffff(%rax)
40299d:       e6 ff                   out    %al,$0xff
40299f:       ff d8                   lcallq *<internal disassembler error>
4029a1:       01 00                   add    %eax,(%rax)
4029a3:       00 2a                   add    %ch,(%rdx)
4029a5:       e7 ff                   out    %eax,$0xff
4029a7:       ff 00                   incl   (%rax)
4029a9:       02 00                   add    (%rax),%al
4029ab:       00 6a e7                add    %ch,-0x19(%rdx)
4029ae:       ff                      (bad)
4029af:       ff 20                   jmpq   *(%rax)
4029b1:       02 00                   add    (%rax),%al
4029b3:       00 bd e7 ff ff 38       add    %bh,0x38ffffe7(%rbp)
4029b9:       02 00                   add    (%rax),%al
4029bb:       00 48 e8                add    %cl,-0x18(%rax)
4029be:       ff                      (bad)
4029bf:       ff 50 02                callq  *0x2(%rax)
4029c2:       00 00                   add    %al,(%rax)
4029c4:       68 e8 ff ff 68          pushq  $0x68ffffe8
4029c9:       02 00                   add    (%rax),%al
4029cb:       00 84 e8 ff ff 80 02    add    %al,0x280ffff(%rax,%rbp,8)
4029d2:       00 00                   add    %al,(%rax)
4029d4:       da e8                   (bad)
4029d6:       ff                      (bad)
4029d7:       ff b0 02 00 00 dc       pushq  -0x23fffffe(%rax)
4029dd:       e8 ff ff c8 02          callq  30929e1 <_end+0x2a8ead1>
4029e2:       00 00                   add    %al,(%rax)
4029e4:       fc                      cld
4029e5:       e8 ff ff e0 02          callq  32129e9 <_end+0x2c0ead9>
4029ea:       00 00                   add    %al,(%rax)
4029ec:       be e9 ff ff 08          mov    $0x8ffffe9,%esi
4029f1:       03 00                   add    (%rax),%eax
4029f3:       00 47 ea                add    %al,-0x16(%rdi)
4029f6:       ff                      (bad)
4029f7:       ff 20                   jmpq   *(%rax)
4029f9:       03 00                   add    (%rax),%eax
4029fb:       00 7d ea                add    %bh,-0x16(%rbp)
4029fe:       ff                      (bad)
4029ff:       ff                      (bad)
402a00:       38 03                   cmp    %al,(%rbx)
402a02:       00 00                   add    %al,(%rax)
402a04:       bf ea ff ff 50          mov    $0x50ffffea,%edi
402a09:       03 00                   add    (%rax),%eax
402a0b:       00 fc                   add    %bh,%ah
402a0d:       ea                      (bad)
402a0e:       ff                      (bad)
402a0f:       ff                      (bad)
402a10:       78 03                   js     402a15 <array.3305+0x635>
402a12:       00 00                   add    %al,(%rax)
402a14:       3d eb ff ff 98          cmp    $0x98ffffeb,%eax
402a19:       03 00                   add    (%rax),%eax
402a1b:       00 78 ec                add    %bh,-0x14(%rax)
402a1e:       ff                      (bad)
402a1f:       ff c8                   dec    %eax
402a21:       03 00                   add    (%rax),%eax
402a23:       00 35 ed ff ff f8       add    %dh,-0x7000013(%rip)        # fffffffff9402a16 <_end+0xfffffffff8dfeb06>
402a29:       03 00                   add    (%rax),%eax
402a2b:       00 88 ed ff ff 10       add    %cl,0x10ffffed(%rax)
402a31:       04 00                   add    $0x0,%al
402a33:       00 5d ef                add    %bl,-0x11(%rbp)
402a36:       ff                      (bad)
402a37:       ff 48 04                decl   0x4(%rax)
402a3a:       00 00                   add    %al,(%rax)
402a3c:       84 ef                   test   %ch,%bh
402a3e:       ff                      (bad)
402a3f:       ff 68 04                ljmpq  *0x4(%rax)
402a42:       00 00                   add    %al,(%rax)
402a44:       a2 f0 ff ff b8 04 00    mov    %al,0xe4000004b8fffff0
402a4b:       00 e4
402a4d:       f6 ff                   idiv   %bh
402a4f:       ff 08                   decl   (%rax)
402a51:       05 00 00 5b f7          add    $0xf75b0000,%eax
402a56:       ff                      (bad)
402a57:       ff 28                   ljmpq  *(%rax)
402a59:       05 00 00 88 f7          add    $0xf7880000,%eax
402a5e:       ff                      (bad)
402a5f:       ff 40 05                incl   0x5(%rax)
402a62:       00 00                   add    %al,(%rax)
402a64:       98                      cwtl
402a65:       f7 ff                   idiv   %edi
402a67:       ff 58 05                lcallq *0x5(%rax)
   ...

Disassembly of section .eh_frame:

0000000000402a70 <__FRAME_END__-0x478>:
402a70:       14 00                   adc    $0x0,%al
402a72:       00 00                   add    %al,(%rax)
402a74:       00 00                   add    %al,(%rax)
402a76:       00 00                   add    %al,(%rax)
402a78:       01 7a 52                add    %edi,0x52(%rdx)
402a7b:       00 01                   add    %al,(%rcx)
402a7d:       78 10                   js     402a8f <array.3305+0x6af>
402a7f:       01 1b                   add    %ebx,(%rbx)
402a81:       0c 07                   or     $0x7,%al
402a83:       08 90 01 00 00 2c       or     %dl,0x2c000001(%rax)
402a89:       00 00                   add    %al,(%rax)
402a8b:       00 1c 00                add    %bl,(%rax,%rax,1)
402a8e:       00 00                   add    %al,(%rax)
402a90:       a4                      movsb  %ds:(%rsi),%es:(%rdi)
402a91:       e2 ff                   loop   402a92 <array.3305+0x6b2>
402a93:       ff                      (bad)
402a94:       3b 01                   cmp    (%rcx),%eax
402a96:       00 00                   add    %al,(%rax)
402a98:       00 41 0e                add    %al,0xe(%rcx)
402a9b:       10 86 02 41 0e 18       adc    %al,0x180e4102(%rsi)
402aa1:       83 03 44                addl   $0x44,(%rbx)
402aa4:       0e                      (bad)
402aa5:       20 03                   and    %al,(%rbx)
402aa7:       32 01                   xor    (%rcx),%al
402aa9:       0e                      (bad)
402aaa:       18 41 0e                sbb    %al,0xe(%rcx)
402aad:       10 41 0e                adc    %al,0xe(%rcx)
402ab0:       08 00                   or     %al,(%rax)
402ab2:       00 00                   add    %al,(%rax)
402ab4:       00 00                   add    %al,(%rax)
402ab6:       00 00                   add    %al,(%rax)
402ab8:       1c 00                   sbb    $0x0,%al
402aba:       00 00                   add    %al,(%rax)
402abc:       4c 00 00                rex.WR add %r8b,(%rax)
402abf:       00 b0 e3 ff ff 57       add    %dh,0x57ffffe3(%rax)
402ac5:       00 00                   add    %al,(%rax)
402ac7:       00 00                   add    %al,(%rax)
402ac9:       53                      push   %rbx
402aca:       0e                      (bad)
402acb:       20 8c 02 86 03 83 04    and    %cl,0x4830386(%rdx,%rax,1)
402ad2:       02 43 0e                add    0xe(%rbx),%al
402ad5:       08 00                   or     %al,(%rax)
402ad7:       00 14 00                add    %dl,(%rax,%rax,1)
402ada:       00 00                   add    %al,(%rax)
402adc:       6c                      insb   (%dx),%es:(%rdi)
402add:       00 00                   add    %al,(%rax)
402adf:       00 e7                   add    %ah,%bh
402ae1:       e3 ff                   jrcxz  402ae2 <array.3305+0x702>
402ae3:       ff                      (bad)
402ae4:       3c 00                   cmp    $0x0,%al
402ae6:       00 00                   add    %al,(%rax)
402ae8:       00 44 0e 10             add    %al,0x10(%rsi,%rcx,1)
402aec:       77 0e                   ja     402afc <array.3305+0x71c>
402aee:       08 00                   or     %al,(%rax)
402af0:       1c 00                   sbb    $0x0,%al
402af2:       00 00                   add    %al,(%rax)
402af4:       84 00                   test   %al,(%rax)
402af6:       00 00                   add    %al,(%rax)
402af8:       0b e4                   or     %esp,%esp
402afa:       ff                      (bad)
402afb:       ff 50 00                callq  *0x0(%rax)
402afe:       00 00                   add    %al,(%rax)
402b00:       00 41 0e                add    %al,0xe(%rcx)
402b03:       10 83 02 02 4e 0e       adc    %al,0xe4e0202(%rbx)
402b09:       08 00                   or     %al,(%rax)
402b0b:       00 00                   add    %al,(%rax)
402b0d:       00 00                   add    %al,(%rax)
402b0f:       00 2c 00                add    %ch,(%rax,%rax,1)
402b12:       00 00                   add    %al,(%rax)
402b14:       a4                      movsb  %ds:(%rsi),%es:(%rdi)
402b15:       00 00                   add    %al,(%rax)
402b17:       00 3b                   add    %bh,(%rbx)
402b19:       e4 ff                   in     $0xff,%al
402b1b:       ff                      (bad)
402b1c:       fb                      sti
402b1d:       00 00                   add    %al,(%rax)
402b1f:       00 00                   add    %al,(%rax)
402b21:       42 0e                   rex.X (bad)
402b23:       10 8c 02 41 0e 18 86    adc    %cl,-0x79e7f1bf(%rdx,%rax,1)
402b2a:       03 41 0e                add    0xe(%rcx),%eax
402b2d:       20 83 04 44 0e 70       and    %al,0x700e4404(%rbx)
402b33:       02 ee                   add    %dh,%ch
402b35:       0e                      (bad)
402b36:       20 41 0e                and    %al,0xe(%rcx)
402b39:       18 41 0e                sbb    %al,0xe(%rcx)
402b3c:       10 42 0e                adc    %al,0xe(%rdx)
402b3f:       08 24 00                or     %ah,(%rax,%rax,1)
402b42:       00 00                   add    %al,(%rax)
402b44:       d4                      (bad)
402b45:       00 00                   add    %al,(%rax)
402b47:       00 06                   add    %al,(%rsi)
402b49:       e5 ff                   in     $0xff,%eax
402b4b:       ff 44 00 00             incl   0x0(%rax,%rax,1)
402b4f:       00 00                   add    %al,(%rax)
402b51:       41 0e                   rex.B (bad)
402b53:       10 86 02 41 0e 18       adc    %al,0x180e4102(%rsi)
402b59:       83 03 44                addl   $0x44,(%rbx)
402b5c:       0e                      (bad)
402b5d:       40 7b 0e                rex jnp 402b6e <array.3305+0x78e>
402b60:       18 41 0e                sbb    %al,0xe(%rcx)
402b63:       10 41 0e                adc    %al,0xe(%rcx)
402b66:       08 00                   or     %al,(%rax)
402b68:       1c 00                   sbb    $0x0,%al
402b6a:       00 00                   add    %al,(%rax)
402b6c:       fc                      cld
402b6d:       00 00                   add    %al,(%rax)
402b6f:       00 22                   add    %ah,(%rdx)
402b71:       e5 ff                   in     $0xff,%eax
402b73:       ff 40 00                incl   0x0(%rax)
402b76:       00 00                   add    %al,(%rax)
402b78:       00 41 0e                add    %al,0xe(%rcx)
402b7b:       10 83 02 7e 0e 08       adc    %al,0x80e7e02(%rbx)
402b81:       00 00                   add    %al,(%rax)
402b83:       00 00                   add    %al,(%rax)
402b85:       00 00                   add    %al,(%rax)
402b87:       00 14 00                add    %dl,(%rax,%rax,1)
402b8a:       00 00                   add    %al,(%rax)
402b8c:       1c 01                   sbb    $0x1,%al
402b8e:       00 00                   add    %al,(%rax)
402b90:       42 e5 ff                rex.X in $0xff,%eax
402b93:       ff 53 00                callq  *0x0(%rbx)
402b96:       00 00                   add    %al,(%rax)
402b98:       00 44 0e 20             add    %al,0x20(%rsi,%rcx,1)
402b9c:       02 4e 0e                add    0xe(%rsi),%cl
402b9f:       08 14 00                or     %dl,(%rax,%rax,1)
402ba2:       00 00                   add    %al,(%rax)
402ba4:       34 01                   xor    $0x1,%al
402ba6:       00 00                   add    %al,(%rax)
402ba8:       7d e5                   jge    402b8f <array.3305+0x7af>
402baa:       ff                      (bad)
402bab:       ff 8b 00 00 00 00       decl   0x0(%rbx)
402bb1:       44 0e                   rex.R (bad)
402bb3:       20 02                   and    %al,(%rdx)
402bb5:       86 0e                   xchg   %cl,(%rsi)
402bb7:       08 14 00                or     %dl,(%rax,%rax,1)
402bba:       00 00                   add    %al,(%rax)
402bbc:       4c 01 00                add    %r8,(%rax)
402bbf:       00 f0                   add    %dh,%al
402bc1:       e5 ff                   in     $0xff,%eax
402bc3:       ff 1c 00                lcallq *(%rax,%rax,1)
402bc6:       00 00                   add    %al,(%rax)
402bc8:       00 44 0e 10             add    %al,0x10(%rsi,%rcx,1)
402bcc:       57                      push   %rdi
402bcd:       0e                      (bad)
402bce:       08 00                   or     %al,(%rax)
402bd0:       14 00                   adc    $0x0,%al
402bd2:       00 00                   add    %al,(%rax)
402bd4:       64 01 00                add    %eax,%fs:(%rax)
402bd7:       00 f8                   add    %bh,%al
402bd9:       e5 ff                   in     $0xff,%eax
402bdb:       ff 1c 00                lcallq *(%rax,%rax,1)
   ...
402be6:       00 00                   add    %al,(%rax)
402be8:       2c 00                   sub    $0x0,%al
402bea:       00 00                   add    %al,(%rax)
402bec:       7c 01                   jl     402bef <array.3305+0x80f>
402bee:       00 00                   add    %al,(%rax)
402bf0:       fc                      cld
402bf1:       e5 ff                   in     $0xff,%eax
402bf3:       ff 56 00                callq  *0x0(%rsi)
402bf6:       00 00                   add    %al,(%rax)
402bf8:       00 42 0e                add    %al,0xe(%rdx)
402bfb:       10 8c 02 41 0e 18 86    adc    %cl,-0x79e7f1bf(%rdx,%rax,1)
402c02:       03 41 0e                add    0xe(%rcx),%eax
402c05:       20 83 04 02 4e 0e       and    %al,0xe4e0204(%rbx)
402c0b:       18 41 0e                sbb    %al,0xe(%rcx)
402c0e:       10 42 0e                adc    %al,0xe(%rdx)
402c11:       08 00                   or     %al,(%rax)
402c13:       00 00                   add    %al,(%rax)
402c15:       00 00                   add    %al,(%rax)
402c17:       00 14 00                add    %dl,(%rax,%rax,1)
402c1a:       00 00                   add    %al,(%rax)
402c1c:       ac                      lods   %ds:(%rsi),%al
402c1d:       01 00                   add    %eax,(%rax)
402c1f:       00 22                   add    %ah,(%rdx)
402c21:       e6 ff                   out    %al,$0xff
402c23:       ff 02                   incl   (%rdx)
   ...
402c2d:       00 00                   add    %al,(%rax)
402c2f:       00 14 00                add    %dl,(%rax,%rax,1)
402c32:       00 00                   add    %al,(%rax)
402c34:       c4 01 00 00             (bad)
402c38:       0c e6                   or     $0xe6,%al
402c3a:       ff                      (bad)
402c3b:       ff 20                   jmpq   *(%rax)
402c3d:       00 00                   add    %al,(%rax)
402c3f:       00 00                   add    %al,(%rax)
402c41:       44 0e                   rex.R (bad)
402c43:       10 00                   adc    %al,(%rax)
402c45:       00 00                   add    %al,(%rax)
402c47:       00 24 00                add    %ah,(%rax,%rax,1)
402c4a:       00 00                   add    %al,(%rax)
402c4c:       dc 01                   faddl  (%rcx)
402c4e:       00 00                   add    %al,(%rax)
402c50:       14 e6                   adc    $0xe6,%al
402c52:       ff                      (bad)
402c53:       ff c2                   inc    %edx
402c55:       00 00                   add    %al,(%rax)
402c57:       00 00                   add    %al,(%rax)
402c59:       41 0e                   rex.B (bad)
402c5b:       10 83 02 47 0e 90       adc    %al,-0x6ff1b8fe(%rbx)
402c61:       80 01 02                addb   $0x2,(%rcx)
402c64:       b8 0e 10 41 0e          mov    $0xe41100e,%eax
402c69:       08 00                   or     %al,(%rax)
402c6b:       00 00                   add    %al,(%rax)
402c6d:       00 00                   add    %al,(%rax)
402c6f:       00 14 00                add    %dl,(%rax,%rax,1)
402c72:       00 00                   add    %al,(%rax)
402c74:       04 02                   add    $0x2,%al
402c76:       00 00                   add    %al,(%rax)
402c78:       ae                      scas   %es:(%rdi),%al
402c79:       e6 ff                   out    %al,$0xff
402c7b:       ff 89 00 00 00 00       decl   0x0(%rcx)
402c81:       44 0e                   rex.R (bad)
402c83:       70 02                   jo     402c87 <array.3305+0x8a7>
402c85:       84 0e                   test   %cl,(%rsi)
402c87:       08 14 00                or     %dl,(%rax,%rax,1)
402c8a:       00 00                   add    %al,(%rax)
402c8c:       1c 02                   sbb    $0x2,%al
402c8e:       00 00                   add    %al,(%rax)
402c90:       1f                      (bad)
402c91:       e7 ff                   out    %eax,$0xff
402c93:       ff 36                   pushq  (%rsi)
402c95:       00 00                   add    %al,(%rax)
402c97:       00 00                   add    %al,(%rax)
402c99:       44 0e                   rex.R (bad)
402c9b:       10 00                   adc    %al,(%rax)
402c9d:       00 00                   add    %al,(%rax)
402c9f:       00 14 00                add    %dl,(%rax,%rax,1)
402ca2:       00 00                   add    %al,(%rax)
402ca4:       34 02                   xor    $0x2,%al
402ca6:       00 00                   add    %al,(%rax)
402ca8:       3d e7 ff ff 42          cmp    $0x42ffffe7,%eax
402cad:       00 00                   add    %al,(%rax)
402caf:       00 00                   add    %al,(%rax)
402cb1:       44 0e                   rex.R (bad)
402cb3:       20 7d 0e                and    %bh,0xe(%rbp)
402cb6:       08 00                   or     %al,(%rax)
402cb8:       24 00                   and    $0x0,%al
402cba:       00 00                   add    %al,(%rax)
402cbc:       4c 02 00                rex.WR add (%rax),%r8b
402cbf:       00 67 e7                add    %ah,-0x19(%rdi)
402cc2:       ff                      (bad)
402cc3:       ff                      (bad)
402cc4:       3d 00 00 00 00          cmp    $0x0,%eax
402cc9:       41 0e                   rex.B (bad)
402ccb:       10 86 02 41 0e 18       adc    %al,0x180e4102(%rsi)
402cd1:       83 03 44                addl   $0x44,(%rbx)
402cd4:       0e                      (bad)
402cd5:       20 74 0e 18             and    %dh,0x18(%rsi,%rcx,1)
402cd9:       41 0e                   rex.B (bad)
402cdb:       10 41 0e                adc    %al,0xe(%rcx)
402cde:       08 00                   or     %al,(%rax)
402ce0:       1c 00                   sbb    $0x0,%al
402ce2:       00 00                   add    %al,(%rax)
402ce4:       74 02                   je     402ce8 <array.3305+0x908>
402ce6:       00 00                   add    %al,(%rax)
402ce8:       7c e7                   jl     402cd1 <array.3305+0x8f1>
402cea:       ff                      (bad)
402ceb:       ff 41 00                incl   0x0(%rcx)
402cee:       00 00                   add    %al,(%rax)
402cf0:       00 41 0e                add    %al,0xe(%rcx)
402cf3:       10 83 02 7f 0e 08       adc    %al,0x80e7f02(%rbx)
402cf9:       00 00                   add    %al,(%rax)
402cfb:       00 00                   add    %al,(%rax)
402cfd:       00 00                   add    %al,(%rax)
402cff:       00 2c 00                add    %ch,(%rax,%rax,1)
402d02:       00 00                   add    %al,(%rax)
402d04:       94                      xchg   %eax,%esp
402d05:       02 00                   add    (%rax),%al
402d07:       00 9d e7 ff ff 3b       add    %bl,0x3bffffe7(%rbp)
402d0d:       01 00                   add    %eax,(%rax)
402d0f:       00 00                   add    %al,(%rax)
402d11:       41 0e                   rex.B (bad)
402d13:       10 86 02 41 0e 18       adc    %al,0x180e4102(%rsi)
402d19:       83 03 44                addl   $0x44,(%rbx)
402d1c:       0e                      (bad)
402d1d:       20 03                   and    %al,(%rbx)
402d1f:       32 01                   xor    (%rcx),%al
402d21:       0e                      (bad)
402d22:       18 41 0e                sbb    %al,0xe(%rcx)
402d25:       10 41 0e                adc    %al,0xe(%rcx)
402d28:       08 00                   or     %al,(%rax)
402d2a:       00 00                   add    %al,(%rax)
402d2c:       00 00                   add    %al,(%rax)
402d2e:       00 00                   add    %al,(%rax)
402d30:       2c 00                   sub    $0x0,%al
402d32:       00 00                   add    %al,(%rax)
402d34:       c4 02 00 00             (bad)
402d38:       a8 e8                   test   $0xe8,%al
402d3a:       ff                      (bad)
402d3b:       ff                      (bad)
402d3c:       bd 00 00 00 00          mov    $0x0,%ebp
402d41:       41 0e                   rex.B (bad)
402d43:       10 86 02 41 0e 18       adc    %al,0x180e4102(%rsi)
402d49:       83 03 47                addl   $0x47,(%rbx)
402d4c:       0e                      (bad)
402d4d:       e0 40                   loopne 402d8f <array.3305+0x9af>
402d4f:       02 b1 0e 18 41 0e       add    0xe41180e(%rcx),%dh
402d55:       10 41 0e                adc    %al,0xe(%rcx)
402d58:       08 00                   or     %al,(%rax)
402d5a:       00 00                   add    %al,(%rax)
402d5c:       00 00                   add    %al,(%rax)
402d5e:       00 00                   add    %al,(%rax)
402d60:       14 00                   adc    $0x0,%al
402d62:       00 00                   add    %al,(%rax)
402d64:       f4                      hlt
402d65:       02 00                   add    (%rax),%al
402d67:       00 35 e9 ff ff 51       add    %dh,0x51ffffe9(%rip)        # 52402d56 <_end+0x51dfee46>
402d6d:       00 00                   add    %al,(%rax)
402d6f:       00 00                   add    %al,(%rax)
402d71:       44 0e                   rex.R (bad)
402d73:       10 00                   adc    %al,(%rax)
402d75:       00 00                   add    %al,(%rax)
402d77:       00 34 00                add    %dh,(%rax,%rax,1)
402d7a:       00 00                   add    %al,(%rax)
402d7c:       0c 03                   or     $0x3,%al
402d7e:       00 00                   add    %al,(%rax)
402d80:       70 e9                   jo     402d6b <array.3305+0x98b>
402d82:       ff                      (bad)
402d83:       ff d5                   callq  *%rbp
402d85:       01 00                   add    %eax,(%rax)
402d87:       00 00                   add    %al,(%rax)
402d89:       42 0e                   rex.X (bad)
402d8b:       10 8c 02 41 0e 18 86    adc    %cl,-0x79e7f1bf(%rdx,%rax,1)
402d92:       03 41 0e                add    0xe(%rcx),%eax
402d95:       20 83 04 44 0e 30       and    %al,0x300e4404(%rbx)
402d9b:       03 c8                   add    %eax,%ecx
402d9d:       01 0e                   add    %ecx,(%rsi)
402d9f:       20 41 0e                and    %al,0xe(%rcx)
402da2:       18 41 0e                sbb    %al,0xe(%rcx)
402da5:       10 42 0e                adc    %al,0xe(%rdx)
402da8:       08 00                   or     %al,(%rax)
402daa:       00 00                   add    %al,(%rax)
402dac:       00 00                   add    %al,(%rax)
402dae:       00 00                   add    %al,(%rax)
402db0:       1c 00                   sbb    $0x0,%al
402db2:       00 00                   add    %al,(%rax)
402db4:       44 03 00                add    (%rax),%r8d
402db7:       00 0d eb ff ff 27       add    %cl,0x27ffffeb(%rip)        # 28402da8 <_end+0x27dfee98>
402dbd:       00 00                   add    %al,(%rax)
402dbf:       00 00                   add    %al,(%rax)
402dc1:       41 0e                   rex.B (bad)
402dc3:       10 83 02 65 0e 08       adc    %al,0x80e6502(%rbx)
402dc9:       00 00                   add    %al,(%rax)
402dcb:       00 00                   add    %al,(%rax)
402dcd:       00 00                   add    %al,(%rax)
402dcf:       00 4c 00 00             add    %cl,0x0(%rax,%rax,1)
402dd3:       00 64 03 00             add    %ah,0x0(%rbx,%rax,1)
402dd7:       00 14 eb                add    %dl,(%rbx,%rbp,8)
402dda:       ff                      (bad)
402ddb:       ff 1e                   lcallq *(%rsi)
402ddd:       01 00                   add    %eax,(%rax)
402ddf:       00 00                   add    %al,(%rax)
402de1:       42 0e                   rex.X (bad)
402de3:       10 8f 02 42 0e 18       adc    %cl,0x180e4202(%rdi)
402de9:       8e 03                   mov    (%rbx),%es
402deb:       42 0e                   rex.X (bad)
402ded:       20 8d 04 42 0e 28       and    %cl,0x280e4204(%rbp)
402df3:       8c 05 41 0e 30 86       mov    %es,-0x79cff1bf(%rip)        # ffffffff86703c3a <_end+0xffffffff860ffd2a>
402df9:       06                      (bad)
402dfa:       41 0e                   rex.B (bad)
402dfc:       38 83 07 44 0e 60       cmp    %al,0x600e4407(%rbx)
402e02:       02 e5                   add    %ch,%ah
402e04:       0a 0e                   or     (%rsi),%cl
402e06:       38 41 0e                cmp    %al,0xe(%rcx)
402e09:       30 41 0e                xor    %al,0xe(%rcx)
402e0c:       28 42 0e                sub    %al,0xe(%rdx)
402e0f:       20 42 0e                and    %al,0xe(%rdx)
402e12:       18 42 0e                sbb    %al,0xe(%rdx)
402e15:       10 42 0e                adc    %al,0xe(%rdx)
402e18:       08 41 0b                or     %al,0xb(%rcx)
402e1b:       00 00                   add    %al,(%rax)
402e1d:       00 00                   add    %al,(%rax)
402e1f:       00 4c 00 00             add    %cl,0x0(%rax,%rax,1)
402e23:       00 b4 03 00 00 e2 eb    add    %dh,-0x141e0000(%rbx,%rax,1)
402e2a:       ff                      (bad)
402e2b:       ff 42 06                incl   0x6(%rdx)
402e2e:       00 00                   add    %al,(%rax)
402e30:       00 42 0e                add    %al,0xe(%rdx)
402e33:       10 8f 02 42 0e 18       adc    %cl,0x180e4202(%rdi)
402e39:       8e 03                   mov    (%rbx),%es
402e3b:       42 0e                   rex.X (bad)
402e3d:       20 8d 04 42 0e 28       and    %cl,0x280e4204(%rbp)
402e43:       8c 05 41 0e 30 86       mov    %es,-0x79cff1bf(%rip)        # ffffffff86703c8a <_end+0xffffffff860ffd7a>
402e49:       06                      (bad)
402e4a:       41 0e                   rex.B (bad)
402e4c:       38 83 07 47 0e b0       cmp    %al,-0x4ff1b8f9(%rbx)
402e52:       c1 02 03                roll   $0x3,(%rdx)
402e55:       b7 05                   mov    $0x5,%bh
402e57:       0a 0e                   or     (%rsi),%cl
402e59:       38 41 0e                cmp    %al,0xe(%rcx)
402e5c:       30 41 0e                xor    %al,0xe(%rcx)
402e5f:       28 42 0e                sub    %al,0xe(%rdx)
402e62:       20 42 0e                and    %al,0xe(%rdx)
402e65:       18 42 0e                sbb    %al,0xe(%rdx)
402e68:       10 42 0e                adc    %al,0xe(%rdx)
402e6b:       08 41 0b                or     %al,0xb(%rcx)
402e6e:       00 00                   add    %al,(%rax)
402e70:       1c 00                   sbb    $0x0,%al
402e72:       00 00                   add    %al,(%rax)
402e74:       04 04                   add    $0x4,%al
402e76:       00 00                   add    %al,(%rax)
402e78:       d4                      (bad)
402e79:       f1                      icebp
402e7a:       ff                      (bad)
402e7b:       ff 77 00                pushq  0x0(%rdi)
402e7e:       00 00                   add    %al,(%rax)
402e80:       00 41 0e                add    %al,0xe(%rcx)
402e83:       10 83 02 44 0e 20       adc    %al,0x200e4402(%rbx)
402e89:       02 70 0e                add    0xe(%rax),%dh
402e8c:       10 41 0e                adc    %al,0xe(%rcx)
402e8f:       08 14 00                or     %dl,(%rax,%rax,1)
402e92:       00 00                   add    %al,(%rax)
402e94:       24 04                   and    $0x4,%al
402e96:       00 00                   add    %al,(%rax)
402e98:       2b f2                   sub    %edx,%esi
402e9a:       ff                      (bad)
402e9b:       ff 29                   ljmpq  *(%rcx)
402e9d:       00 00                   add    %al,(%rax)
402e9f:       00 00                   add    %al,(%rax)
402ea1:       44 0e                   rex.R (bad)
402ea3:       10 00                   adc    %al,(%rax)
402ea5:       00 00                   add    %al,(%rax)
402ea7:       00 14 00                add    %dl,(%rax,%rax,1)
402eaa:       00 00                   add    %al,(%rax)
402eac:       3c 04                   cmp    $0x4,%al
402eae:       00 00                   add    %al,(%rax)
402eb0:       40                      rex
402eb1:       f2 ff                   repnz (bad)
402eb3:       ff 02                   incl   (%rdx)
   ...
402ebd:       00 00                   add    %al,(%rax)
402ebf:       00 24 00                add    %ah,(%rax,%rax,1)
402ec2:       00 00                   add    %al,(%rax)
402ec4:       54                      push   %rsp
402ec5:       04 00                   add    $0x0,%al
402ec7:       00 38                   add    %bh,(%rax)
402ec9:       f2 ff                   repnz (bad)
402ecb:       ff 89 00 00 00 00       decl   0x0(%rcx)
402ed1:       51                      push   %rcx
402ed2:       8c 05 86 06 5f 0e       mov    %es,0xe5f0686(%rip)        # e9f355e <_end+0xe3ef64e>
402ed8:       40 83 07 8f             rex addl $0xffffffffffffff8f,(%rdi)
402edc:       02 8e 03 8d 04 02       add    0x2048d03(%rsi),%cl
402ee2:       58                      pop    %rax
402ee3:       0e                      (bad)
402ee4:       08 00                   or     %al,(%rax)
   ...

0000000000402ee8 <__FRAME_END__>:
402ee8:       00 00                   add    %al,(%rax)
   ...

Disassembly of section .ctors:

0000000000602ef0 <__CTOR_LIST__>:
602ef0:       ff                      (bad)
602ef1:       ff                      (bad)
602ef2:       ff                      (bad)
602ef3:       ff                      (bad)
602ef4:       ff                      (bad)
602ef5:       ff                      (bad)
602ef6:       ff                      (bad)
602ef7:       ff 00                   incl   (%rax)

0000000000602ef8 <__CTOR_END__>:
   ...

Disassembly of section .dtors:

0000000000602f00 <__DTOR_LIST__>:
602f00:       ff                      (bad)
602f01:       ff                      (bad)
602f02:       ff                      (bad)
602f03:       ff                      (bad)
602f04:       ff                      (bad)
602f05:       ff                      (bad)
602f06:       ff                      (bad)
602f07:       ff 00                   incl   (%rax)

0000000000602f08 <__DTOR_END__>:
   ...

Disassembly of section .jcr:

0000000000602f10 <__JCR_END__>:
   ...

Disassembly of section .dynamic:

0000000000602f18 <_DYNAMIC>:
602f18:       01 00                   add    %eax,(%rax)
602f1a:       00 00                   add    %al,(%rax)
602f1c:       00 00                   add    %al,(%rax)
602f1e:       00 00                   add    %al,(%rax)
602f20:       10 00                   adc    %al,(%rax)
602f22:       00 00                   add    %al,(%rax)
602f24:       00 00                   add    %al,(%rax)
602f26:       00 00                   add    %al,(%rax)
602f28:       0c 00                   or     $0x0,%al
602f2a:       00 00                   add    %al,(%rax)
602f2c:       00 00                   add    %al,(%rax)
602f2e:       00 00                   add    %al,(%rax)
602f30:       60                      (bad)
602f31:       0a 40 00                or     0x0(%rax),%al
602f34:       00 00                   add    %al,(%rax)
602f36:       00 00                   add    %al,(%rax)
602f38:       0d 00 00 00 00          or     $0x0,%eax
602f3d:       00 00                   add    %al,(%rax)
602f3f:       00 c8                   add    %cl,%al
602f41:       21 40 00                and    %eax,0x0(%rax)
602f44:       00 00                   add    %al,(%rax)
602f46:       00 00                   add    %al,(%rax)
602f48:       f5                      cmc
602f49:       fe                      (bad)
602f4a:       ff 6f 00                ljmpq  *0x0(%rdi)
602f4d:       00 00                   add    %al,(%rax)
602f4f:       00 60 02                add    %ah,0x2(%rax)
602f52:       40 00 00                add    %al,(%rax)
602f55:       00 00                   add    %al,(%rax)
602f57:       00 05 00 00 00 00       add    %al,0x0(%rip)        # 602f5d <_DYNAMIC+0x45>
602f5d:       00 00                   add    %al,(%rax)
602f5f:       00 a8 05 40 00 00       add    %ch,0x4005(%rax)
602f65:       00 00                   add    %al,(%rax)
602f67:       00 06                   add    %al,(%rsi)
602f69:       00 00                   add    %al,(%rax)
602f6b:       00 00                   add    %al,(%rax)
602f6d:       00 00                   add    %al,(%rax)
602f6f:       00 90 02 40 00 00       add    %dl,0x4002(%rax)
602f75:       00 00                   add    %al,(%rax)
602f77:       00 0a                   add    %cl,(%rdx)
602f79:       00 00                   add    %al,(%rax)
602f7b:       00 00                   add    %al,(%rax)
602f7d:       00 00                   add    %al,(%rax)
602f7f:       00 36                   add    %dh,(%rsi)
602f81:       01 00                   add    %eax,(%rax)
602f83:       00 00                   add    %al,(%rax)
602f85:       00 00                   add    %al,(%rax)
602f87:       00 0b                   add    %cl,(%rbx)
602f89:       00 00                   add    %al,(%rax)
602f8b:       00 00                   add    %al,(%rax)
602f8d:       00 00                   add    %al,(%rax)
602f8f:       00 18                   add    %bl,(%rax)
602f91:       00 00                   add    %al,(%rax)
602f93:       00 00                   add    %al,(%rax)
602f95:       00 00                   add    %al,(%rax)
602f97:       00 15 00 00 00 00       add    %dl,0x0(%rip)        # 602f9d <_DYNAMIC+0x85>
   ...
602fa5:       00 00                   add    %al,(%rax)
602fa7:       00 03                   add    %al,(%rbx)
602fa9:       00 00                   add    %al,(%rax)
602fab:       00 00                   add    %al,(%rax)
602fad:       00 00                   add    %al,(%rax)
602faf:       00 b0 30 60 00 00       add    %dh,0x6030(%rax)
602fb5:       00 00                   add    %al,(%rax)
602fb7:       00 02                   add    %al,(%rdx)
602fb9:       00 00                   add    %al,(%rax)
602fbb:       00 00                   add    %al,(%rax)
602fbd:       00 00                   add    %al,(%rax)
602fbf:       00 a0 02 00 00 00       add    %ah,0x2(%rax)
602fc5:       00 00                   add    %al,(%rax)
602fc7:       00 14 00                add    %dl,(%rax,%rax,1)
602fca:       00 00                   add    %al,(%rax)
602fcc:       00 00                   add    %al,(%rax)
602fce:       00 00                   add    %al,(%rax)
602fd0:       07                      (bad)
602fd1:       00 00                   add    %al,(%rax)
602fd3:       00 00                   add    %al,(%rax)
602fd5:       00 00                   add    %al,(%rax)
602fd7:       00 17                   add    %dl,(%rdi)
602fd9:       00 00                   add    %al,(%rax)
602fdb:       00 00                   add    %al,(%rax)
602fdd:       00 00                   add    %al,(%rax)
602fdf:       00 c0                   add    %al,%al
602fe1:       07                      (bad)
602fe2:       40 00 00                add    %al,(%rax)
602fe5:       00 00                   add    %al,(%rax)
602fe7:       00 07                   add    %al,(%rdi)
602fe9:       00 00                   add    %al,(%rax)
602feb:       00 00                   add    %al,(%rax)
602fed:       00 00                   add    %al,(%rax)
602fef:       00 60 07                add    %ah,0x7(%rax)
602ff2:       40 00 00                add    %al,(%rax)
602ff5:       00 00                   add    %al,(%rax)
602ff7:       00 08                   add    %cl,(%rax)
602ff9:       00 00                   add    %al,(%rax)
602ffb:       00 00                   add    %al,(%rax)
602ffd:       00 00                   add    %al,(%rax)
602fff:       00 60 00                add    %ah,0x0(%rax)
603002:       00 00                   add    %al,(%rax)
603004:       00 00                   add    %al,(%rax)
603006:       00 00                   add    %al,(%rax)
603008:       09 00                   or     %eax,(%rax)
60300a:       00 00                   add    %al,(%rax)
60300c:       00 00                   add    %al,(%rax)
60300e:       00 00                   add    %al,(%rax)
603010:       18 00                   sbb    %al,(%rax)
603012:       00 00                   add    %al,(%rax)
603014:       00 00                   add    %al,(%rax)
603016:       00 00                   add    %al,(%rax)
603018:       fe                      (bad)
603019:       ff                      (bad)
60301a:       ff 6f 00                ljmpq  *0x0(%rdi)
60301d:       00 00                   add    %al,(%rax)
60301f:       00 20                   add    %ah,(%rax)
603021:       07                      (bad)
603022:       40 00 00                add    %al,(%rax)
603025:       00 00                   add    %al,(%rax)
603027:       00 ff                   add    %bh,%bh
603029:       ff                      (bad)
60302a:       ff 6f 00                ljmpq  *0x0(%rdi)
60302d:       00 00                   add    %al,(%rax)
60302f:       00 01                   add    %al,(%rcx)
603031:       00 00                   add    %al,(%rax)
603033:       00 00                   add    %al,(%rax)
603035:       00 00                   add    %al,(%rax)
603037:       00 f0                   add    %dh,%al
603039:       ff                      (bad)
60303a:       ff 6f 00                ljmpq  *0x0(%rdi)
60303d:       00 00                   add    %al,(%rax)
60303f:       00 de                   add    %bl,%dh
603041:       06                      (bad)
603042:       40 00 00                add    %al,(%rax)
   ...

Disassembly of section .got:

00000000006030a8 <.got>:
   ...

Disassembly of section .got.plt:

00000000006030b0 <_GLOBAL_OFFSET_TABLE_>:
6030b0:       18 2f                   sbb    %ch,(%rdi)
6030b2:       60                      (bad)
   ...
6030c7:       00 8e 0a 40 00 00       add    %cl,0x400a(%rsi)
6030cd:       00 00                   add    %al,(%rax)
6030cf:       00 9e 0a 40 00 00       add    %bl,0x400a(%rsi)
6030d5:       00 00                   add    %al,(%rax)
6030d7:       00 ae 0a 40 00 00       add    %ch,0x400a(%rsi)
6030dd:       00 00                   add    %al,(%rax)
6030df:       00 be 0a 40 00 00       add    %bh,0x400a(%rsi)
6030e5:       00 00                   add    %al,(%rax)
6030e7:       00 ce                   add    %cl,%dh
6030e9:       0a 40 00                or     0x0(%rax),%al
6030ec:       00 00                   add    %al,(%rax)
6030ee:       00 00                   add    %al,(%rax)
6030f0:       de 0a                   fimul  (%rdx)
6030f2:       40 00 00                add    %al,(%rax)
6030f5:       00 00                   add    %al,(%rax)
6030f7:       00 ee                   add    %ch,%dh
6030f9:       0a 40 00                or     0x0(%rax),%al
6030fc:       00 00                   add    %al,(%rax)
6030fe:       00 00                   add    %al,(%rax)
603100:       fe 0a                   decb   (%rdx)
603102:       40 00 00                add    %al,(%rax)
603105:       00 00                   add    %al,(%rax)
603107:       00 0e                   add    %cl,(%rsi)
603109:       0b 40 00                or     0x0(%rax),%eax
60310c:       00 00                   add    %al,(%rax)
60310e:       00 00                   add    %al,(%rax)
603110:       1e                      (bad)
603111:       0b 40 00                or     0x0(%rax),%eax
603114:       00 00                   add    %al,(%rax)
603116:       00 00                   add    %al,(%rax)
603118:       2e 0b 40 00             or     %cs:0x0(%rax),%eax
60311c:       00 00                   add    %al,(%rax)
60311e:       00 00                   add    %al,(%rax)
603120:       3e 0b 40 00             or     %ds:0x0(%rax),%eax
603124:       00 00                   add    %al,(%rax)
603126:       00 00                   add    %al,(%rax)
603128:       4e 0b 40 00             rex.WRX or 0x0(%rax),%r8
60312c:       00 00                   add    %al,(%rax)
60312e:       00 00                   add    %al,(%rax)
603130:       5e                      pop    %rsi
603131:       0b 40 00                or     0x0(%rax),%eax
603134:       00 00                   add    %al,(%rax)
603136:       00 00                   add    %al,(%rax)
603138:       6e                      outsb  %ds:(%rsi),(%dx)
603139:       0b 40 00                or     0x0(%rax),%eax
60313c:       00 00                   add    %al,(%rax)
60313e:       00 00                   add    %al,(%rax)
603140:       7e 0b                   jle    60314d <_GLOBAL_OFFSET_TABLE_+0x9d>
603142:       40 00 00                add    %al,(%rax)
603145:       00 00                   add    %al,(%rax)
603147:       00 8e 0b 40 00 00       add    %cl,0x400b(%rsi)
60314d:       00 00                   add    %al,(%rax)
60314f:       00 9e 0b 40 00 00       add    %bl,0x400b(%rsi)
603155:       00 00                   add    %al,(%rax)
603157:       00 ae 0b 40 00 00       add    %ch,0x400b(%rsi)
60315d:       00 00                   add    %al,(%rax)
60315f:       00 be 0b 40 00 00       add    %bh,0x400b(%rsi)
603165:       00 00                   add    %al,(%rax)
603167:       00 ce                   add    %cl,%dh
603169:       0b 40 00                or     0x0(%rax),%eax
60316c:       00 00                   add    %al,(%rax)
60316e:       00 00                   add    %al,(%rax)
603170:       de 0b                   fimul  (%rbx)
603172:       40 00 00                add    %al,(%rax)
603175:       00 00                   add    %al,(%rax)
603177:       00 ee                   add    %ch,%dh
603179:       0b 40 00                or     0x0(%rax),%eax
60317c:       00 00                   add    %al,(%rax)
60317e:       00 00                   add    %al,(%rax)
603180:       fe 0b                   decb   (%rbx)
603182:       40 00 00                add    %al,(%rax)
603185:       00 00                   add    %al,(%rax)
603187:       00 0e                   add    %cl,(%rsi)
603189:       0c 40                   or     $0x40,%al
60318b:       00 00                   add    %al,(%rax)
60318d:       00 00                   add    %al,(%rax)
60318f:       00 1e                   add    %bl,(%rsi)
603191:       0c 40                   or     $0x40,%al
603193:       00 00                   add    %al,(%rax)
603195:       00 00                   add    %al,(%rax)
603197:       00 2e                   add    %ch,(%rsi)
603199:       0c 40                   or     $0x40,%al
60319b:       00 00                   add    %al,(%rax)
60319d:       00 00                   add    %al,(%rax)
60319f:       00 3e                   add    %bh,(%rsi)
6031a1:       0c 40                   or     $0x40,%al
6031a3:       00 00                   add    %al,(%rax)
6031a5:       00 00                   add    %al,(%rax)
   ...

Disassembly of section .data:

00000000006031c0 <__data_start>:
   ...

00000000006031d0 <bomb_id>:
6031d0:       fc                      cld
6031d1:       00 00                   add    %al,(%rax)
   ...

00000000006031d4 <userid>:
6031d4:       6e                      outsb  %ds:(%rsi),(%dx)
6031d5:       61                      (bad)
6031d6:       68 61 72 69 73          pushq  $0x73697261
6031db:       33 00                   xor    (%rax),%eax
6031dd:       00 00                   add    %al,(%rax)
   ...

00000000006031e0 <user_password>:
6031e0:       58                      pop    %rax
6031e1:       6a 42                   pushq  $0x42
6031e3:       6f                      outsl  %ds:(%rsi),(%dx)
6031e4:       77 48                   ja     60322e <node4+0xe>
6031e6:       31 31                   xor    %esi,(%rcx)
6031e8:       6f                      outsl  %ds:(%rsi),(%dx)
6031e9:       61                      (bad)
6031ea:       75 41                   jne    60322d <node4+0xd>
6031ec:       35 71 30 42 73          xor    $0x73423071,%eax
6031f1:       6b 33 6a                imul   $0x6a,(%rbx),%esi
   ...

0000000000603200 <node6>:
603200:       d7                      xlat   %ds:(%rbx)
603201:       03 00                   add    (%rax),%eax
603203:       00 06                   add    %al,(%rsi)
   ...

0000000000603210 <node5>:
603210:       5f                      pop    %rdi
603211:       03 00                   add    (%rax),%eax
603213:       00 05 00 00 00 00       add    %al,0x0(%rip)        # 603219 <node5+0x9>
603219:       32 60 00                xor    0x0(%rax),%ah
60321c:       00 00                   add    %al,(%rax)
   ...

0000000000603220 <node4>:
603220:       59                      pop    %rcx
603221:       00 00                   add    %al,(%rax)
603223:       00 04 00                add    %al,(%rax,%rax,1)
603226:       00 00                   add    %al,(%rax)
603228:       10 32                   adc    %dh,(%rdx)
60322a:       60                      (bad)
60322b:       00 00                   add    %al,(%rax)
60322d:       00 00                   add    %al,(%rax)
   ...

0000000000603230 <node3>:
603230:       0e                      (bad)
603231:       01 00                   add    %eax,(%rax)
603233:       00 03                   add    %al,(%rbx)
603235:       00 00                   add    %al,(%rax)
603237:       00 20                   add    %ah,(%rax)
603239:       32 60 00                xor    0x0(%rax),%ah
60323c:       00 00                   add    %al,(%rax)
   ...

0000000000603240 <node2>:
603240:       64 02 00                add    %fs:(%rax),%al
603243:       00 02                   add    %al,(%rdx)
603245:       00 00                   add    %al,(%rax)
603247:       00 30                   add    %dh,(%rax)
603249:       32 60 00                xor    0x0(%rax),%ah
60324c:       00 00                   add    %al,(%rax)
   ...

0000000000603250 <node1>:
603250:       79 03                   jns    603255 <node1+0x5>
603252:       00 00                   add    %al,(%rax)
603254:       01 00                   add    %eax,(%rax)
603256:       00 00                   add    %al,(%rax)
603258:       40 32 60 00             xor    0x0(%rax),%spl
60325c:       00 00                   add    %al,(%rax)
   ...

0000000000603260 <n48>:
603260:       e9 03 00 00 00          jmpq   603268 <n48+0x8>
   ...

0000000000603280 <n46>:
603280:       2f                      (bad)
   ...

00000000006032a0 <n43>:
6032a0:       14 00                   adc    $0x0,%al
   ...

00000000006032c0 <n42>:
6032c0:       07                      (bad)
   ...

00000000006032e0 <n44>:
6032e0:       23 00                   and    (%rax),%eax
   ...

0000000000603300 <n47>:
603300:       63 00                   movslq (%rax),%eax
   ...

0000000000603320 <n41>:
603320:       01 00                   add    %eax,(%rax)
   ...

0000000000603340 <n45>:
603340:       28 00                   sub    %al,(%rax)
   ...

0000000000603360 <n34>:
603360:       6b 00 00                imul   $0x0,(%rax),%eax
603363:       00 00                   add    %al,(%rax)
603365:       00 00                   add    %al,(%rax)
603367:       00 00                   add    %al,(%rax)
603369:       33 60 00                xor    0x0(%rax),%esp
60336c:       00 00                   add    %al,(%rax)
60336e:       00 00                   add    %al,(%rax)
603370:       60                      (bad)
603371:       32 60 00                xor    0x0(%rax),%ah
   ...

0000000000603380 <n31>:
603380:       06                      (bad)
603381:       00 00                   add    %al,(%rax)
603383:       00 00                   add    %al,(%rax)
603385:       00 00                   add    %al,(%rax)
603387:       00 20                   add    %ah,(%rax)
603389:       33 60 00                xor    0x0(%rax),%esp
60338c:       00 00                   add    %al,(%rax)
60338e:       00 00                   add    %al,(%rax)
603390:       c0                      (bad)
603391:       32 60 00                xor    0x0(%rax),%ah
   ...

00000000006033a0 <n33>:
6033a0:       2d 00 00 00 00          sub    $0x0,%eax
6033a5:       00 00                   add    %al,(%rax)
6033a7:       00 40 33                add    %al,0x33(%rax)
6033aa:       60                      (bad)
6033ab:       00 00                   add    %al,(%rax)
6033ad:       00 00                   add    %al,(%rax)
6033af:       00 80 32 60 00 00       add    %al,0x6032(%rax)
   ...

00000000006033c0 <n32>:
6033c0:       16                      (bad)
6033c1:       00 00                   add    %al,(%rax)
6033c3:       00 00                   add    %al,(%rax)
6033c5:       00 00                   add    %al,(%rax)
6033c7:       00 a0 32 60 00 00       add    %ah,0x6032(%rax)
6033cd:       00 00                   add    %al,(%rax)
6033cf:       00 e0                   add    %ah,%al
6033d1:       32 60 00                xor    0x0(%rax),%ah
   ...

00000000006033e0 <n22>:
6033e0:       32 00                   xor    (%rax),%al
6033e2:       00 00                   add    %al,(%rax)
6033e4:       00 00                   add    %al,(%rax)
6033e6:       00 00                   add    %al,(%rax)
6033e8:       a0 33 60 00 00 00 00    mov    0x6000000000006033,%al
6033ef:       00 60
6033f1:       33 60 00                xor    0x0(%rax),%esp
   ...

0000000000603400 <n21>:
603400:       08 00                   or     %al,(%rax)
603402:       00 00                   add    %al,(%rax)
603404:       00 00                   add    %al,(%rax)
603406:       00 00                   add    %al,(%rax)
603408:       80 33 60                xorb   $0x60,(%rbx)
60340b:       00 00                   add    %al,(%rax)
60340d:       00 00                   add    %al,(%rax)
60340f:       00 c0                   add    %al,%al
603411:       33 60 00                xor    0x0(%rax),%esp
   ...

0000000000603420 <n1>:
603420:       24 00                   and    $0x0,%al
603422:       00 00                   add    %al,(%rax)
603424:       00 00                   add    %al,(%rax)
603426:       00 00                   add    %al,(%rax)
603428:       00 34 60                add    %dh,(%rax,%riz,2)
60342b:       00 00                   add    %al,(%rax)
60342d:       00 00                   add    %al,(%rax)
60342f:       00 e0                   add    %ah,%al
603431:       33 60 00                xor    0x0(%rax),%esp
   ...

0000000000603440 <host_table>:
603440:       fe                      (bad)
603441:       24 40                   and    $0x40,%al
   ...

Disassembly of section .bss:

0000000000603840 <stdin@@GLIBC_2.2.5>:
   ...

0000000000603848 <stderr@@GLIBC_2.2.5>:
   ...

0000000000603850 <stdout@@GLIBC_2.2.5>:
   ...

0000000000603858 <completed.6364>:
   ...

0000000000603860 <dtor_idx.6366>:
   ...

0000000000603868 <num_input_strings>:
   ...

0000000000603870 <infile>:
   ...

0000000000603880 <input_strings>:
   ...

0000000000603ec0 <scratch>:
   ...

Disassembly of section .comment:

0000000000000000 <.comment>:
0:   47                      rex.RXB
1:   43                      rex.XB
2:   43 3a 20                rex.XB cmp (%r8),%spl
5:   28 47 4e                sub    %al,0x4e(%rdi)
8:   55                      push   %rbp
9:   29 20                   sub    %esp,(%rax)
b:   34 2e                   xor    $0x2e,%al
d:   34 2e                   xor    $0x2e,%al
f:   37                      (bad)
10:   20 32                   and    %dh,(%rdx)
12:   30 31                   xor    %dh,(%rcx)
14:   32 30                   xor    (%rax),%dh
16:   33 31                   xor    (%rcx),%esi
18:   33 20                   xor    (%rax),%esp
1a:   28 52 65                sub    %dl,0x65(%rdx)
1d:   64 20 48 61             and    %cl,%fs:0x61(%rax)
21:   74 20                   je     43 <_init-0x400a1d>
23:   34 2e                   xor    $0x2e,%al
25:   34 2e                   xor    $0x2e,%al
27:   37                      (bad)
28:   2d 32 33 29 00          sub    $0x293332,%eax

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
0:   2c 00                   sub    $0x0,%al
2:   00 00                   add    %al,(%rax)
4:   02 00                   add    (%rax),%al
6:   00 00                   add    %al,(%rax)
8:   00 00                   add    %al,(%rax)
a:   08 00                   or     %al,(%rax)
c:   00 00                   add    %al,(%rax)
e:   00 00                   add    %al,(%rax)
10:   34 0d                   xor    $0xd,%al
12:   40 00 00                add    %al,(%rax)
15:   00 00                   add    %al,(%rax)
17:   00 3b                   add    %bh,(%rbx)
19:   01 00                   add    %eax,(%rax)
   ...

Disassembly of section .debug_pubnames:

0000000000000000 <.debug_pubnames>:
0:   22 00                   and    (%rax),%al
2:   00 00                   add    %al,(%rax)
4:   02 00                   add    (%rax),%al
6:   00 00                   add    %al,(%rax)
8:   00 00                   add    %al,(%rax)
a:   69 03 00 00 b4 02       imul   $0x2b40000,(%rbx),%eax
10:   00 00                   add    %al,(%rax)
12:   6d                      insl   (%dx),%es:(%rdi)
13:   61                      (bad)
14:   69 6e 00 52 03 00 00    imul   $0x352,0x0(%rsi),%ebp
1b:   69 6e 66 69 6c 65 00    imul   $0x656c69,0x66(%rsi),%ebp
22:   00 00                   add    %al,(%rax)
   ...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
0:   65 03 00                add    %gs:(%rax),%eax
3:   00 03                   add    %al,(%rbx)
5:   00 00                   add    %al,(%rax)
7:   00 00                   add    %al,(%rax)
9:   00 08                   add    %cl,(%rax)
b:   01 5d 00                add    %ebx,0x0(%rbp)
e:   00 00                   add    %al,(%rax)
10:   01 cc                   add    %ecx,%esp
12:   00 00                   add    %al,(%rax)
14:   00 92 00 00 00 34       add    %dl,0x34000000(%rdx)
1a:   0d 40 00 00 00          or     $0x40,%eax
1f:   00 00                   add    %al,(%rax)
21:   6f                      outsl  %ds:(%rsi),(%dx)
22:   0e                      (bad)
23:   40 00 00                add    %al,(%rax)
26:   00 00                   add    %al,(%rax)
28:   00 00                   add    %al,(%rax)
2a:   00 00                   add    %al,(%rax)
2c:   00 02                   add    %al,(%rdx)
2e:   17                      (bad)
2f:   00 00                   add    %al,(%rax)
31:   00 02                   add    %al,(%rdx)
33:   d3 38                   sarl   %cl,(%rax)
35:   00 00                   add    %al,(%rax)
37:   00 03                   add    %al,(%rbx)
39:   08 07                   or     %al,(%rdi)
3b:   5a                      pop    %rdx
3c:   01 00                   add    %eax,(%rax)
3e:   00 03                   add    %al,(%rbx)
40:   01 08                   add    %ecx,(%rax)
42:   be 00 00 00 03          mov    $0x3000000,%esi
47:   02 07                   add    (%rdi),%al
49:   da 00                   fiaddl (%rax)
4b:   00 00                   add    %al,(%rax)
4d:   03 04 07                add    (%rdi,%rax,1),%eax
50:   5f                      pop    %rdi
51:   01 00                   add    %eax,(%rax)
53:   00 03                   add    %al,(%rbx)
55:   01 06                   add    %eax,(%rsi)
57:   c0 00 00                rolb   $0x0,(%rax)
5a:   00 03                   add    %al,(%rbx)
5c:   02 05 cf 01 00 00       add    0x1cf(%rip),%al        # 231 <_init-0x40082f>
62:   04 04                   add    $0x4,%al
64:   05 69 6e 74 00          add    $0x746e69,%eax
69:   03 08                   add    (%rax),%ecx
6b:   05 b1 01 00 00          add    $0x1b1,%eax
70:   02 9b 01 00 00 03       add    0x3000001(%rbx),%bl
76:   8d 69 00                lea    0x0(%rcx),%ebp
79:   00 00                   add    %al,(%rax)
7b:   02 00                   add    (%rax),%al
7d:   00 00                   add    %al,(%rax)
7f:   00 03                   add    %al,(%rbx)
81:   8e 69 00                mov    0x0(%rcx),%gs
84:   00 00                   add    %al,(%rax)
86:   05 08 06 08 8e          add    $0x8e080608,%eax
8b:   00 00                   add    %al,(%rax)
8d:   00 03                   add    %al,(%rbx)
8f:   01 06                   add    %eax,(%rsi)
91:   c7 00 00 00 02 22       movl   $0x22020000,(%rax)
97:   00 00                   add    %al,(%rax)
99:   00 04 31                add    %al,(%rcx,%rsi,1)
9c:   a0 00 00 00 07 1e 00    mov    0x1e07000000,%al
a3:   00 00
a5:   d8 05 0f 01 3c 02       fadds  0x23c010f(%rip)        # 23c01ba <_end+0x1dbc2aa>
ab:   00 00                   add    %al,(%rax)
ad:   08 e9                   or     %ch,%cl
af:   01 00                   add    %eax,(%rax)
b1:   00 05 10 01 62 00       add    %al,0x620110(%rip)        # 6201c7 <_end+0x1c2b7>
b7:   00 00                   add    %al,(%rax)
b9:   00 08                   add    %cl,(%rax)
bb:   50                      push   %rax
bc:   00 00                   add    %al,(%rax)
be:   00 05 15 01 88 00       add    %al,0x880115(%rip)        # 8801d9 <_end+0x27c2c9>
c4:   00 00                   add    %al,(%rax)
c6:   08 08                   or     %cl,(%rax)
c8:   0a 00                   or     (%rax),%al
ca:   00 00                   add    %al,(%rax)
cc:   05 16 01 88 00          add    $0x880116,%eax
d1:   00 00                   add    %al,(%rax)
d3:   10 08                   adc    %cl,(%rax)
d5:   17                      (bad)
d6:   02 00                   add    (%rax),%al
d8:   00 05 17 01 88 00       add    %al,0x880117(%rip)        # 8801f5 <_end+0x27c2e5>
de:   00 00                   add    %al,(%rax)
e0:   18 08                   sbb    %cl,(%rax)
e2:   27                      (bad)
e3:   00 00                   add    %al,(%rax)
e5:   00 05 18 01 88 00       add    %al,0x880118(%rip)        # 880203 <_end+0x27c2f3>
eb:   00 00                   add    %al,(%rax)
ed:   20 08                   and    %cl,(%rax)
ef:   fc                      cld
f0:   01 00                   add    %eax,(%rax)
f2:   00 05 19 01 88 00       add    %al,0x880119(%rip)        # 880211 <_end+0x27c301>
f8:   00 00                   add    %al,(%rax)
fa:   28 08                   sub    %cl,(%rax)
fc:   c1 01 00                roll   $0x0,(%rcx)
ff:   00 05 1a 01 88 00       add    %al,0x88011a(%rip)        # 88021f <_end+0x27c30f>
105:   00 00                   add    %al,(%rax)
107:   30 08                   xor    %cl,(%rax)
109:   74 01                   je     10c <_init-0x400954>
10b:   00 00                   add    %al,(%rax)
10d:   05 1b 01 88 00          add    $0x88011b,%eax
112:   00 00                   add    %al,(%rax)
114:   38 08                   cmp    %cl,(%rax)
116:   36 00 00                add    %al,%ss:(%rax)
119:   00 05 1c 01 88 00       add    %al,0x88011c(%rip)        # 88023b <_end+0x27c32b>
11f:   00 00                   add    %al,(%rax)
121:   c0 00 08                rolb   $0x8,(%rax)
124:   b0 00                   mov    $0x0,%al
126:   00 00                   add    %al,(%rax)
128:   05 1e 01 88 00          add    $0x88011e,%eax
12d:   00 00                   add    %al,(%rax)
12f:   c8 00 08 d9             enterq $0x800,$0xd9
133:   01 00                   add    %eax,(%rax)
135:   00 05 1f 01 88 00       add    %al,0x88011f(%rip)        # 88025a <_end+0x27c34a>
13b:   00 00                   add    %al,(%rax)
13d:   d0 00                   rolb   (%rax)
13f:   08 f3                   or     %dh,%bl
141:   00 00                   add    %al,(%rax)
143:   00 05 20 01 88 00       add    %al,0x880120(%rip)        # 880269 <_end+0x27c359>
149:   00 00                   add    %al,(%rax)
14b:   d8 00                   fadds  (%rax)
14d:   08 0b                   or     %cl,(%rbx)
14f:   01 00                   add    %eax,(%rax)
151:   00 05 22 01 74 02       add    %al,0x2740122(%rip)        # 2740279 <_end+0x213c369>
157:   00 00                   add    %al,(%rax)
159:   e0 00                   loopne 15b <_init-0x400905>
15b:   08 8b 00 00 00 05       or     %cl,0x5000000(%rbx)
161:   24 01                   and    $0x1,%al
163:   7a 02                   jp     167 <_init-0x4008f9>
165:   00 00                   add    %al,(%rax)
167:   e8 00 08 6c 01          callq  16c096c <_end+0x10bca5c>
16c:   00 00                   add    %al,(%rax)
16e:   05 26 01 62 00          add    $0x620126,%eax
173:   00 00                   add    %al,(%rax)
175:   f0 00 08                lock add %cl,(%rax)
178:   1e                      (bad)
179:   01 00                   add    %eax,(%rax)
17b:   00 05 2a 01 62 00       add    %al,0x62012a(%rip)        # 6202ab <_end+0x1c39b>
181:   00 00                   add    %al,(%rax)
183:   f4                      hlt
184:   00 08                   add    %cl,(%rax)
186:   2c 01                   sub    $0x1,%al
188:   00 00                   add    %al,(%rax)
18a:   05 2c 01 70 00          add    $0x70012c,%eax
18f:   00 00                   add    %al,(%rax)
191:   f8                      clc
192:   00 08                   add    %cl,(%rax)
194:   49 01 00                add    %rax,(%r8)
197:   00 05 30 01 46 00       add    %al,0x460130(%rip)        # 4602cd <__FRAME_END__+0x5d3e5>
19d:   00 00                   add    %al,(%rax)
19f:   80 01 08                addb   $0x8,(%rcx)
1a2:   87 01                   xchg   %eax,(%rcx)
1a4:   00 00                   add    %al,(%rax)
1a6:   05 31 01 54 00          add    $0x540131,%eax
1ab:   00 00                   add    %al,(%rax)
1ad:   82                      (bad)
1ae:   01 08                   add    %ecx,(%rax)
1b0:   2c 02                   sub    $0x2,%al
1b2:   00 00                   add    %al,(%rax)
1b4:   05 32 01 80 02          add    $0x2800132,%eax
1b9:   00 00                   add    %al,(%rax)
1bb:   83 01 08                addl   $0x8,(%rcx)
1be:   38 01                   cmp    %al,(%rcx)
1c0:   00 00                   add    %al,(%rax)
1c2:   05 36 01 90 02          add    $0x2900136,%eax
1c7:   00 00                   add    %al,(%rax)
1c9:   88 01                   mov    %al,(%rcx)
1cb:   08 30                   or     %dh,(%rax)
1cd:   01 00                   add    %eax,(%rax)
1cf:   00 05 3f 01 7b 00       add    %al,0x7b013f(%rip)        # 7b0314 <_end+0x1ac404>
1d5:   00 00                   add    %al,(%rax)
1d7:   90                      nop
1d8:   01 08                   add    %ecx,(%rax)
1da:   f5                      cmc
1db:   01 00                   add    %eax,(%rax)
1dd:   00 05 48 01 86 00       add    %al,0x860148(%rip)        # 86032b <_end+0x25c41b>
1e3:   00 00                   add    %al,(%rax)
1e5:   98                      cwtl
1e6:   01 08                   add    %ecx,(%rax)
1e8:   42 00 00                rex.X add %al,(%rax)
1eb:   00 05 49 01 86 00       add    %al,0x860149(%rip)        # 86033a <_end+0x25c42a>
1f1:   00 00                   add    %al,(%rax)
1f3:   a0 01 08 49 00 00 00    mov    0x4a05000000490801,%al
1fa:   05 4a
1fc:   01 86 00 00 00 a8       add    %eax,-0x58000000(%rsi)
202:   01 08                   add    %ecx,(%rax)
204:   d3 00                   roll   %cl,(%rax)
206:   00 00                   add    %al,(%rax)
208:   05 4b 01 86 00          add    $0x86014b,%eax
20d:   00 00                   add    %al,(%rax)
20f:   b0 01                   mov    $0x1,%al
211:   08 10                   or     %dl,(%rax)
213:   02 00                   add    (%rax),%al
215:   00 05 4c 01 2d 00       add    %al,0x2d014c(%rip)        # 2d0367 <_init-0x1306f9>
21b:   00 00                   add    %al,(%rax)
21d:   b8 01 08 85 00          mov    $0x850801,%eax
222:   00 00                   add    %al,(%rax)
224:   05 4e 01 62 00          add    $0x62014e,%eax
229:   00 00                   add    %al,(%rax)
22b:   c0 01 08                rolb   $0x8,(%rcx)
22e:   a3 01 00 00 05 50 01    mov    %eax,0x296015005000001
235:   96 02
237:   00 00                   add    %al,(%rax)
239:   c4 01 00 09             (bad)
23d:   00 01                   add    %al,(%rcx)
23f:   00 00                   add    %al,(%rax)
241:   05 b4 0a 3e 01          add    $0x13e0ab4,%eax
246:   00 00                   add    %al,(%rax)
248:   18 05 ba 74 02 00       sbb    %al,0x274ba(%rip)        # 27708 <_init-0x3d9358>
24e:   00 0b                   add    %cl,(%rbx)
250:   81 01 00 00 05 bb       addl   $0xbb050000,(%rcx)
256:   74 02                   je     25a <_init-0x400806>
258:   00 00                   add    %al,(%rax)
25a:   00 0b                   add    %cl,(%rbx)
25c:   26 01 00                add    %eax,%es:(%rax)
25f:   00 05 bc 7a 02 00       add    %al,0x27abc(%rip)        # 27d21 <_init-0x3d8d3f>
265:   00 08                   add    %cl,(%rax)
267:   0b 14 01                or     (%rcx,%rax,1),%edx
26a:   00 00                   add    %al,(%rax)
26c:   05 c0 62 00 00          add    $0x62c0,%eax
271:   00 10                   add    %dl,(%rax)
273:   00 06                   add    %al,(%rsi)
275:   08 43 02                or     %al,0x2(%rbx)
278:   00 00                   add    %al,(%rax)
27a:   06                      (bad)
27b:   08 a0 00 00 00 0c       or     %ah,0xc000000(%rax)
281:   8e 00                   mov    (%rax),%es
283:   00 00                   add    %al,(%rax)
285:   90                      nop
286:   02 00                   add    (%rax),%al
288:   00 0d 38 00 00 00       add    %cl,0x38(%rip)        # 2c6 <_init-0x40079a>
28e:   00 00                   add    %al,(%rax)
290:   06                      (bad)
291:   08 3c 02                or     %bh,(%rdx,%rax,1)
294:   00 00                   add    %al,(%rax)
296:   0c 8e                   or     $0x8e,%al
298:   00 00                   add    %al,(%rax)
29a:   00 a6 02 00 00 0d       add    %ah,0xd000002(%rsi)
2a0:   38 00                   cmp    %al,(%rax)
2a2:   00 00                   add    %al,(%rax)
2a4:   13 00                   adc    (%rax),%eax
2a6:   03 08                   add    (%rax),%ecx
2a8:   05 ac 01 00 00          add    $0x1ac,%eax
2ad:   03 08                   add    (%rax),%ecx
2af:   07                      (bad)
2b0:   55                      push   %rbp
2b1:   01 00                   add    %eax,(%rax)
2b3:   00 0e                   add    %cl,(%rsi)
2b5:   01 19                   add    %ebx,(%rcx)
2b7:   01 00                   add    %eax,(%rax)
2b9:   00 01                   add    %al,(%rcx)
2bb:   24 01                   and    $0x1,%al
2bd:   62                      (bad)
2be:   00 00                   add    %al,(%rax)
2c0:   00 34 0d 40 00 00 00    add    %dh,0x40(,%rcx,1)
2c7:   00 00                   add    %al,(%rax)
2c9:   6f                      outsl  %ds:(%rsi),(%dx)
2ca:   0e                      (bad)
2cb:   40 00 00                add    %al,(%rax)
2ce:   00 00                   add    %al,(%rax)
2d0:   00 01                   add    %al,(%rcx)
2d2:   9c                      pushfq
2d3:   05 03 00 00 0f          add    $0xf000003,%eax
2d8:   96                      xchg   %eax,%esi
2d9:   01 00                   add    %eax,(%rax)
2db:   00 01                   add    %al,(%rcx)
2dd:   24 62                   and    $0x62,%al
2df:   00 00                   add    %al,(%rax)
2e1:   00 00                   add    %al,(%rax)
2e3:   00 00                   add    %al,(%rax)
2e5:   00 0f                   add    %cl,(%rdi)
2e7:   f0 01 00                lock add %eax,(%rax)
2ea:   00 01                   add    %al,(%rcx)
2ec:   24 05                   and    $0x5,%al
2ee:   03 00                   add    (%rax),%eax
2f0:   00 36                   add    %dh,(%rsi)
2f2:   00 00                   add    %al,(%rax)
2f4:   00 10                   add    %dl,(%rax)
2f6:   0a 02                   or     (%rdx),%al
2f8:   00 00                   add    %al,(%rax)
2fa:   01 26                   add    %esp,(%rsi)
2fc:   88 00                   mov    %al,(%rax)
2fe:   00 00                   add    %al,(%rax)
300:   6c                      insb   (%dx),%es:(%rdi)
301:   00 00                   add    %al,(%rax)
303:   00 00                   add    %al,(%rax)
305:   06                      (bad)
306:   08 88 00 00 00 11       or     %cl,0x11000000(%rax)
30c:   ed                      in     (%dx),%eax
30d:   00 00                   add    %al,(%rax)
30f:   00 04 a5 7a 02 00 00    add    %al,0x27a(,%riz,4)
316:   01 01                   add    %eax,(%rcx)
318:   11 ba 01 00 00 04       adc    %edi,0x4000001(%rdx)
31e:   a6                      cmpsb  %es:(%rdi),%ds:(%rsi)
31f:   7a 02                   jp     323 <_init-0x40073d>
321:   00 00                   add    %al,(%rax)
323:   01 01                   add    %eax,(%rcx)
325:   11 25 02 00 00 01       adc    %esp,0x1000002(%rip)        # 100032d <_end+0x9fc41d>
32b:   22 32                   and    (%rdx),%dh
32d:   03 00                   add    (%rax),%eax
32f:   00 01                   add    %al,(%rcx)
331:   01 06                   add    %eax,(%rsi)
333:   08 95 00 00 00 11       or     %dl,0x11000000(%rbp)
339:   ed                      in     (%dx),%eax
33a:   00 00                   add    %al,(%rax)
33c:   00 04 a5 7a 02 00 00    add    %al,0x27a(,%riz,4)
343:   01 01                   add    %eax,(%rcx)
345:   11 ba 01 00 00 04       adc    %edi,0x4000001(%rdx)
34b:   a6                      cmpsb  %es:(%rdi),%ds:(%rsi)
34c:   7a 02                   jp     350 <_init-0x400710>
34e:   00 00                   add    %al,(%rax)
350:   01 01                   add    %eax,(%rcx)
352:   12 25 02 00 00 01       adc    0x1000002(%rip),%ah        # 100035a <_end+0x9fc44a>
358:   22 32                   and    (%rdx),%dh
35a:   03 00                   add    (%rax),%eax
35c:   00 01                   add    %al,(%rcx)
35e:   09 03                   or     %eax,(%rbx)
360:   70 38                   jo     39a <_init-0x4006c6>
362:   60                      (bad)
363:   00 00                   add    %al,(%rax)
365:   00 00                   add    %al,(%rax)
   ...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
0:   01 11                   add    %edx,(%rcx)
2:   01 25 0e 13 0b 03       add    %esp,0x30b130e(%rip)        # 30b1316 <_end+0x2aad406>
8:   0e                      (bad)
9:   1b 0e                   sbb    (%rsi),%ecx
b:   11 01                   adc    %eax,(%rcx)
d:   12 01                   adc    (%rcx),%al
f:   10 06                   adc    %al,(%rsi)
11:   00 00                   add    %al,(%rax)
13:   02 16                   add    (%rsi),%dl
15:   00 03                   add    %al,(%rbx)
17:   0e                      (bad)
18:   3a 0b                   cmp    (%rbx),%cl
1a:   3b 0b                   cmp    (%rbx),%ecx
1c:   49 13 00                adc    (%r8),%rax
1f:   00 03                   add    %al,(%rbx)
21:   24 00                   and    $0x0,%al
23:   0b 0b                   or     (%rbx),%ecx
25:   3e 0b 03                or     %ds:(%rbx),%eax
28:   0e                      (bad)
29:   00 00                   add    %al,(%rax)
2b:   04 24                   add    $0x24,%al
2d:   00 0b                   add    %cl,(%rbx)
2f:   0b 3e                   or     (%rsi),%edi
31:   0b 03                   or     (%rbx),%eax
33:   08 00                   or     %al,(%rax)
35:   00 05 0f 00 0b 0b       add    %al,0xb0b000f(%rip)        # b0b004a <_end+0xaaac13a>
3b:   00 00                   add    %al,(%rax)
3d:   06                      (bad)
3e:   0f 00 0b                str    (%rbx)
41:   0b 49 13                or     0x13(%rcx),%ecx
44:   00 00                   add    %al,(%rax)
46:   07                      (bad)
47:   13 01                   adc    (%rcx),%eax
49:   03 0e                   add    (%rsi),%ecx
4b:   0b 0b                   or     (%rbx),%ecx
4d:   3a 0b                   cmp    (%rbx),%cl
4f:   3b 05 01 13 00 00       cmp    0x1301(%rip),%eax        # 1356 <_init-0x3ff70a>
55:   08 0d 00 03 0e 3a       or     %cl,0x3a0e0300(%rip)        # 3a0e035b <_end+0x39adc44b>
5b:   0b 3b                   or     (%rbx),%edi
5d:   05 49 13 38 0d          add    $0xd381349,%eax
62:   00 00                   add    %al,(%rax)
64:   09 16                   or     %edx,(%rsi)
66:   00 03                   add    %al,(%rbx)
68:   0e                      (bad)
69:   3a 0b                   cmp    (%rbx),%cl
6b:   3b 0b                   cmp    (%rbx),%ecx
6d:   00 00                   add    %al,(%rax)
6f:   0a 13                   or     (%rbx),%dl
71:   01 03                   add    %eax,(%rbx)
73:   0e                      (bad)
74:   0b 0b                   or     (%rbx),%ecx
76:   3a 0b                   cmp    (%rbx),%cl
78:   3b 0b                   cmp    (%rbx),%ecx
7a:   01 13                   add    %edx,(%rbx)
7c:   00 00                   add    %al,(%rax)
7e:   0b 0d 00 03 0e 3a       or     0x3a0e0300(%rip),%ecx        # 3a0e0384 <_end+0x39adc474>
84:   0b 3b                   or     (%rbx),%edi
86:   0b 49 13                or     0x13(%rcx),%ecx
89:   38 0d 00 00 0c 01       cmp    %cl,0x10c0000(%rip)        # 10c008f <_end+0xabc17f>
8f:   01 49 13                add    %ecx,0x13(%rcx)
92:   01 13                   add    %edx,(%rbx)
94:   00 00                   add    %al,(%rax)
96:   0d 21 00 49 13          or     $0x13490021,%eax
9b:   2f                      (bad)
9c:   0b 00                   or     (%rax),%eax
9e:   00 0e                   add    %cl,(%rsi)
a0:   2e 01 3f                add    %edi,%cs:(%rdi)
a3:   0c 03                   or     $0x3,%al
a5:   0e                      (bad)
a6:   3a 0b                   cmp    (%rbx),%cl
a8:   3b 0b                   cmp    (%rbx),%ecx
aa:   27                      (bad)
ab:   0c 49                   or     $0x49,%al
ad:   13 11                   adc    (%rcx),%edx
af:   01 12                   add    %edx,(%rdx)
b1:   01 40 0a                add    %eax,0xa(%rax)
b4:   01 13                   add    %edx,(%rbx)
b6:   00 00                   add    %al,(%rax)
b8:   0f 05                   syscall
ba:   00 03                   add    %al,(%rbx)
bc:   0e                      (bad)
bd:   3a 0b                   cmp    (%rbx),%cl
bf:   3b 0b                   cmp    (%rbx),%ecx
c1:   49 13 02                adc    (%r10),%rax
c4:   06                      (bad)
c5:   00 00                   add    %al,(%rax)
c7:   10 34 00                adc    %dh,(%rax,%rax,1)
ca:   03 0e                   add    (%rsi),%ecx
cc:   3a 0b                   cmp    (%rbx),%cl
ce:   3b 0b                   cmp    (%rbx),%ecx
d0:   49 13 02                adc    (%r10),%rax
d3:   06                      (bad)
d4:   00 00                   add    %al,(%rax)
d6:   11 34 00                adc    %esi,(%rax,%rax,1)
d9:   03 0e                   add    (%rsi),%ecx
db:   3a 0b                   cmp    (%rbx),%cl
dd:   3b 0b                   cmp    (%rbx),%ecx
df:   49 13 3f                adc    (%r15),%rdi
e2:   0c 3c                   or     $0x3c,%al
e4:   0c 00                   or     $0x0,%al
e6:   00 12                   add    %dl,(%rdx)
e8:   34 00                   xor    $0x0,%al
ea:   03 0e                   add    (%rsi),%ecx
ec:   3a 0b                   cmp    (%rbx),%cl
ee:   3b 0b                   cmp    (%rbx),%ecx
f0:   49 13 3f                adc    (%r15),%rdi
f3:   0c 02                   or     $0x2,%al
f5:   0a 00                   or     (%rax),%al
   ...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
0:   d7                      xlat   %ds:(%rbx)
1:   00 00                   add    %al,(%rax)
3:   00 02                   add    %al,(%rdx)
5:   00 98 00 00 00 01       add    %bl,0x1000000(%rax)
b:   01 fb                   add    %edi,%ebx
d:   0e                      (bad)
e:   0d 00 01 01 01          or     $0x1010100,%eax
13:   01 00                   add    %eax,(%rax)
15:   00 00                   add    %al,(%rax)
17:   01 00                   add    %eax,(%rax)
19:   00 01                   add    %al,(%rcx)
1b:   2f                      (bad)
1c:   75 73                   jne    91 <_init-0x4009cf>
1e:   72 2f                   jb     4f <_init-0x400a11>
20:   6c                      insb   (%dx),%es:(%rdi)
21:   69 62 2f 67 63 63 2f    imul   $0x2f636367,0x2f(%rdx),%esp
28:   78 38                   js     62 <_init-0x4009fe>
2a:   36                      ss
2b:   5f                      pop    %rdi
2c:   36                      ss
2d:   34 2d                   xor    $0x2d,%al
2f:   72 65                   jb     96 <_init-0x4009ca>
31:   64                      fs
32:   68 61 74 2d 6c          pushq  $0x6c2d7461
37:   69 6e 75 78 2f 34 2e    imul   $0x2e342f78,0x75(%rsi),%ebp
3e:   34 2e                   xor    $0x2e,%al
40:   37                      (bad)
41:   2f                      (bad)
42:   69 6e 63 6c 75 64 65    imul   $0x6564756c,0x63(%rsi),%ebp
49:   00 2f                   add    %ch,(%rdi)
4b:   75 73                   jne    c0 <_init-0x4009a0>
4d:   72 2f                   jb     7e <_init-0x4009e2>
4f:   69 6e 63 6c 75 64 65    imul   $0x6564756c,0x63(%rsi),%ebp
56:   2f                      (bad)
57:   62                      (bad)
58:   69 74 73 00 2f 75 73    imul   $0x7273752f,0x0(%rbx,%rsi,2),%esi
5f:   72
60:   2f                      (bad)
61:   69 6e 63 6c 75 64 65    imul   $0x6564756c,0x63(%rsi),%ebp
68:   00 00                   add    %al,(%rax)
6a:   62                      (bad)
6b:   6f                      outsl  %ds:(%rsi),(%dx)
6c:   6d                      insl   (%dx),%es:(%rdi)
6d:   62                      (bad)
6e:   2e 63 00                movslq %cs:(%rax),%eax
71:   00 00                   add    %al,(%rax)
73:   00 73 74                add    %dh,0x74(%rbx)
76:   64                      fs
77:   64                      fs
78:   65                      gs
79:   66                      data16
7a:   2e                      cs
7b:   68 00 01 00 00          pushq  $0x100
80:   74 79                   je     fb <_init-0x400965>
82:   70 65                   jo     e9 <_init-0x400977>
84:   73 2e                   jae    b4 <_init-0x4009ac>
86:   68 00 02 00 00          pushq  $0x200
8b:   73 74                   jae    101 <_init-0x40095f>
8d:   64 69 6f 2e 68 00 03    imul   $0x30068,%fs:0x2e(%rdi),%ebp
94:   00
95:   00 6c 69 62             add    %ch,0x62(%rcx,%rbp,2)
99:   69 6f 2e 68 00 03 00    imul   $0x30068,0x2e(%rdi),%ebp
a0:   00 00                   add    %al,(%rax)
a2:   00 09                   add    %cl,(%rcx)
a4:   02 34 0d 40 00 00 00    add    0x40(,%rcx,1),%dh
ab:   00 00                   add    %al,(%rax)
ad:   03 24 01                add    (%rcx,%rax,1),%esp
b0:   98                      cwtl
b1:   59                      pop    %rcx
b2:   f9                      stc
b3:   59                      pop    %rcx
b4:   08 c9                   or     %cl,%cl
b6:   08 13                   or     %dl,(%rbx)
b8:   a4                      movsb  %ds:(%rsi),%es:(%rdi)
b9:   08 21                   or     %ah,(%rcx)
bb:   a2 5a 9f a1 59 83 5a    mov    %al,0x59a25a8359a19f5a
c2:   a2 59
c4:   83 59 a2 59             sbbl   $0x59,-0x5e(%rcx)
c8:   83 59 a1 59             sbbl   $0x59,-0x5f(%rcx)
cc:   83 59 a1 59             sbbl   $0x59,-0x5f(%rcx)
d0:   83 59 a2 59             sbbl   $0x59,-0x5e(%rcx)
d4:   83 5e 02 0c             sbbl   $0xc,0x2(%rsi)
d8:   00 01                   add    %al,(%rcx)
da:   01                      .byte 0x1

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
0:   5f                      pop    %rdi
1:   5f                      pop    %rdi
2:   6f                      outsl  %ds:(%rsi),(%dx)
3:   66                      data16
4:   66                      data16
5:   36                      ss
6:   34 5f                   xor    $0x5f,%al
8:   74 00                   je     a <_init-0x400a56>
a:   5f                      pop    %rdi
b:   49                      rex.WB
c:   4f 5f                   rex.WRXB pop %r15
e:   72 65                   jb     75 <_init-0x4009eb>
10:   61                      (bad)
11:   64                      fs
12:   5f                      pop    %rdi
13:   65 6e                   outsb  %gs:(%rsi),(%dx)
15:   64 00 73 69             add    %dh,%fs:0x69(%rbx)
19:   7a 65                   jp     80 <_init-0x4009e0>
1b:   5f                      pop    %rdi
1c:   74 00                   je     1e <_init-0x400a42>
1e:   5f                      pop    %rdi
1f:   49                      rex.WB
20:   4f 5f                   rex.WRXB pop %r15
22:   46                      rex.RX
23:   49                      rex.WB
24:   4c                      rex.WR
25:   45 00 5f 49             add    %r11b,0x49(%r15)
29:   4f 5f                   rex.WRXB pop %r15
2b:   77 72                   ja     9f <_init-0x4009c1>
2d:   69 74 65 5f 62 61 73    imul   $0x65736162,0x5f(%rbp,%riz,2),%esi
34:   65
35:   00 5f 49                add    %bl,0x49(%rdi)
38:   4f 5f                   rex.WRXB pop %r15
3a:   62                      (bad)
3b:   75 66                   jne    a3 <_init-0x4009bd>
3d:   5f                      pop    %rdi
3e:   65 6e                   outsb  %gs:(%rsi),(%dx)
40:   64 00 5f 5f             add    %bl,%fs:0x5f(%rdi)
44:   70 61                   jo     a7 <_init-0x4009b9>
46:   64 32 00                xor    %fs:(%rax),%al
49:   5f                      pop    %rdi
4a:   5f                      pop    %rdi
4b:   70 61                   jo     ae <_init-0x4009b2>
4d:   64 33 00                xor    %fs:(%rax),%eax
50:   5f                      pop    %rdi
51:   49                      rex.WB
52:   4f 5f                   rex.WRXB pop %r15
54:   72 65                   jb     bb <_init-0x4009a5>
56:   61                      (bad)
57:   64                      fs
58:   5f                      pop    %rdi
59:   70 74                   jo     cf <_init-0x400991>
5b:   72 00                   jb     5d <_init-0x400a03>
5d:   47                      rex.RXB
5e:   4e 55                   rex.WRX push %rbp
60:   20 43 20                and    %al,0x20(%rbx)
63:   34 2e                   xor    $0x2e,%al
65:   34 2e                   xor    $0x2e,%al
67:   37                      (bad)
68:   20 32                   and    %dh,(%rdx)
6a:   30 31                   xor    %dh,(%rcx)
6c:   32 30                   xor    (%rax),%dh
6e:   33 31                   xor    (%rcx),%esi
70:   33 20                   xor    (%rax),%esp
72:   28 52 65                sub    %dl,0x65(%rdx)
75:   64 20 48 61             and    %cl,%fs:0x61(%rax)
79:   74 20                   je     9b <_init-0x4009c5>
7b:   34 2e                   xor    $0x2e,%al
7d:   34 2e                   xor    $0x2e,%al
7f:   37                      (bad)
80:   2d 32 33 29 00          sub    $0x293332,%eax
85:   5f                      pop    %rdi
86:   6d                      insl   (%dx),%es:(%rdi)
87:   6f                      outsl  %ds:(%rsi),(%dx)
88:   64 65 00 5f 63          fs add %bl,%fs:%gs:0x63(%rdi)
8d:   68 61 69 6e 00          pushq  $0x6e6961
92:   2f                      (bad)
93:   75 2f                   jne    c4 <_init-0x40099c>
95:   63 6f 75                movslq 0x75(%rdi),%ebp
98:   72 73                   jb     10d <_init-0x400953>
9a:   65                      gs
9b:   73 2f                   jae    cc <_init-0x400994>
9d:   38 39                   cmp    %bh,(%rcx)
9f:   2d 32 33 30 2f          sub    $0x2f303332,%eax
a4:   62                      (bad)
a5:   6f                      outsl  %ds:(%rsi),(%dx)
a6:   6d                      insl   (%dx),%es:(%rdi)
a7:   62                      (bad)
a8:   6c                      insb   (%dx),%es:(%rdi)
a9:   61                      (bad)
aa:   62                      (bad)
ab:   2f                      (bad)
ac:   73 72                   jae    120 <_init-0x400940>
ae:   63 00                   movslq (%rax),%eax
b0:   5f                      pop    %rdi
b1:   49                      rex.WB
b2:   4f 5f                   rex.WRXB pop %r15
b4:   73 61                   jae    117 <_init-0x400949>
b6:   76 65                   jbe    11d <_init-0x400943>
b8:   5f                      pop    %rdi
b9:   62                      (bad)
ba:   61                      (bad)
bb:   73 65                   jae    122 <_init-0x40093e>
bd:   00 75 6e                add    %dh,0x6e(%rbp)
c0:   73 69                   jae    12b <_init-0x400935>
c2:   67 6e                   outsb  %ds:(%esi),(%dx)
c4:   65 64 20 63 68          gs and %ah,%fs:%gs:0x68(%rbx)
c9:   61                      (bad)
ca:   72 00                   jb     cc <_init-0x400994>
cc:   62                      (bad)
cd:   6f                      outsl  %ds:(%rsi),(%dx)
ce:   6d                      insl   (%dx),%es:(%rdi)
cf:   62                      (bad)
d0:   2e 63 00                movslq %cs:(%rax),%eax
d3:   5f                      pop    %rdi
d4:   5f                      pop    %rdi
d5:   70 61                   jo     138 <_init-0x400928>
d7:   64                      fs
d8:   34 00                   xor    $0x0,%al
da:   73 68                   jae    144 <_init-0x40091c>
dc:   6f                      outsl  %ds:(%rsi),(%dx)
dd:   72 74                   jb     153 <_init-0x40090d>
df:   20 75 6e                and    %dh,0x6e(%rbp)
e2:   73 69                   jae    14d <_init-0x400913>
e4:   67 6e                   outsb  %ds:(%esi),(%dx)
e6:   65 64 20 69 6e          gs and %ch,%fs:%gs:0x6e(%rcx)
eb:   74 00                   je     ed <_init-0x400973>
ed:   73 74                   jae    163 <_init-0x4008fd>
ef:   64 69 6e 00 5f 49 4f    imul   $0x5f4f495f,%fs:0x0(%rsi),%ebp
f6:   5f
f7:   73 61                   jae    15a <_init-0x400906>
f9:   76 65                   jbe    160 <_init-0x400900>
fb:   5f                      pop    %rdi
fc:   65 6e                   outsb  %gs:(%rsi),(%dx)
fe:   64 00 5f 49             add    %bl,%fs:0x49(%rdi)
102:   4f 5f                   rex.WRXB pop %r15
104:   6c                      insb   (%dx),%es:(%rdi)
105:   6f                      outsl  %ds:(%rsi),(%dx)
106:   63 6b 5f                movslq 0x5f(%rbx),%ebp
109:   74 00                   je     10b <_init-0x400955>
10b:   5f                      pop    %rdi
10c:   6d                      insl   (%dx),%es:(%rdi)
10d:   61                      (bad)
10e:   72 6b                   jb     17b <_init-0x4008e5>
110:   65                      gs
111:   72 73                   jb     186 <_init-0x4008da>
113:   00 5f 70                add    %bl,0x70(%rdi)
116:   6f                      outsl  %ds:(%rsi),(%dx)
117:   73 00                   jae    119 <_init-0x400947>
119:   6d                      insl   (%dx),%es:(%rdi)
11a:   61                      (bad)
11b:   69 6e 00 5f 66 6c 61    imul   $0x616c665f,0x0(%rsi),%ebp
122:   67 73 32                addr32 jae 157 <_init-0x400909>
125:   00 5f 73                add    %bl,0x73(%rdi)
128:   62                      (bad)
129:   75 66                   jne    191 <_init-0x4008cf>
12b:   00 5f 6f                add    %bl,0x6f(%rdi)
12e:   6c                      insb   (%dx),%es:(%rdi)
12f:   64                      fs
130:   5f                      pop    %rdi
131:   6f                      outsl  %ds:(%rsi),(%dx)
132:   66                      data16
133:   66                      data16
134:   73 65                   jae    19b <_init-0x4008c5>
136:   74 00                   je     138 <_init-0x400928>
138:   5f                      pop    %rdi
139:   6c                      insb   (%dx),%es:(%rdi)
13a:   6f                      outsl  %ds:(%rsi),(%dx)
13b:   63 6b 00                movslq 0x0(%rbx),%ebp
13e:   5f                      pop    %rdi
13f:   49                      rex.WB
140:   4f 5f                   rex.WRXB pop %r15
142:   6d                      insl   (%dx),%es:(%rdi)
143:   61                      (bad)
144:   72 6b                   jb     1b1 <_init-0x4008af>
146:   65                      gs
147:   72 00                   jb     149 <_init-0x400917>
149:   5f                      pop    %rdi
14a:   63 75 72                movslq 0x72(%rbp),%esi
14d:   5f                      pop    %rdi
14e:   63 6f 6c                movslq 0x6c(%rdi),%ebp
151:   75 6d                   jne    1c0 <_init-0x4008a0>
153:   6e                      outsb  %ds:(%rsi),(%dx)
154:   00 6c 6f 6e             add    %ch,0x6e(%rdi,%rbp,2)
158:   67 20 6c 6f 6e          and    %ch,0x6e(%edi,%ebp,2)
15d:   67 20 75 6e             and    %dh,0x6e(%ebp)
161:   73 69                   jae    1cc <_init-0x400894>
163:   67 6e                   outsb  %ds:(%esi),(%dx)
165:   65 64 20 69 6e          gs and %ch,%fs:%gs:0x6e(%rcx)
16a:   74 00                   je     16c <_init-0x4008f4>
16c:   5f                      pop    %rdi
16d:   66 69 6c 65 6e 6f 00    imul   $0x6f,0x6e(%rbp,%riz,2),%bp
174:   5f                      pop    %rdi
175:   49                      rex.WB
176:   4f 5f                   rex.WRXB pop %r15
178:   62                      (bad)
179:   75 66                   jne    1e1 <_init-0x40087f>
17b:   5f                      pop    %rdi
17c:   62                      (bad)
17d:   61                      (bad)
17e:   73 65                   jae    1e5 <_init-0x40087b>
180:   00 5f 6e                add    %bl,0x6e(%rdi)
183:   65                      gs
184:   78 74                   js     1fa <_init-0x400866>
186:   00 5f 76                add    %bl,0x76(%rdi)
189:   74 61                   je     1ec <_init-0x400874>
18b:   62                      (bad)
18c:   6c                      insb   (%dx),%es:(%rdi)
18d:   65                      gs
18e:   5f                      pop    %rdi
18f:   6f                      outsl  %ds:(%rsi),(%dx)
190:   66                      data16
191:   66                      data16
192:   73 65                   jae    1f9 <_init-0x400867>
194:   74 00                   je     196 <_init-0x4008ca>
196:   61                      (bad)
197:   72 67                   jb     200 <_init-0x400860>
199:   63 00                   movslq (%rax),%eax
19b:   5f                      pop    %rdi
19c:   5f                      pop    %rdi
19d:   6f                      outsl  %ds:(%rsi),(%dx)
19e:   66 66 5f                data32 pop %di
1a1:   74 00                   je     1a3 <_init-0x4008bd>
1a3:   5f                      pop    %rdi
1a4:   75 6e                   jne    214 <_init-0x40084c>
1a6:   75 73                   jne    21b <_init-0x400845>
1a8:   65 64 32 00             gs xor %fs:%gs:(%rax),%al
1ac:   6c                      insb   (%dx),%es:(%rdi)
1ad:   6f                      outsl  %ds:(%rsi),(%dx)
1ae:   6e                      outsb  %ds:(%rsi),(%dx)
1af:   67 20 6c 6f 6e          and    %ch,0x6e(%edi,%ebp,2)
1b4:   67 20 69 6e             and    %ch,0x6e(%ecx)
1b8:   74 00                   je     1ba <_init-0x4008a6>
1ba:   73 74                   jae    230 <_init-0x400830>
1bc:   64 6f                   outsl  %fs:(%rsi),(%dx)
1be:   75 74                   jne    234 <_init-0x40082c>
1c0:   00 5f 49                add    %bl,0x49(%rdi)
1c3:   4f 5f                   rex.WRXB pop %r15
1c5:   77 72                   ja     239 <_init-0x400827>
1c7:   69 74 65 5f 65 6e 64    imul   $0x646e65,0x5f(%rbp,%riz,2),%esi
1ce:   00
1cf:   73 68                   jae    239 <_init-0x400827>
1d1:   6f                      outsl  %ds:(%rsi),(%dx)
1d2:   72 74                   jb     248 <_init-0x400818>
1d4:   20 69 6e                and    %ch,0x6e(%rcx)
1d7:   74 00                   je     1d9 <_init-0x400887>
1d9:   5f                      pop    %rdi
1da:   49                      rex.WB
1db:   4f 5f                   rex.WRXB pop %r15
1dd:   62                      (bad)
1de:   61                      (bad)
1df:   63 6b 75                movslq 0x75(%rbx),%ebp
1e2:   70 5f                   jo     243 <_init-0x40081d>
1e4:   62                      (bad)
1e5:   61                      (bad)
1e6:   73 65                   jae    24d <_init-0x400813>
1e8:   00 5f 66                add    %bl,0x66(%rdi)
1eb:   6c                      insb   (%dx),%es:(%rdi)
1ec:   61                      (bad)
1ed:   67 73 00                addr32 jae 1f0 <_init-0x400870>
1f0:   61                      (bad)
1f1:   72 67                   jb     25a <_init-0x400806>
1f3:   76 00                   jbe    1f5 <_init-0x40086b>
1f5:   5f                      pop    %rdi
1f6:   5f                      pop    %rdi
1f7:   70 61                   jo     25a <_init-0x400806>
1f9:   64 31 00                xor    %eax,%fs:(%rax)
1fc:   5f                      pop    %rdi
1fd:   49                      rex.WB
1fe:   4f 5f                   rex.WRXB pop %r15
200:   77 72                   ja     274 <_init-0x4007ec>
202:   69 74 65 5f 70 74 72    imul   $0x727470,0x5f(%rbp,%riz,2),%esi
209:   00
20a:   69 6e 70 75 74 00 5f    imul   $0x5f007475,0x70(%rsi),%ebp
211:   5f                      pop    %rdi
212:   70 61                   jo     275 <_init-0x4007eb>
214:   64                      fs
215:   35 00 5f 49 4f          xor    $0x4f495f00,%eax
21a:   5f                      pop    %rdi
21b:   72 65                   jb     282 <_init-0x4007de>
21d:   61                      (bad)
21e:   64                      fs
21f:   5f                      pop    %rdi
220:   62                      (bad)
221:   61                      (bad)
222:   73 65                   jae    289 <_init-0x4007d7>
224:   00 69 6e                add    %ch,0x6e(%rcx)
227:   66 69 6c 65 00 5f 73    imul   $0x735f,0x0(%rbp,%riz,2),%bp
22e:   68 6f 72 74 62          pushq  $0x6274726f
233:   75 66                   jne    29b <_init-0x4007c5>
   ...

Disassembly of section .debug_loc:

0000000000000000 <.debug_loc>:
   ...
8:   30 00                   xor    %al,(%rax)
a:   00 00                   add    %al,(%rax)
c:   00 00                   add    %al,(%rax)
e:   00 00                   add    %al,(%rax)
10:   01 00                   add    %eax,(%rax)
12:   55                      push   %rbp
13:   5c                      pop    %rsp
14:   00 00                   add    %al,(%rax)
16:   00 00                   add    %al,(%rax)
18:   00 00                   add    %al,(%rax)
1a:   00 64 00 00             add    %ah,0x0(%rax,%rax,1)
1e:   00 00                   add    %al,(%rax)
20:   00 00                   add    %al,(%rax)
22:   00 01                   add    %al,(%rcx)
24:   00 55 00                add    %dl,0x0(%rbp)
   ...
3b:   00 00                   add    %al,(%rax)
3d:   00 0e                   add    %cl,(%rsi)
3f:   00 00                   add    %al,(%rax)
41:   00 00                   add    %al,(%rax)
43:   00 00                   add    %al,(%rax)
45:   00 01                   add    %al,(%rcx)
47:   00 54 0e 00             add    %dl,0x0(%rsi,%rcx,1)
4b:   00 00                   add    %al,(%rax)
4d:   00 00                   add    %al,(%rax)
4f:   00 00                   add    %al,(%rax)
51:   39 01                   cmp    %eax,(%rcx)
53:   00 00                   add    %al,(%rax)
55:   00 00                   add    %al,(%rax)
57:   00 00                   add    %al,(%rax)
59:   01 00                   add    %eax,(%rax)
5b:   53                      push   %rbx
   ...
6c:   96                      xchg   %eax,%esi
6d:   00 00                   add    %al,(%rax)
6f:   00 00                   add    %al,(%rax)
71:   00 00                   add    %al,(%rax)
73:   00 9d 00 00 00 00       add    %bl,0x0(%rbp)
79:   00 00                   add    %al,(%rax)
7b:   00 01                   add    %al,(%rcx)
7d:   00 50 b2                add    %dl,-0x4e(%rax)
80:   00 00                   add    %al,(%rax)
82:   00 00                   add    %al,(%rax)
84:   00 00                   add    %al,(%rax)
86:   00 b9 00 00 00 00       add    %bh,0x0(%rcx)
8c:   00 00                   add    %al,(%rax)
8e:   00 01                   add    %al,(%rcx)
90:   00 50 ce                add    %dl,-0x32(%rax)
93:   00 00                   add    %al,(%rax)
95:   00 00                   add    %al,(%rax)
97:   00 00                   add    %al,(%rax)
99:   00 d5                   add    %dl,%ch
9b:   00 00                   add    %al,(%rax)
9d:   00 00                   add    %al,(%rax)
9f:   00 00                   add    %al,(%rax)
a1:   00 01                   add    %al,(%rcx)
a3:   00 50 ea                add    %dl,-0x16(%rax)
a6:   00 00                   add    %al,(%rax)
a8:   00 00                   add    %al,(%rax)
aa:   00 00                   add    %al,(%rax)
ac:   00 f1                   add    %dh,%cl
ae:   00 00                   add    %al,(%rax)
b0:   00 00                   add    %al,(%rax)
b2:   00 00                   add    %al,(%rax)
b4:   00 01                   add    %al,(%rcx)
b6:   00 50 06                add    %dl,0x6(%rax)
b9:   01 00                   add    %eax,(%rax)
bb:   00 00                   add    %al,(%rax)
bd:   00 00                   add    %al,(%rax)
bf:   00 0d 01 00 00 00       add    %cl,0x1(%rip)        # c6 <_init-0x40099a>
c5:   00 00                   add    %al,(%rax)
c7:   00 01                   add    %al,(%rcx)
c9:   00 50 22                add    %dl,0x22(%rax)
cc:   01 00                   add    %eax,(%rax)
ce:   00 00                   add    %al,(%rax)
d0:   00 00                   add    %al,(%rax)
d2:   00 29                   add    %ch,(%rcx)
d4:   01 00                   add    %eax,(%rax)
d6:   00 00                   add    %al,(%rax)
d8:   00 00                   add    %al,(%rax)
da:   00 01                   add    %al,(%rcx)
dc:   00 50 00                add    %dl,0x0(%rax)
   ...

Disassembly of section .debug_pubtypes:

0000000000000000 <.debug_pubtypes>:
0:   67 00 00                add    %al,(%eax)
3:   00 02                   add    %al,(%rdx)
5:   00 00                   add    %al,(%rax)
7:   00 00                   add    %al,(%rax)
9:   00 69 03                add    %ch,0x3(%rcx)
c:   00 00                   add    %al,(%rax)
e:   2d 00 00 00 73          sub    $0x73000000,%eax
13:   69 7a 65 5f 74 00 70    imul   $0x7000745f,0x65(%rdx),%edi
1a:   00 00                   add    %al,(%rax)
1c:   00 5f 5f                add    %bl,0x5f(%rdi)
1f:   6f                      outsl  %ds:(%rsi),(%dx)
20:   66 66 5f                data32 pop %di
23:   74 00                   je     25 <_init-0x400a3b>
25:   7b 00                   jnp    27 <_init-0x400a39>
27:   00 00                   add    %al,(%rax)
29:   5f                      pop    %rdi
2a:   5f                      pop    %rdi
2b:   6f                      outsl  %ds:(%rsi),(%dx)
2c:   66                      data16
2d:   66                      data16
2e:   36                      ss
2f:   34 5f                   xor    $0x5f,%al
31:   74 00                   je     33 <_init-0x400a2d>
33:   95                      xchg   %eax,%ebp
34:   00 00                   add    %al,(%rax)
36:   00 46 49                add    %al,0x49(%rsi)
39:   4c                      rex.WR
3a:   45 00 3c 02             add    %r15b,(%r10,%rax,1)
3e:   00 00                   add    %al,(%rax)
40:   5f                      pop    %rdi
41:   49                      rex.WB
42:   4f 5f                   rex.WRXB pop %r15
44:   6c                      insb   (%dx),%es:(%rdi)
45:   6f                      outsl  %ds:(%rsi),(%dx)
46:   63 6b 5f                movslq 0x5f(%rbx),%ebp
49:   74 00                   je     4b <_init-0x400a15>
4b:   43 02 00                rex.XB add (%r8),%al
4e:   00 5f 49                add    %bl,0x49(%rdi)
51:   4f 5f                   rex.WRXB pop %r15
53:   6d                      insl   (%dx),%es:(%rdi)
54:   61                      (bad)
55:   72 6b                   jb     c2 <_init-0x40099e>
57:   65                      gs
58:   72 00                   jb     5a <_init-0x400a06>
5a:   a0 00 00 00 5f 49 4f    mov    0x465f4f495f000000,%al
61:   5f 46
63:   49                      rex.WB
64:   4c                      rex.WR
65:   45 00 00                add    %r8b,(%r8)
68:   00 00                   add    %al,(%rax)
   ...
u2 naharis3 85 : objdump -d bomb

bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000400a60 <_init>:
400a60:       48 83 ec 08             sub    $0x8,%rsp
400a64:       e8 13 02 00 00          callq  400c7c <call_gmon_start>
400a69:       e8 a2 02 00 00          callq  400d10 <frame_dummy>
400a6e:       e8 1d 17 00 00          callq  402190 <__do_global_ctors_aux>
400a73:       48 83 c4 08             add    $0x8,%rsp
400a77:       c3                      retq

Disassembly of section .plt:

0000000000400a78 <printf@plt-0x10>:
400a78:       ff 35 3a 26 20 00       pushq  0x20263a(%rip)        # 6030b8 <_GLOBAL_OFFSET_TABLE_+0x8>
400a7e:       ff 25 3c 26 20 00       jmpq   *0x20263c(%rip)        # 6030c0 <_GLOBAL_OFFSET_TABLE_+0x10>
400a84:       0f 1f 40 00             nopl   0x0(%rax)

0000000000400a88 <printf@plt>:
400a88:       ff 25 3a 26 20 00       jmpq   *0x20263a(%rip)        # 6030c8 <_GLOBAL_OFFSET_TABLE_+0x18>
400a8e:       68 00 00 00 00          pushq  $0x0
400a93:       e9 e0 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400a98 <close@plt>:
400a98:       ff 25 32 26 20 00       jmpq   *0x202632(%rip)        # 6030d0 <_GLOBAL_OFFSET_TABLE_+0x20>
400a9e:       68 01 00 00 00          pushq  $0x1
400aa3:       e9 d0 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400aa8 <gethostbyname@plt>:
400aa8:       ff 25 2a 26 20 00       jmpq   *0x20262a(%rip)        # 6030d8 <_GLOBAL_OFFSET_TABLE_+0x28>
400aae:       68 02 00 00 00          pushq  $0x2
400ab3:       e9 c0 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400ab8 <puts@plt>:
400ab8:       ff 25 22 26 20 00       jmpq   *0x202622(%rip)        # 6030e0 <_GLOBAL_OFFSET_TABLE_+0x30>
400abe:       68 03 00 00 00          pushq  $0x3
400ac3:       e9 b0 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400ac8 <__isoc99_sscanf@plt>:
400ac8:       ff 25 1a 26 20 00       jmpq   *0x20261a(%rip)        # 6030e8 <_GLOBAL_OFFSET_TABLE_+0x38>
400ace:       68 04 00 00 00          pushq  $0x4
400ad3:       e9 a0 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400ad8 <exit@plt>:
400ad8:       ff 25 12 26 20 00       jmpq   *0x202612(%rip)        # 6030f0 <_GLOBAL_OFFSET_TABLE_+0x40>
400ade:       68 05 00 00 00          pushq  $0x5
400ae3:       e9 90 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400ae8 <strcasecmp@plt>:
400ae8:       ff 25 0a 26 20 00       jmpq   *0x20260a(%rip)        # 6030f8 <_GLOBAL_OFFSET_TABLE_+0x48>
400aee:       68 06 00 00 00          pushq  $0x6
400af3:       e9 80 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400af8 <read@plt>:
400af8:       ff 25 02 26 20 00       jmpq   *0x202602(%rip)        # 603100 <_GLOBAL_OFFSET_TABLE_+0x50>
400afe:       68 07 00 00 00          pushq  $0x7
400b03:       e9 70 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400b08 <fopen@plt>:
400b08:       ff 25 fa 25 20 00       jmpq   *0x2025fa(%rip)        # 603108 <_GLOBAL_OFFSET_TABLE_+0x58>
400b0e:       68 08 00 00 00          pushq  $0x8
400b13:       e9 60 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400b18 <__libc_start_main@plt>:
400b18:       ff 25 f2 25 20 00       jmpq   *0x2025f2(%rip)        # 603110 <_GLOBAL_OFFSET_TABLE_+0x60>
400b1e:       68 09 00 00 00          pushq  $0x9
400b23:       e9 50 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400b28 <fgets@plt>:
400b28:       ff 25 ea 25 20 00       jmpq   *0x2025ea(%rip)        # 603118 <_GLOBAL_OFFSET_TABLE_+0x68>
400b2e:       68 0a 00 00 00          pushq  $0xa
400b33:       e9 40 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400b38 <bcopy@plt>:
400b38:       ff 25 e2 25 20 00       jmpq   *0x2025e2(%rip)        # 603120 <_GLOBAL_OFFSET_TABLE_+0x70>
400b3e:       68 0b 00 00 00          pushq  $0xb
400b43:       e9 30 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400b48 <__ctype_b_loc@plt>:
400b48:       ff 25 da 25 20 00       jmpq   *0x2025da(%rip)        # 603128 <_GLOBAL_OFFSET_TABLE_+0x78>
400b4e:       68 0c 00 00 00          pushq  $0xc
400b53:       e9 20 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400b58 <sprintf@plt>:
400b58:       ff 25 d2 25 20 00       jmpq   *0x2025d2(%rip)        # 603130 <_GLOBAL_OFFSET_TABLE_+0x80>
400b5e:       68 0d 00 00 00          pushq  $0xd
400b63:       e9 10 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400b68 <sleep@plt>:
400b68:       ff 25 ca 25 20 00       jmpq   *0x2025ca(%rip)        # 603138 <_GLOBAL_OFFSET_TABLE_+0x88>
400b6e:       68 0e 00 00 00          pushq  $0xe
400b73:       e9 00 ff ff ff          jmpq   400a78 <_init+0x18>

0000000000400b78 <strtol@plt>:
400b78:       ff 25 c2 25 20 00       jmpq   *0x2025c2(%rip)        # 603140 <_GLOBAL_OFFSET_TABLE_+0x90>
400b7e:       68 0f 00 00 00          pushq  $0xf
400b83:       e9 f0 fe ff ff          jmpq   400a78 <_init+0x18>

0000000000400b88 <connect@plt>:
400b88:       ff 25 ba 25 20 00       jmpq   *0x2025ba(%rip)        # 603148 <_GLOBAL_OFFSET_TABLE_+0x98>
400b8e:       68 10 00 00 00          pushq  $0x10
400b93:       e9 e0 fe ff ff          jmpq   400a78 <_init+0x18>

0000000000400b98 <gethostname@plt>:
400b98:       ff 25 b2 25 20 00       jmpq   *0x2025b2(%rip)        # 603150 <_GLOBAL_OFFSET_TABLE_+0xa0>
400b9e:       68 11 00 00 00          pushq  $0x11
400ba3:       e9 d0 fe ff ff          jmpq   400a78 <_init+0x18>

0000000000400ba8 <memcpy@plt>:
400ba8:       ff 25 aa 25 20 00       jmpq   *0x2025aa(%rip)        # 603158 <_GLOBAL_OFFSET_TABLE_+0xa8>
400bae:       68 12 00 00 00          pushq  $0x12
400bb3:       e9 c0 fe ff ff          jmpq   400a78 <_init+0x18>

0000000000400bb8 <signal@plt>:
400bb8:       ff 25 a2 25 20 00       jmpq   *0x2025a2(%rip)        # 603160 <_GLOBAL_OFFSET_TABLE_+0xb0>
400bbe:       68 13 00 00 00          pushq  $0x13
400bc3:       e9 b0 fe ff ff          jmpq   400a78 <_init+0x18>

0000000000400bc8 <socket@plt>:
400bc8:       ff 25 9a 25 20 00       jmpq   *0x20259a(%rip)        # 603168 <_GLOBAL_OFFSET_TABLE_+0xb8>
400bce:       68 14 00 00 00          pushq  $0x14
400bd3:       e9 a0 fe ff ff          jmpq   400a78 <_init+0x18>

0000000000400bd8 <getenv@plt>:
400bd8:       ff 25 92 25 20 00       jmpq   *0x202592(%rip)        # 603170 <_GLOBAL_OFFSET_TABLE_+0xc0>
400bde:       68 15 00 00 00          pushq  $0x15
400be3:       e9 90 fe ff ff          jmpq   400a78 <_init+0x18>

0000000000400be8 <alarm@plt>:
400be8:       ff 25 8a 25 20 00       jmpq   *0x20258a(%rip)        # 603178 <_GLOBAL_OFFSET_TABLE_+0xc8>
400bee:       68 16 00 00 00          pushq  $0x16
400bf3:       e9 80 fe ff ff          jmpq   400a78 <_init+0x18>

0000000000400bf8 <__errno_location@plt>:
400bf8:       ff 25 82 25 20 00       jmpq   *0x202582(%rip)        # 603180 <_GLOBAL_OFFSET_TABLE_+0xd0>
400bfe:       68 17 00 00 00          pushq  $0x17
400c03:       e9 70 fe ff ff          jmpq   400a78 <_init+0x18>

0000000000400c08 <strcpy@plt>:
400c08:       ff 25 7a 25 20 00       jmpq   *0x20257a(%rip)        # 603188 <_GLOBAL_OFFSET_TABLE_+0xd8>
400c0e:       68 18 00 00 00          pushq  $0x18
400c13:       e9 60 fe ff ff          jmpq   400a78 <_init+0x18>

0000000000400c18 <fprintf@plt>:
400c18:       ff 25 72 25 20 00       jmpq   *0x202572(%rip)        # 603190 <_GLOBAL_OFFSET_TABLE_+0xe0>
400c1e:       68 19 00 00 00          pushq  $0x19
400c23:       e9 50 fe ff ff          jmpq   400a78 <_init+0x18>

0000000000400c28 <write@plt>:
400c28:       ff 25 6a 25 20 00       jmpq   *0x20256a(%rip)        # 603198 <_GLOBAL_OFFSET_TABLE_+0xe8>
400c2e:       68 1a 00 00 00          pushq  $0x1a
400c33:       e9 40 fe ff ff          jmpq   400a78 <_init+0x18>

0000000000400c38 <fflush@plt>:
400c38:       ff 25 62 25 20 00       jmpq   *0x202562(%rip)        # 6031a0 <_GLOBAL_OFFSET_TABLE_+0xf0>
400c3e:       68 1b 00 00 00          pushq  $0x1b
400c43:       e9 30 fe ff ff          jmpq   400a78 <_init+0x18>

Disassembly of section .text:

0000000000400c50 <_start>:
400c50:       31 ed                   xor    %ebp,%ebp
400c52:       49 89 d1                mov    %rdx,%r9
400c55:       5e                      pop    %rsi
400c56:       48 89 e2                mov    %rsp,%rdx
400c59:       48 83 e4 f0             and    $0xfffffffffffffff0,%rsp
400c5d:       50                      push   %rax
400c5e:       54                      push   %rsp
400c5f:       49 c7 c0 f0 20 40 00    mov    $0x4020f0,%r8
400c66:       48 c7 c1 00 21 40 00    mov    $0x402100,%rcx
400c6d:       48 c7 c7 34 0d 40 00    mov    $0x400d34,%rdi
400c74:       e8 9f fe ff ff          callq  400b18 <__libc_start_main@plt>
400c79:       f4                      hlt
400c7a:       90                      nop
400c7b:       90                      nop

0000000000400c7c <call_gmon_start>:
400c7c:       48 83 ec 08             sub    $0x8,%rsp
400c80:       48 8b 05 21 24 20 00    mov    0x202421(%rip),%rax        # 6030a8 <_DYNAMIC+0x190>
400c87:       48 85 c0                test   %rax,%rax
400c8a:       74 02                   je     400c8e <call_gmon_start+0x12>
400c8c:       ff d0                   callq  *%rax
400c8e:       48 83 c4 08             add    $0x8,%rsp
400c92:       c3                      retq
400c93:       90                      nop
400c94:       90                      nop
400c95:       90                      nop
400c96:       90                      nop
400c97:       90                      nop
400c98:       90                      nop
400c99:       90                      nop
400c9a:       90                      nop
400c9b:       90                      nop
400c9c:       90                      nop
400c9d:       90                      nop
400c9e:       90                      nop
400c9f:       90                      nop

0000000000400ca0 <__do_global_dtors_aux>:
400ca0:       55                      push   %rbp
400ca1:       48 89 e5                mov    %rsp,%rbp
400ca4:       53                      push   %rbx
400ca5:       48 83 ec 08             sub    $0x8,%rsp
400ca9:       80 3d a8 2b 20 00 00    cmpb   $0x0,0x202ba8(%rip)        # 603858 <completed.6364>
400cb0:       75 4b                   jne    400cfd <__do_global_dtors_aux+0x5d>
400cb2:       bb 08 2f 60 00          mov    $0x602f08,%ebx
400cb7:       48 8b 05 a2 2b 20 00    mov    0x202ba2(%rip),%rax        # 603860 <dtor_idx.6366>
400cbe:       48 81 eb 00 2f 60 00    sub    $0x602f00,%rbx
400cc5:       48 c1 fb 03             sar    $0x3,%rbx
400cc9:       48 83 eb 01             sub    $0x1,%rbx
400ccd:       48 39 d8                cmp    %rbx,%rax
400cd0:       73 24                   jae    400cf6 <__do_global_dtors_aux+0x56>
400cd2:       66 0f 1f 44 00 00       nopw   0x0(%rax,%rax,1)
400cd8:       48 83 c0 01             add    $0x1,%rax
400cdc:       48 89 05 7d 2b 20 00    mov    %rax,0x202b7d(%rip)        # 603860 <dtor_idx.6366>
400ce3:       ff 14 c5 00 2f 60 00    callq  *0x602f00(,%rax,8)
400cea:       48 8b 05 6f 2b 20 00    mov    0x202b6f(%rip),%rax        # 603860 <dtor_idx.6366>
400cf1:       48 39 d8                cmp    %rbx,%rax
400cf4:       72 e2                   jb     400cd8 <__do_global_dtors_aux+0x38>
400cf6:       c6 05 5b 2b 20 00 01    movb   $0x1,0x202b5b(%rip)        # 603858 <completed.6364>
400cfd:       48 83 c4 08             add    $0x8,%rsp
400d01:       5b                      pop    %rbx
400d02:       c9                      leaveq
400d03:       c3                      retq
400d04:       66 66 66 2e 0f 1f 84    data32 data32 nopw %cs:0x0(%rax,%rax,1)
400d0b:       00 00 00 00 00

0000000000400d10 <frame_dummy>:
400d10:       48 83 3d f8 21 20 00    cmpq   $0x0,0x2021f8(%rip)        # 602f10 <__JCR_END__>
400d17:       00
400d18:       55                      push   %rbp
400d19:       48 89 e5                mov    %rsp,%rbp
400d1c:       74 12                   je     400d30 <frame_dummy+0x20>
400d1e:       b8 00 00 00 00          mov    $0x0,%eax
400d23:       48 85 c0                test   %rax,%rax
400d26:       74 08                   je     400d30 <frame_dummy+0x20>
400d28:       bf 10 2f 60 00          mov    $0x602f10,%edi
400d2d:       c9                      leaveq
400d2e:       ff e0                   jmpq   *%rax
400d30:       c9                      leaveq
400d31:       c3                      retq
400d32:       90                      nop
400d33:       90                      nop

0000000000400d34 <main>:
400d34:       55                      push   %rbp
400d35:       53                      push   %rbx
400d36:       48 83 ec 08             sub    $0x8,%rsp
400d3a:       48 89 f3                mov    %rsi,%rbx
400d3d:       83 ff 01                cmp    $0x1,%edi
400d40:       75 10                   jne    400d52 <main+0x1e>
400d42:       48 8b 05 f7 2a 20 00    mov    0x202af7(%rip),%rax        # 603840 <__bss_start>
400d49:       48 89 05 20 2b 20 00    mov    %rax,0x202b20(%rip)        # 603870 <infile>
400d50:       eb 5a                   jmp    400dac <main+0x78>
400d52:       83 ff 02                cmp    $0x2,%edi
400d55:       75 39                   jne    400d90 <main+0x5c>
400d57:       48 8d 6e 08             lea    0x8(%rsi),%rbp
400d5b:       be f0 21 40 00          mov    $0x4021f0,%esi
400d60:       48 8b 7d 00             mov    0x0(%rbp),%rdi
400d64:       e8 9f fd ff ff          callq  400b08 <fopen@plt>
400d69:       48 89 05 00 2b 20 00    mov    %rax,0x202b00(%rip)        # 603870 <infile>
400d70:       48 85 c0                test   %rax,%rax
400d73:       75 37                   jne    400dac <main+0x78>
400d75:       48 8b 55 00             mov    0x0(%rbp),%rdx
400d79:       48 8b 33                mov    (%rbx),%rsi
400d7c:       bf f2 21 40 00          mov    $0x4021f2,%edi
400d81:       e8 02 fd ff ff          callq  400a88 <printf@plt>
400d86:       bf 08 00 00 00          mov    $0x8,%edi
400d8b:       e8 48 fd ff ff          callq  400ad8 <exit@plt>
400d90:       48 8b 36                mov    (%rsi),%rsi
400d93:       bf 0f 22 40 00          mov    $0x40220f,%edi
400d98:       b8 00 00 00 00          mov    $0x0,%eax
400d9d:       e8 e6 fc ff ff          callq  400a88 <printf@plt>
400da2:       bf 08 00 00 00          mov    $0x8,%edi
400da7:       e8 2c fd ff ff          callq  400ad8 <exit@plt>
400dac:       e8 2f 08 00 00          callq  4015e0 <initialize_bomb>
400db1:       bf 78 22 40 00          mov    $0x402278,%edi
400db6:       e8 fd fc ff ff          callq  400ab8 <puts@plt>
400dbb:       bf b8 22 40 00          mov    $0x4022b8,%edi
400dc0:       e8 f3 fc ff ff          callq  400ab8 <puts@plt>
400dc5:       e8 db 06 00 00          callq  4014a5 <read_line>
400dca:       48 89 c7                mov    %rax,%rdi
400dcd:       e8 de 03 00 00          callq  4011b0 <phase_1>
400dd2:       e8 4f 05 00 00          callq  401326 <phase_defused>
400dd7:       bf e8 22 40 00          mov    $0x4022e8,%edi
400ddc:       e8 d7 fc ff ff          callq  400ab8 <puts@plt>
400de1:       e8 bf 06 00 00          callq  4014a5 <read_line>
400de6:       48 89 c7                mov    %rax,%rdi
400de9:       e8 60 02 00 00          callq  40104e <phase_2>
400dee:       e8 33 05 00 00          callq  401326 <phase_defused>
400df3:       bf 29 22 40 00          mov    $0x402229,%edi
400df8:       e8 bb fc ff ff          callq  400ab8 <puts@plt>
400dfd:       e8 a3 06 00 00          callq  4014a5 <read_line>
400e02:       48 89 c7                mov    %rax,%rdi
400e05:       e8 1b 03 00 00          callq  401125 <phase_3>
400e0a:       e8 17 05 00 00          callq  401326 <phase_defused>
400e0f:       bf 47 22 40 00          mov    $0x402247,%edi
400e14:       e8 9f fc ff ff          callq  400ab8 <puts@plt>
400e19:       e8 87 06 00 00          callq  4014a5 <read_line>
400e1e:       48 89 c7                mov    %rax,%rdi
400e21:       e8 ac 02 00 00          callq  4010d2 <phase_4>
400e26:       e8 fb 04 00 00          callq  401326 <phase_defused>
400e2b:       bf 18 23 40 00          mov    $0x402318,%edi
400e30:       e8 83 fc ff ff          callq  400ab8 <puts@plt>
400e35:       e8 6b 06 00 00          callq  4014a5 <read_line>
400e3a:       48 89 c7                mov    %rax,%rdi
400e3d:       e8 50 02 00 00          callq  401092 <phase_5>
400e42:       e8 df 04 00 00          callq  401326 <phase_defused>
400e47:       bf 56 22 40 00          mov    $0x402256,%edi
400e4c:       e8 67 fc ff ff          callq  400ab8 <puts@plt>
400e51:       e8 4f 06 00 00          callq  4014a5 <read_line>
400e56:       48 89 c7                mov    %rax,%rdi
400e59:       e8 f5 00 00 00          callq  400f53 <phase_6>
400e5e:       e8 c3 04 00 00          callq  401326 <phase_defused>
400e63:       b8 00 00 00 00          mov    $0x0,%eax
400e68:       48 83 c4 08             add    $0x8,%rsp
400e6c:       5b                      pop    %rbx
400e6d:       5d                      pop    %rbp
400e6e:       c3                      retq
400e6f:       90                      nop

0000000000400e70 <func4>:
400e70:       48 89 5c 24 e8          mov    %rbx,-0x18(%rsp)
400e75:       48 89 6c 24 f0          mov    %rbp,-0x10(%rsp)
400e7a:       4c 89 64 24 f8          mov    %r12,-0x8(%rsp)
400e7f:       48 83 ec 18             sub    $0x18,%rsp
400e83:       89 fb                   mov    %edi,%ebx
400e85:       89 f5                   mov    %esi,%ebp
400e87:       85 ff                   test   %edi,%edi
400e89:       7f 07                   jg     400e92 <func4+0x22>
400e8b:       bd 00 00 00 00          mov    $0x0,%ebp
400e90:       eb 20                   jmp    400eb2 <func4+0x42>
400e92:       83 ff 01                cmp    $0x1,%edi
400e95:       74 1b                   je     400eb2 <func4+0x42>
400e97:       8d 7b ff                lea    -0x1(%rbx),%edi
400e9a:       e8 d1 ff ff ff          callq  400e70 <func4>
400e9f:       41 89 c4                mov    %eax,%r12d
400ea2:       8d 7b fe                lea    -0x2(%rbx),%edi
400ea5:       89 ee                   mov    %ebp,%esi
400ea7:       e8 c4 ff ff ff          callq  400e70 <func4>
400eac:       41 01 c4                add    %eax,%r12d
400eaf:       44 01 e5                add    %r12d,%ebp
400eb2:       89 e8                   mov    %ebp,%eax
400eb4:       48 8b 1c 24             mov    (%rsp),%rbx
400eb8:       48 8b 6c 24 08          mov    0x8(%rsp),%rbp
400ebd:       4c 8b 64 24 10          mov    0x10(%rsp),%r12
400ec2:       48 83 c4 18             add    $0x18,%rsp
400ec6:       c3                      retq

0000000000400ec7 <fun7>:
400ec7:       48 83 ec 08             sub    $0x8,%rsp
400ecb:       b8 ff ff ff ff          mov    $0xffffffff,%eax
400ed0:       48 85 ff                test   %rdi,%rdi
400ed3:       74 29                   je     400efe <fun7+0x37>
400ed5:       8b 17                   mov    (%rdi),%edx
400ed7:       39 f2                   cmp    %esi,%edx
400ed9:       7e 0d                   jle    400ee8 <fun7+0x21>
400edb:       48 8b 7f 08             mov    0x8(%rdi),%rdi
400edf:       e8 e3 ff ff ff          callq  400ec7 <fun7>
400ee4:       01 c0                   add    %eax,%eax
400ee6:       eb 16                   jmp    400efe <fun7+0x37>
400ee8:       b8 00 00 00 00          mov    $0x0,%eax
400eed:       39 f2                   cmp    %esi,%edx
400eef:       74 0d                   je     400efe <fun7+0x37>
400ef1:       48 8b 7f 10             mov    0x10(%rdi),%rdi
400ef5:       e8 cd ff ff ff          callq  400ec7 <fun7>
400efa:       8d 44 00 01             lea    0x1(%rax,%rax,1),%eax
400efe:       48 83 c4 08             add    $0x8,%rsp
400f02:       c3                      retq

0000000000400f03 <secret_phase>:
400f03:       53                      push   %rbx
400f04:       e8 9c 05 00 00          callq  4014a5 <read_line>
400f09:       ba 0a 00 00 00          mov    $0xa,%edx
400f0e:       be 00 00 00 00          mov    $0x0,%esi
400f13:       48 89 c7                mov    %rax,%rdi
400f16:       e8 5d fc ff ff          callq  400b78 <strtol@plt>
400f1b:       89 c3                   mov    %eax,%ebx
400f1d:       8d 43 ff                lea    -0x1(%rbx),%eax
400f20:       3d e8 03 00 00          cmp    $0x3e8,%eax
400f25:       76 05                   jbe    400f2c <secret_phase+0x29>
400f27:       e8 83 04 00 00          callq  4013af <explode_bomb>
400f2c:       89 de                   mov    %ebx,%esi
400f2e:       bf 20 34 60 00          mov    $0x603420,%edi
400f33:       e8 8f ff ff ff          callq  400ec7 <fun7>
400f38:       83 f8 04                cmp    $0x4,%eax
400f3b:       74 05                   je     400f42 <secret_phase+0x3f>
400f3d:       e8 6d 04 00 00          callq  4013af <explode_bomb>
400f42:       bf 40 23 40 00          mov    $0x402340,%edi
400f47:       e8 6c fb ff ff          callq  400ab8 <puts@plt>
400f4c:       e8 d5 03 00 00          callq  401326 <phase_defused>
400f51:       5b                      pop    %rbx
400f52:       c3                      retq

0000000000400f53 <phase_6>:
400f53:       41 54                   push   %r12
400f55:       55                      push   %rbp
400f56:       53                      push   %rbx
400f57:       48 83 ec 50             sub    $0x50,%rsp
400f5b:       48 8d 6c 24 30          lea    0x30(%rsp),%rbp
400f60:       48 89 ee                mov    %rbp,%rsi
400f63:       e8 7d 04 00 00          callq  4013e5 <read_six_numbers>
400f68:       41 bc 00 00 00 00       mov    $0x0,%r12d
400f6e:       8b 45 00                mov    0x0(%rbp),%eax
400f71:       83 e8 01                sub    $0x1,%eax
400f74:       83 f8 05                cmp    $0x5,%eax
400f77:       76 05                   jbe    400f7e <phase_6+0x2b>
400f79:       e8 31 04 00 00          callq  4013af <explode_bomb>
400f7e:       41 83 c4 01             add    $0x1,%r12d
400f82:       41 83 fc 06             cmp    $0x6,%r12d
400f86:       74 22                   je     400faa <phase_6+0x57>
400f88:       44 89 e3                mov    %r12d,%ebx
400f8b:       48 63 c3                movslq %ebx,%rax
400f8e:       8b 55 00                mov    0x0(%rbp),%edx
400f91:       3b 54 84 30             cmp    0x30(%rsp,%rax,4),%edx
400f95:       75 05                   jne    400f9c <phase_6+0x49>
400f97:       e8 13 04 00 00          callq  4013af <explode_bomb>
400f9c:       83 c3 01                add    $0x1,%ebx
400f9f:       83 fb 05                cmp    $0x5,%ebx
400fa2:       7e e7                   jle    400f8b <phase_6+0x38>
400fa4:       48 83 c5 04             add    $0x4,%rbp
400fa8:       eb c4                   jmp    400f6e <phase_6+0x1b>
400faa:       bb 00 00 00 00          mov    $0x0,%ebx
400faf:       4c 8d 44 24 30          lea    0x30(%rsp),%r8
400fb4:       bd 01 00 00 00          mov    $0x1,%ebp
400fb9:       be 50 32 60 00          mov    $0x603250,%esi
400fbe:       48 89 e7                mov    %rsp,%rdi
400fc1:       eb 19                   jmp    400fdc <phase_6+0x89>
400fc3:       48 8b 52 08             mov    0x8(%rdx),%rdx
400fc7:       83 c0 01                add    $0x1,%eax
400fca:       39 c8                   cmp    %ecx,%eax
400fcc:       75 f5                   jne    400fc3 <phase_6+0x70>
400fce:       48 89 14 5f             mov    %rdx,(%rdi,%rbx,2)
400fd2:       48 83 c3 04             add    $0x4,%rbx
400fd6:       48 83 fb 18             cmp    $0x18,%rbx
400fda:       74 10                   je     400fec <phase_6+0x99>
400fdc:       41 8b 0c 18             mov    (%r8,%rbx,1),%ecx
400fe0:       89 e8                   mov    %ebp,%eax
400fe2:       48 89 f2                mov    %rsi,%rdx
400fe5:       83 f9 01                cmp    $0x1,%ecx
400fe8:       7f d9                   jg     400fc3 <phase_6+0x70>
400fea:       eb e2                   jmp    400fce <phase_6+0x7b>
400fec:       48 8b 1c 24             mov    (%rsp),%rbx
400ff0:       48 8b 44 24 08          mov    0x8(%rsp),%rax
400ff5:       48 89 43 08             mov    %rax,0x8(%rbx)
400ff9:       48 8b 54 24 10          mov    0x10(%rsp),%rdx
400ffe:       48 89 50 08             mov    %rdx,0x8(%rax)
401002:       48 8b 44 24 18          mov    0x18(%rsp),%rax
401007:       48 89 42 08             mov    %rax,0x8(%rdx)
40100b:       48 8b 54 24 20          mov    0x20(%rsp),%rdx
401010:       48 89 50 08             mov    %rdx,0x8(%rax)
401014:       48 8b 44 24 28          mov    0x28(%rsp),%rax
401019:       48 89 42 08             mov    %rax,0x8(%rdx)
40101d:       48 c7 40 08 00 00 00    movq   $0x0,0x8(%rax)
401024:       00
401025:       bd 00 00 00 00          mov    $0x0,%ebp
40102a:       48 8b 43 08             mov    0x8(%rbx),%rax
40102e:       8b 13                   mov    (%rbx),%edx
401030:       3b 10                   cmp    (%rax),%edx
401032:       7e 05                   jle    401039 <phase_6+0xe6>
401034:       e8 76 03 00 00          callq  4013af <explode_bomb>
401039:       48 8b 5b 08             mov    0x8(%rbx),%rbx
40103d:       83 c5 01                add    $0x1,%ebp
401040:       83 fd 05                cmp    $0x5,%ebp
401043:       75 e5                   jne    40102a <phase_6+0xd7>
401045:       48 83 c4 50             add    $0x50,%rsp
401049:       5b                      pop    %rbx
40104a:       5d                      pop    %rbp
40104b:       41 5c                   pop    %r12
40104d:       c3                      retq

000000000040104e <phase_2>:
40104e:       55                      push   %rbp
40104f:       53                      push   %rbx
401050:       48 83 ec 28             sub    $0x28,%rsp
401054:       48 89 e6                mov    %rsp,%rsi
401057:       e8 89 03 00 00          callq  4013e5 <read_six_numbers>
40105c:       83 3c 24 00             cmpl   $0x0,(%rsp)
401060:       79 05                   jns    401067 <phase_2+0x19>
401062:       e8 48 03 00 00          callq  4013af <explode_bomb>
401067:       48 8d 5c 24 04          lea    0x4(%rsp),%rbx
40106c:       bd 01 00 00 00          mov    $0x1,%ebp
401071:       89 e8                   mov    %ebp,%eax
401073:       03 43 fc                add    -0x4(%rbx),%eax
401076:       39 03                   cmp    %eax,(%rbx)
401078:       74 05                   je     40107f <phase_2+0x31>
40107a:       e8 30 03 00 00          callq  4013af <explode_bomb>
40107f:       83 c5 01                add    $0x1,%ebp
401082:       48 83 c3 04             add    $0x4,%rbx
401086:       83 fd 06                cmp    $0x6,%ebp
401089:       75 e6                   jne    401071 <phase_2+0x23>
40108b:       48 83 c4 28             add    $0x28,%rsp
40108f:       5b                      pop    %rbx
401090:       5d                      pop    %rbp
401091:       c3                      retq

0000000000401092 <phase_5>:
401092:       53                      push   %rbx
401093:       48 89 fb                mov    %rdi,%rbx
401096:       e8 35 01 00 00          callq  4011d0 <string_length>
40109b:       83 f8 06                cmp    $0x6,%eax
40109e:       74 05                   je     4010a5 <phase_5+0x13>
4010a0:       e8 0a 03 00 00          callq  4013af <explode_bomb>
4010a5:       48 8d 73 06             lea    0x6(%rbx),%rsi
4010a9:       b8 00 00 00 00          mov    $0x0,%eax
4010ae:       ba e0 23 40 00          mov    $0x4023e0,%edx
4010b3:       48 0f be 0b             movsbq (%rbx),%rcx
4010b7:       83 e1 0f                and    $0xf,%ecx
4010ba:       03 04 8a                add    (%rdx,%rcx,4),%eax
4010bd:       48 83 c3 01             add    $0x1,%rbx
4010c1:       48 39 f3                cmp    %rsi,%rbx
4010c4:       75 ed                   jne    4010b3 <phase_5+0x21>
4010c6:       83 f8 3f                cmp    $0x3f,%eax
4010c9:       74 05                   je     4010d0 <phase_5+0x3e>
4010cb:       e8 df 02 00 00          callq  4013af <explode_bomb>
4010d0:       5b                      pop    %rbx
4010d1:       c3                      retq

00000000004010d2 <phase_4>:
4010d2:       48 83 ec 18             sub    $0x18,%rsp
4010d6:       48 8d 4c 24 0c          lea    0xc(%rsp),%rcx
4010db:       48 8d 54 24 08          lea    0x8(%rsp),%rdx
4010e0:       be 8a 24 40 00          mov    $0x40248a,%esi
4010e5:       b8 00 00 00 00          mov    $0x0,%eax
4010ea:       e8 d9 f9 ff ff          callq  400ac8 <__isoc99_sscanf@plt>
4010ef:       83 f8 02                cmp    $0x2,%eax
4010f2:       75 0e                   jne    401102 <phase_4+0x30>
4010f4:       8b 44 24 0c             mov    0xc(%rsp),%eax
4010f8:       83 f8 01                cmp    $0x1,%eax
4010fb:       7e 05                   jle    401102 <phase_4+0x30>
4010fd:       83 f8 04                cmp    $0x4,%eax
401100:       7e 05                   jle    401107 <phase_4+0x35>
401102:       e8 a8 02 00 00          callq  4013af <explode_bomb>
401107:       8b 74 24 0c             mov    0xc(%rsp),%esi
40110b:       bf 05 00 00 00          mov    $0x5,%edi
401110:       e8 5b fd ff ff          callq  400e70 <func4>
401115:       3b 44 24 08             cmp    0x8(%rsp),%eax
401119:       74 05                   je     401120 <phase_4+0x4e>
40111b:       e8 8f 02 00 00          callq  4013af <explode_bomb>
401120:       48 83 c4 18             add    $0x18,%rsp
401124:       c3                      retq

0000000000401125 <phase_3>:
401125:       48 83 ec 18             sub    $0x18,%rsp
401129:       48 8d 4c 24 08          lea    0x8(%rsp),%rcx
40112e:       48 8d 54 24 0c          lea    0xc(%rsp),%rdx
401133:       be 8a 24 40 00          mov    $0x40248a,%esi
401138:       b8 00 00 00 00          mov    $0x0,%eax
40113d:       e8 86 f9 ff ff          callq  400ac8 <__isoc99_sscanf@plt>
401142:       83 f8 01                cmp    $0x1,%eax
401145:       7f 05                   jg     40114c <phase_3+0x27>
401147:       e8 63 02 00 00          callq  4013af <explode_bomb>
40114c:       83 7c 24 0c 07          cmpl   $0x7,0xc(%rsp)
401151:       77 43                   ja     401196 <phase_3+0x71>
401153:       8b 44 24 0c             mov    0xc(%rsp),%eax
401157:       ff 24 c5 a0 23 40 00    jmpq   *0x4023a0(,%rax,8)
40115e:       b8 c9 03 00 00          mov    $0x3c9,%eax
401163:       eb 3b                   jmp    4011a0 <phase_3+0x7b>
401165:       b8 fd 02 00 00          mov    $0x2fd,%eax
40116a:       eb 34                   jmp    4011a0 <phase_3+0x7b>
40116c:       b8 5b 02 00 00          mov    $0x25b,%eax
401171:       eb 2d                   jmp    4011a0 <phase_3+0x7b>
401173:       b8 d4 00 00 00          mov    $0xd4,%eax
401178:       eb 26                   jmp    4011a0 <phase_3+0x7b>
40117a:       b8 77 00 00 00          mov    $0x77,%eax
40117f:       eb 1f                   jmp    4011a0 <phase_3+0x7b>
401181:       b8 e1 01 00 00          mov    $0x1e1,%eax
401186:       eb 18                   jmp    4011a0 <phase_3+0x7b>
401188:       b8 95 03 00 00          mov    $0x395,%eax
40118d:       eb 11                   jmp    4011a0 <phase_3+0x7b>
40118f:       b8 51 03 00 00          mov    $0x351,%eax
401194:       eb 0a                   jmp    4011a0 <phase_3+0x7b>
401196:       e8 14 02 00 00          callq  4013af <explode_bomb>
40119b:       b8 00 00 00 00          mov    $0x0,%eax
4011a0:       3b 44 24 08             cmp    0x8(%rsp),%eax
4011a4:       74 05                   je     4011ab <phase_3+0x86>
4011a6:       e8 04 02 00 00          callq  4013af <explode_bomb>
4011ab:       48 83 c4 18             add    $0x18,%rsp
4011af:       c3                      retq

00000000004011b0 <phase_1>:
4011b0:       48 83 ec 08             sub    $0x8,%rsp
4011b4:       be 68 23 40 00          mov    $0x402368,%esi
4011b9:       e8 2e 00 00 00          callq  4011ec <strings_not_equal>
4011be:       85 c0                   test   %eax,%eax
4011c0:       74 05                   je     4011c7 <phase_1+0x17>
4011c2:       e8 e8 01 00 00          callq  4013af <explode_bomb>
4011c7:       48 83 c4 08             add    $0x8,%rsp
4011cb:       c3                      retq
4011cc:       90                      nop
4011cd:       90                      nop
4011ce:       90                      nop
4011cf:       90                      nop

00000000004011d0 <string_length>:
4011d0:       48 89 fa                mov    %rdi,%rdx
4011d3:       b8 00 00 00 00          mov    $0x0,%eax
4011d8:       80 3f 00                cmpb   $0x0,(%rdi)
4011db:       74 0d                   je     4011ea <string_length+0x1a>
4011dd:       48 83 c2 01             add    $0x1,%rdx
4011e1:       89 d0                   mov    %edx,%eax
4011e3:       29 f8                   sub    %edi,%eax
4011e5:       80 3a 00                cmpb   $0x0,(%rdx)
4011e8:       75 f3                   jne    4011dd <string_length+0xd>
4011ea:       f3 c3                   repz retq

00000000004011ec <strings_not_equal>:
4011ec:       41 54                   push   %r12
4011ee:       55                      push   %rbp
4011ef:       53                      push   %rbx
4011f0:       48 89 fb                mov    %rdi,%rbx
4011f3:       48 89 f5                mov    %rsi,%rbp
4011f6:       e8 d5 ff ff ff          callq  4011d0 <string_length>
4011fb:       41 89 c4                mov    %eax,%r12d
4011fe:       48 89 ef                mov    %rbp,%rdi
401201:       e8 ca ff ff ff          callq  4011d0 <string_length>
401206:       41 39 c4                cmp    %eax,%r12d
401209:       75 26                   jne    401231 <strings_not_equal+0x45>
40120b:       0f b6 13                movzbl (%rbx),%edx
40120e:       84 d2                   test   %dl,%dl
401210:       74 26                   je     401238 <strings_not_equal+0x4c>
401212:       48 89 e8                mov    %rbp,%rax
401215:       3a 55 00                cmp    0x0(%rbp),%dl
401218:       74 0a                   je     401224 <strings_not_equal+0x38>
40121a:       eb 15                   jmp    401231 <strings_not_equal+0x45>
40121c:       48 83 c0 01             add    $0x1,%rax
401220:       3a 10                   cmp    (%rax),%dl
401222:       75 0d                   jne    401231 <strings_not_equal+0x45>
401224:       48 83 c3 01             add    $0x1,%rbx
401228:       0f b6 13                movzbl (%rbx),%edx
40122b:       84 d2                   test   %dl,%dl
40122d:       75 ed                   jne    40121c <strings_not_equal+0x30>
40122f:       eb 07                   jmp    401238 <strings_not_equal+0x4c>
401231:       b8 01 00 00 00          mov    $0x1,%eax
401236:       eb 05                   jmp    40123d <strings_not_equal+0x51>
401238:       b8 00 00 00 00          mov    $0x0,%eax
40123d:       5b                      pop    %rbx
40123e:       5d                      pop    %rbp
40123f:       41 5c                   pop    %r12
401241:       c3                      retq

0000000000401242 <initialize_bomb_solve>:
401242:       f3 c3                   repz retq

0000000000401244 <invalid_phase>:
401244:       48 83 ec 08             sub    $0x8,%rsp
401248:       48 89 fe                mov    %rdi,%rsi
40124b:       bf 20 24 40 00          mov    $0x402420,%edi
401250:       b8 00 00 00 00          mov    $0x0,%eax
401255:       e8 2e f8 ff ff          callq  400a88 <printf@plt>
40125a:       bf 08 00 00 00          mov    $0x8,%edi
40125f:       e8 74 f8 ff ff          callq  400ad8 <exit@plt>

0000000000401264 <send_msg>:
401264:       53                      push   %rbx
401265:       48 81 ec 00 40 00 00    sub    $0x4000,%rsp
40126c:       89 fa                   mov    %edi,%edx
40126e:       44 8b 05 f3 25 20 00    mov    0x2025f3(%rip),%r8d        # 603868 <num_input_strings>
401275:       49 63 c0                movslq %r8d,%rax
401278:       4c 8d 4c 80 fb          lea    -0x5(%rax,%rax,4),%r9
40127d:       49 c1 e1 04             shl    $0x4,%r9
401281:       49 81 c1 80 38 60 00    add    $0x603880,%r9
401288:       4c 89 cf                mov    %r9,%rdi
40128b:       b8 00 00 00 00          mov    $0x0,%eax
401290:       48 c7 c1 ff ff ff ff    mov    $0xffffffffffffffff,%rcx
401297:       f2 ae                   repnz scas %es:(%rdi),%al
401299:       48 f7 d1                not    %rcx
40129c:       48 83 c1 63             add    $0x63,%rcx
4012a0:       48 81 f9 00 20 00 00    cmp    $0x2000,%rcx
4012a7:       76 14                   jbe    4012bd <send_msg+0x59>
4012a9:       bf 08 25 40 00          mov    $0x402508,%edi
4012ae:       e8 d5 f7 ff ff          callq  400a88 <printf@plt>
4012b3:       bf 08 00 00 00          mov    $0x8,%edi
4012b8:       e8 1b f8 ff ff          callq  400ad8 <exit@plt>
4012bd:       85 d2                   test   %edx,%edx
4012bf:       b8 31 24 40 00          mov    $0x402431,%eax
4012c4:       b9 3a 24 40 00          mov    $0x40243a,%ecx
4012c9:       48 0f 44 c8             cmove  %rax,%rcx
4012cd:       48 8d 9c 24 00 20 00    lea    0x2000(%rsp),%rbx
4012d4:       00
4012d5:       8b 15 f5 1e 20 00       mov    0x201ef5(%rip),%edx        # 6031d0 <bomb_id>
4012db:       be 42 24 40 00          mov    $0x402442,%esi
4012e0:       48 89 df                mov    %rbx,%rdi
4012e3:       b8 00 00 00 00          mov    $0x0,%eax
4012e8:       e8 6b f8 ff ff          callq  400b58 <sprintf@plt>
4012ed:       49 89 e0                mov    %rsp,%r8
4012f0:       b9 00 00 00 00          mov    $0x0,%ecx
4012f5:       48 89 da                mov    %rbx,%rdx
4012f8:       be e0 31 60 00          mov    $0x6031e0,%esi
4012fd:       bf d4 31 60 00          mov    $0x6031d4,%edi
401302:       e8 45 0d 00 00          callq  40204c <driver_post>
401307:       85 c0                   test   %eax,%eax
401309:       79 12                   jns    40131d <send_msg+0xb9>
40130b:       48 89 e7                mov    %rsp,%rdi
40130e:       e8 a5 f7 ff ff          callq  400ab8 <puts@plt>
401313:       bf 00 00 00 00          mov    $0x0,%edi
401318:       e8 bb f7 ff ff          callq  400ad8 <exit@plt>
40131d:       48 81 c4 00 40 00 00    add    $0x4000,%rsp
401324:       5b                      pop    %rbx
401325:       c3                      retq

0000000000401326 <phase_defused>:
401326:       48 83 ec 68             sub    $0x68,%rsp
40132a:       bf 01 00 00 00          mov    $0x1,%edi
40132f:       e8 30 ff ff ff          callq  401264 <send_msg>
401334:       83 3d 2d 25 20 00 06    cmpl   $0x6,0x20252d(%rip)        # 603868 <num_input_strings>
40133b:       75 6d                   jne    4013aa <phase_defused+0x84>
40133d:       48 8d 4c 24 08          lea    0x8(%rsp),%rcx
401342:       48 8d 54 24 0c          lea    0xc(%rsp),%rdx
401347:       4c 8d 44 24 10          lea    0x10(%rsp),%r8
40134c:       be 4e 24 40 00          mov    $0x40244e,%esi
401351:       bf 70 39 60 00          mov    $0x603970,%edi
401356:       b8 00 00 00 00          mov    $0x0,%eax
40135b:       e8 68 f7 ff ff          callq  400ac8 <__isoc99_sscanf@plt>
401360:       83 f8 03                cmp    $0x3,%eax
401363:       75 31                   jne    401396 <phase_defused+0x70>
401365:       48 8d 7c 24 10          lea    0x10(%rsp),%rdi
40136a:       be 57 24 40 00          mov    $0x402457,%esi
40136f:       e8 78 fe ff ff          callq  4011ec <strings_not_equal>
401374:       85 c0                   test   %eax,%eax
401376:       75 1e                   jne    401396 <phase_defused+0x70>
401378:       bf 30 25 40 00          mov    $0x402530,%edi
40137d:       e8 36 f7 ff ff          callq  400ab8 <puts@plt>
401382:       bf 58 25 40 00          mov    $0x402558,%edi
401387:       e8 2c f7 ff ff          callq  400ab8 <puts@plt>
40138c:       b8 00 00 00 00          mov    $0x0,%eax
401391:       e8 6d fb ff ff          callq  400f03 <secret_phase>
401396:       bf 90 25 40 00          mov    $0x402590,%edi
40139b:       e8 18 f7 ff ff          callq  400ab8 <puts@plt>
4013a0:       bf c0 25 40 00          mov    $0x4025c0,%edi
4013a5:       e8 0e f7 ff ff          callq  400ab8 <puts@plt>
4013aa:       48 83 c4 68             add    $0x68,%rsp
4013ae:       c3                      retq

00000000004013af <explode_bomb>:
4013af:       48 83 ec 08             sub    $0x8,%rsp
4013b3:       bf 5e 24 40 00          mov    $0x40245e,%edi
4013b8:       e8 fb f6 ff ff          callq  400ab8 <puts@plt>
4013bd:       bf 67 24 40 00          mov    $0x402467,%edi
4013c2:       e8 f1 f6 ff ff          callq  400ab8 <puts@plt>
4013c7:       bf 00 00 00 00          mov    $0x0,%edi
4013cc:       e8 93 fe ff ff          callq  401264 <send_msg>
4013d1:       bf 08 26 40 00          mov    $0x402608,%edi
4013d6:       e8 dd f6 ff ff          callq  400ab8 <puts@plt>
4013db:       bf 08 00 00 00          mov    $0x8,%edi
4013e0:       e8 f3 f6 ff ff          callq  400ad8 <exit@plt>

00000000004013e5 <read_six_numbers>:
4013e5:       48 83 ec 18             sub    $0x18,%rsp
4013e9:       48 89 f2                mov    %rsi,%rdx
4013ec:       48 8d 4e 04             lea    0x4(%rsi),%rcx
4013f0:       48 8d 46 14             lea    0x14(%rsi),%rax
4013f4:       48 89 44 24 08          mov    %rax,0x8(%rsp)
4013f9:       48 8d 46 10             lea    0x10(%rsi),%rax
4013fd:       48 89 04 24             mov    %rax,(%rsp)
401401:       4c 8d 4e 0c             lea    0xc(%rsi),%r9
401405:       4c 8d 46 08             lea    0x8(%rsi),%r8
401409:       be 7e 24 40 00          mov    $0x40247e,%esi
40140e:       b8 00 00 00 00          mov    $0x0,%eax
401413:       e8 b0 f6 ff ff          callq  400ac8 <__isoc99_sscanf@plt>
401418:       83 f8 05                cmp    $0x5,%eax
40141b:       7f 05                   jg     401422 <read_six_numbers+0x3d>
40141d:       e8 8d ff ff ff          callq  4013af <explode_bomb>
401422:       48 83 c4 18             add    $0x18,%rsp
401426:       c3                      retq

0000000000401427 <blank_line>:
401427:       55                      push   %rbp
401428:       53                      push   %rbx
401429:       48 83 ec 08             sub    $0x8,%rsp
40142d:       48 89 fd                mov    %rdi,%rbp
401430:       eb 1e                   jmp    401450 <blank_line+0x29>
401432:       e8 11 f7 ff ff          callq  400b48 <__ctype_b_loc@plt>
401437:       48 0f be db             movsbq %bl,%rbx
40143b:       48 8b 00                mov    (%rax),%rax
40143e:       f6 44 58 01 20          testb  $0x20,0x1(%rax,%rbx,2)
401443:       75 07                   jne    40144c <blank_line+0x25>
401445:       b8 00 00 00 00          mov    $0x0,%eax
40144a:       eb 11                   jmp    40145d <blank_line+0x36>
40144c:       48 83 c5 01             add    $0x1,%rbp
401450:       0f b6 5d 00             movzbl 0x0(%rbp),%ebx
401454:       84 db                   test   %bl,%bl
401456:       75 da                   jne    401432 <blank_line+0xb>
401458:       b8 01 00 00 00          mov    $0x1,%eax
40145d:       48 83 c4 08             add    $0x8,%rsp
401461:       5b                      pop    %rbx
401462:       5d                      pop    %rbp
401463:       c3                      retq

0000000000401464 <skip>:
401464:       53                      push   %rbx
401465:       48 63 05 fc 23 20 00    movslq 0x2023fc(%rip),%rax        # 603868 <num_input_strings>
40146c:       48 8d 3c 80             lea    (%rax,%rax,4),%rdi
401470:       48 c1 e7 04             shl    $0x4,%rdi
401474:       48 81 c7 80 38 60 00    add    $0x603880,%rdi
40147b:       48 8b 15 ee 23 20 00    mov    0x2023ee(%rip),%rdx        # 603870 <infile>
401482:       be 50 00 00 00          mov    $0x50,%esi
401487:       e8 9c f6 ff ff          callq  400b28 <fgets@plt>
40148c:       48 89 c3                mov    %rax,%rbx
40148f:       48 85 c0                test   %rax,%rax
401492:       74 0c                   je     4014a0 <skip+0x3c>
401494:       48 89 c7                mov    %rax,%rdi
401497:       e8 8b ff ff ff          callq  401427 <blank_line>
40149c:       85 c0                   test   %eax,%eax
40149e:       75 c5                   jne    401465 <skip+0x1>
4014a0:       48 89 d8                mov    %rbx,%rax
4014a3:       5b                      pop    %rbx
4014a4:       c3                      retq

00000000004014a5 <read_line>:
4014a5:       55                      push   %rbp
4014a6:       53                      push   %rbx
4014a7:       48 83 ec 08             sub    $0x8,%rsp
4014ab:       b8 00 00 00 00          mov    $0x0,%eax
4014b0:       e8 af ff ff ff          callq  401464 <skip>
4014b5:       48 85 c0                test   %rax,%rax
4014b8:       75 6e                   jne    401528 <read_line+0x83>
4014ba:       48 8b 05 7f 23 20 00    mov    0x20237f(%rip),%rax        # 603840 <__bss_start>
4014c1:       48 39 05 a8 23 20 00    cmp    %rax,0x2023a8(%rip)        # 603870 <infile>
4014c8:       75 14                   jne    4014de <read_line+0x39>
4014ca:       bf 90 24 40 00          mov    $0x402490,%edi
4014cf:       e8 e4 f5 ff ff          callq  400ab8 <puts@plt>
4014d4:       bf 08 00 00 00          mov    $0x8,%edi
4014d9:       e8 fa f5 ff ff          callq  400ad8 <exit@plt>
4014de:       bf ae 24 40 00          mov    $0x4024ae,%edi
4014e3:       e8 f0 f6 ff ff          callq  400bd8 <getenv@plt>
4014e8:       48 85 c0                test   %rax,%rax
4014eb:       74 0a                   je     4014f7 <read_line+0x52>
4014ed:       bf 00 00 00 00          mov    $0x0,%edi
4014f2:       e8 e1 f5 ff ff          callq  400ad8 <exit@plt>
4014f7:       48 8b 05 42 23 20 00    mov    0x202342(%rip),%rax        # 603840 <__bss_start>
4014fe:       48 89 05 6b 23 20 00    mov    %rax,0x20236b(%rip)        # 603870 <infile>
401505:       b8 00 00 00 00          mov    $0x0,%eax
40150a:       e8 55 ff ff ff          callq  401464 <skip>
40150f:       48 85 c0                test   %rax,%rax
401512:       75 14                   jne    401528 <read_line+0x83>
401514:       bf 90 24 40 00          mov    $0x402490,%edi
401519:       e8 9a f5 ff ff          callq  400ab8 <puts@plt>
40151e:       bf 00 00 00 00          mov    $0x0,%edi
401523:       e8 b0 f5 ff ff          callq  400ad8 <exit@plt>
401528:       bd 80 38 60 00          mov    $0x603880,%ebp
40152d:       48 63 05 34 23 20 00    movslq 0x202334(%rip),%rax        # 603868 <num_input_strings>
401534:       48 8d 04 80             lea    (%rax,%rax,4),%rax
401538:       48 c1 e0 04             shl    $0x4,%rax
40153c:       48 8d b8 80 38 60 00    lea    0x603880(%rax),%rdi
401543:       b8 00 00 00 00          mov    $0x0,%eax
401548:       48 c7 c1 ff ff ff ff    mov    $0xffffffffffffffff,%rcx
40154f:       f2 ae                   repnz scas %es:(%rdi),%al
401551:       48 f7 d1                not    %rcx
401554:       8d 59 ff                lea    -0x1(%rcx),%ebx
401557:       83 fb 4e                cmp    $0x4e,%ebx
40155a:       7e 48                   jle    4015a4 <read_line+0xff>
40155c:       bf b9 24 40 00          mov    $0x4024b9,%edi
401561:       e8 52 f5 ff ff          callq  400ab8 <puts@plt>
401566:       8b 05 fc 22 20 00       mov    0x2022fc(%rip),%eax        # 603868 <num_input_strings>
40156c:       8d 50 01                lea    0x1(%rax),%edx
40156f:       89 15 f3 22 20 00       mov    %edx,0x2022f3(%rip)        # 603868 <num_input_strings>
401575:       48 98                   cltq
401577:       48 8d 04 80             lea    (%rax,%rax,4),%rax
40157b:       48 c1 e0 04             shl    $0x4,%rax
40157f:       48 8d 44 05 00          lea    0x0(%rbp,%rax,1),%rax
401584:       c7 00 2a 2a 2a 74       movl   $0x742a2a2a,(%rax)
40158a:       c7 40 04 72 75 6e 63    movl   $0x636e7572,0x4(%rax)
401591:       c7 40 08 61 74 65 64    movl   $0x64657461,0x8(%rax)
401598:       c7 40 0c 2a 2a 2a 00    movl   $0x2a2a2a,0xc(%rax)
40159f:       e8 0b fe ff ff          callq  4013af <explode_bomb>
4015a4:       8b 0d be 22 20 00       mov    0x2022be(%rip),%ecx        # 603868 <num_input_strings>
4015aa:       83 eb 01                sub    $0x1,%ebx
4015ad:       48 63 db                movslq %ebx,%rbx
4015b0:       48 63 c1                movslq %ecx,%rax
4015b3:       48 8d 14 85 00 00 00    lea    0x0(,%rax,4),%rdx
4015ba:       00
4015bb:       48 8d 34 02             lea    (%rdx,%rax,1),%rsi
4015bf:       48 c1 e6 04             shl    $0x4,%rsi
4015c3:       c6 84 33 80 38 60 00    movb   $0x0,0x603880(%rbx,%rsi,1)
4015ca:       00
4015cb:       83 c1 01                add    $0x1,%ecx
4015ce:       89 0d 94 22 20 00       mov    %ecx,0x202294(%rip)        # 603868 <num_input_strings>
4015d4:       48 8d 44 35 00          lea    0x0(%rbp,%rsi,1),%rax
4015d9:       48 83 c4 08             add    $0x8,%rsp
4015dd:       5b                      pop    %rbx
4015de:       5d                      pop    %rbp
4015df:       c3                      retq

00000000004015e0 <initialize_bomb>:
4015e0:       55                      push   %rbp
4015e1:       53                      push   %rbx
4015e2:       48 81 ec 48 20 00 00    sub    $0x2048,%rsp
4015e9:       be 9d 16 40 00          mov    $0x40169d,%esi
4015ee:       bf 02 00 00 00          mov    $0x2,%edi
4015f3:       e8 c0 f5 ff ff          callq  400bb8 <signal@plt>
4015f8:       48 8d bc 24 00 20 00    lea    0x2000(%rsp),%rdi
4015ff:       00
401600:       be 40 00 00 00          mov    $0x40,%esi
401605:       e8 8e f5 ff ff          callq  400b98 <gethostname@plt>
40160a:       85 c0                   test   %eax,%eax
40160c:       75 1b                   jne    401629 <initialize_bomb+0x49>
40160e:       48 8b 3d 2b 1e 20 00    mov    0x201e2b(%rip),%rdi        # 603440 <host_table>
401615:       bb 48 34 60 00          mov    $0x603448,%ebx
40161a:       48 8d ac 24 00 20 00    lea    0x2000(%rsp),%rbp
401621:       00
401622:       48 85 ff                test   %rdi,%rdi
401625:       75 16                   jne    40163d <initialize_bomb+0x5d>
401627:       eb 56                   jmp    40167f <initialize_bomb+0x9f>
401629:       bf 30 26 40 00          mov    $0x402630,%edi
40162e:       e8 85 f4 ff ff          callq  400ab8 <puts@plt>
401633:       bf 08 00 00 00          mov    $0x8,%edi
401638:       e8 9b f4 ff ff          callq  400ad8 <exit@plt>
40163d:       48 89 ee                mov    %rbp,%rsi
401640:       e8 a3 f4 ff ff          callq  400ae8 <strcasecmp@plt>
401645:       85 c0                   test   %eax,%eax
401647:       74 0e                   je     401657 <initialize_bomb+0x77>
401649:       48 8b 3b                mov    (%rbx),%rdi
40164c:       48 83 c3 08             add    $0x8,%rbx
401650:       48 85 ff                test   %rdi,%rdi
401653:       75 e8                   jne    40163d <initialize_bomb+0x5d>
401655:       eb 28                   jmp    40167f <initialize_bomb+0x9f>
401657:       48 89 e7                mov    %rsp,%rdi
40165a:       e8 91 00 00 00          callq  4016f0 <init_driver>
40165f:       85 c0                   test   %eax,%eax
401661:       79 30                   jns    401693 <initialize_bomb+0xb3>
401663:       48 89 e6                mov    %rsp,%rsi
401666:       bf d4 24 40 00          mov    $0x4024d4,%edi
40166b:       b8 00 00 00 00          mov    $0x0,%eax
401670:       e8 13 f4 ff ff          callq  400a88 <printf@plt>
401675:       bf 08 00 00 00          mov    $0x8,%edi
40167a:       e8 59 f4 ff ff          callq  400ad8 <exit@plt>
40167f:       bf 68 26 40 00          mov    $0x402668,%edi
401684:       e8 2f f4 ff ff          callq  400ab8 <puts@plt>
401689:       bf 08 00 00 00          mov    $0x8,%edi
40168e:       e8 45 f4 ff ff          callq  400ad8 <exit@plt>
401693:       48 81 c4 48 20 00 00    add    $0x2048,%rsp
40169a:       5b                      pop    %rbx
40169b:       5d                      pop    %rbp
40169c:       c3                      retq

000000000040169d <sig_handler>:
40169d:       48 83 ec 08             sub    $0x8,%rsp
4016a1:       bf a0 26 40 00          mov    $0x4026a0,%edi
4016a6:       e8 0d f4 ff ff          callq  400ab8 <puts@plt>
4016ab:       bf 03 00 00 00          mov    $0x3,%edi
4016b0:       e8 b3 f4 ff ff          callq  400b68 <sleep@plt>
4016b5:       bf ee 24 40 00          mov    $0x4024ee,%edi
4016ba:       b8 00 00 00 00          mov    $0x0,%eax
4016bf:       e8 c4 f3 ff ff          callq  400a88 <printf@plt>
4016c4:       48 8b 3d 85 21 20 00    mov    0x202185(%rip),%rdi        # 603850 <stdout@@GLIBC_2.2.5>
4016cb:       e8 68 f5 ff ff          callq  400c38 <fflush@plt>
4016d0:       bf 01 00 00 00          mov    $0x1,%edi
4016d5:       e8 8e f4 ff ff          callq  400b68 <sleep@plt>
4016da:       bf f6 24 40 00          mov    $0x4024f6,%edi
4016df:       e8 d4 f3 ff ff          callq  400ab8 <puts@plt>
4016e4:       bf 10 00 00 00          mov    $0x10,%edi
4016e9:       e8 ea f3 ff ff          callq  400ad8 <exit@plt>
4016ee:       90                      nop
4016ef:       90                      nop

00000000004016f0 <init_driver>:
4016f0:       41 54                   push   %r12
4016f2:       55                      push   %rbp
4016f3:       53                      push   %rbx
4016f4:       48 83 ec 10             sub    $0x10,%rsp
4016f8:       49 89 fc                mov    %rdi,%r12
4016fb:       be 01 00 00 00          mov    $0x1,%esi
401700:       bf 0d 00 00 00          mov    $0xd,%edi
401705:       e8 ae f4 ff ff          callq  400bb8 <signal@plt>
40170a:       be 01 00 00 00          mov    $0x1,%esi
40170f:       bf 1d 00 00 00          mov    $0x1d,%edi
401714:       e8 9f f4 ff ff          callq  400bb8 <signal@plt>
401719:       be 01 00 00 00          mov    $0x1,%esi
40171e:       bf 1d 00 00 00          mov    $0x1d,%edi
401723:       e8 90 f4 ff ff          callq  400bb8 <signal@plt>
401728:       ba 00 00 00 00          mov    $0x0,%edx
40172d:       be 01 00 00 00          mov    $0x1,%esi
401732:       bf 02 00 00 00          mov    $0x2,%edi
401737:       e8 8c f4 ff ff          callq  400bc8 <socket@plt>
40173c:       89 c5                   mov    %eax,%ebp
40173e:       85 c0                   test   %eax,%eax
401740:       79 62                   jns    4017a4 <init_driver+0xb4>
401742:       41 c7 04 24 45 72 72    movl   $0x6f727245,(%r12)
401749:       6f
40174a:       41 c7 44 24 04 72 3a    movl   $0x43203a72,0x4(%r12)
401751:       20 43
401753:       41 c7 44 24 08 6c 69    movl   $0x6e65696c,0x8(%r12)
40175a:       65 6e
40175c:       41 c7 44 24 0c 74 20    movl   $0x6e752074,0xc(%r12)
401763:       75 6e
401765:       41 c7 44 24 10 61 62    movl   $0x656c6261,0x10(%r12)
40176c:       6c 65
40176e:       41 c7 44 24 14 20 74    movl   $0x206f7420,0x14(%r12)
401775:       6f 20
401777:       41 c7 44 24 18 63 72    movl   $0x61657263,0x18(%r12)
40177e:       65 61
401780:       41 c7 44 24 1c 74 65    movl   $0x73206574,0x1c(%r12)
401787:       20 73
401789:       41 c7 44 24 20 6f 63    movl   $0x656b636f,0x20(%r12)
401790:       6b 65
401792:       66 41 c7 44 24 24 74    movw   $0x74,0x24(%r12)
401799:       00
40179a:       b8 ff ff ff ff          mov    $0xffffffff,%eax
40179f:       e9 18 01 00 00          jmpq   4018bc <init_driver+0x1cc>
4017a4:       bf fe 24 40 00          mov    $0x4024fe,%edi
4017a9:       e8 fa f2 ff ff          callq  400aa8 <gethostbyname@plt>
4017ae:       48 85 c0                test   %rax,%rax
4017b1:       0f 85 81 00 00 00       jne    401838 <init_driver+0x148>
4017b7:       41 c7 04 24 45 72 72    movl   $0x6f727245,(%r12)
4017be:       6f
4017bf:       41 c7 44 24 04 72 3a    movl   $0x44203a72,0x4(%r12)
4017c6:       20 44
4017c8:       41 c7 44 24 08 4e 53    movl   $0x6920534e,0x8(%r12)
4017cf:       20 69
4017d1:       41 c7 44 24 0c 73 20    movl   $0x6e752073,0xc(%r12)
4017d8:       75 6e
4017da:       41 c7 44 24 10 61 62    movl   $0x656c6261,0x10(%r12)
4017e1:       6c 65
4017e3:       41 c7 44 24 14 20 74    movl   $0x206f7420,0x14(%r12)
4017ea:       6f 20
4017ec:       41 c7 44 24 18 72 65    movl   $0x6f736572,0x18(%r12)
4017f3:       73 6f
4017f5:       41 c7 44 24 1c 6c 76    movl   $0x2065766c,0x1c(%r12)
4017fc:       65 20
4017fe:       41 c7 44 24 20 73 65    movl   $0x76726573,0x20(%r12)
401805:       72 76
401807:       41 c7 44 24 24 65 72    movl   $0x61207265,0x24(%r12)
40180e:       20 61
401810:       41 c7 44 24 28 64 64    movl   $0x65726464,0x28(%r12)
401817:       72 65
401819:       66 41 c7 44 24 2c 73    movw   $0x7373,0x2c(%r12)
401820:       73
401821:       41 c6 44 24 2e 00       movb   $0x0,0x2e(%r12)
401827:       89 ef                   mov    %ebp,%edi
401829:       e8 6a f2 ff ff          callq  400a98 <close@plt>
40182e:       b8 ff ff ff ff          mov    $0xffffffff,%eax
401833:       e9 84 00 00 00          jmpq   4018bc <init_driver+0x1cc>
401838:       48 c7 04 24 00 00 00    movq   $0x0,(%rsp)
40183f:       00
401840:       48 c7 44 24 08 00 00    movq   $0x0,0x8(%rsp)
401847:       00 00
401849:       66 c7 04 24 02 00       movw   $0x2,(%rsp)
40184f:       48 63 50 14             movslq 0x14(%rax),%rdx
401853:       48 8d 74 24 04          lea    0x4(%rsp),%rsi
401858:       48 8b 40 18             mov    0x18(%rax),%rax
40185c:       48 8b 38                mov    (%rax),%rdi
40185f:       e8 d4 f2 ff ff          callq  400b38 <bcopy@plt>
401864:       66 c7 44 24 02 3b 6e    movw   $0x6e3b,0x2(%rsp)
40186b:       ba 10 00 00 00          mov    $0x10,%edx
401870:       48 89 e6                mov    %rsp,%rsi
401873:       89 ef                   mov    %ebp,%edi
401875:       e8 0e f3 ff ff          callq  400b88 <connect@plt>
40187a:       85 c0                   test   %eax,%eax
40187c:       79 25                   jns    4018a3 <init_driver+0x1b3>
40187e:       ba fe 24 40 00          mov    $0x4024fe,%edx
401883:       be 28 27 40 00          mov    $0x402728,%esi
401888:       4c 89 e7                mov    %r12,%rdi
40188b:       b8 00 00 00 00          mov    $0x0,%eax
401890:       e8 c3 f2 ff ff          callq  400b58 <sprintf@plt>
401895:       89 ef                   mov    %ebp,%edi
401897:       e8 fc f1 ff ff          callq  400a98 <close@plt>
40189c:       b8 ff ff ff ff          mov    $0xffffffff,%eax
4018a1:       eb 19                   jmp    4018bc <init_driver+0x1cc>
4018a3:       89 ef                   mov    %ebp,%edi
4018a5:       e8 ee f1 ff ff          callq  400a98 <close@plt>
4018aa:       66 41 c7 04 24 4f 4b    movw   $0x4b4f,(%r12)
4018b1:       41 c6 44 24 02 00       movb   $0x0,0x2(%r12)
4018b7:       b8 00 00 00 00          mov    $0x0,%eax
4018bc:       48 83 c4 10             add    $0x10,%rsp
4018c0:       5b                      pop    %rbx
4018c1:       5d                      pop    %rbp
4018c2:       41 5c                   pop    %r12
4018c4:       c3                      retq

00000000004018c5 <init_timeout>:
4018c5:       53                      push   %rbx
4018c6:       89 fb                   mov    %edi,%ebx
4018c8:       85 ff                   test   %edi,%edi
4018ca:       74 1e                   je     4018ea <init_timeout+0x25>
4018cc:       be c3 20 40 00          mov    $0x4020c3,%esi
4018d1:       bf 0e 00 00 00          mov    $0xe,%edi
4018d6:       e8 dd f2 ff ff          callq  400bb8 <signal@plt>
4018db:       85 db                   test   %ebx,%ebx
4018dd:       bf 00 00 00 00          mov    $0x0,%edi
4018e2:       0f 49 fb                cmovns %ebx,%edi
4018e5:       e8 fe f2 ff ff          callq  400be8 <alarm@plt>
4018ea:       5b                      pop    %rbx
4018eb:       c3                      retq

00000000004018ec <rio_readlineb>:
4018ec:       41 57                   push   %r15
4018ee:       41 56                   push   %r14
4018f0:       41 55                   push   %r13
4018f2:       41 54                   push   %r12
4018f4:       55                      push   %rbp
4018f5:       53                      push   %rbx
4018f6:       48 83 ec 28             sub    $0x28,%rsp
4018fa:       48 89 fb                mov    %rdi,%rbx
4018fd:       48 89 14 24             mov    %rdx,(%rsp)
401901:       49 89 f7                mov    %rsi,%r15
401904:       48 83 fa 01             cmp    $0x1,%rdx
401908:       0f 86 c0 00 00 00       jbe    4019ce <rio_readlineb+0xe2>
40190e:       4c 8d 6f 10             lea    0x10(%rdi),%r13
401912:       4d 89 ec                mov    %r13,%r12
401915:       41 be 01 00 00 00       mov    $0x1,%r14d
40191b:       eb 38                   jmp    401955 <rio_readlineb+0x69>
40191d:       ba 00 20 00 00          mov    $0x2000,%edx
401922:       4c 89 ee                mov    %r13,%rsi
401925:       8b 3b                   mov    (%rbx),%edi
401927:       e8 cc f1 ff ff          callq  400af8 <read@plt>
40192c:       89 43 04                mov    %eax,0x4(%rbx)
40192f:       85 c0                   test   %eax,%eax
401931:       79 16                   jns    401949 <rio_readlineb+0x5d>
401933:       e8 c0 f2 ff ff          callq  400bf8 <__errno_location@plt>
401938:       83 38 04                cmpl   $0x4,(%rax)
40193b:       74 18                   je     401955 <rio_readlineb+0x69>
40193d:       48 c7 c2 ff ff ff ff    mov    $0xffffffffffffffff,%rdx
401944:       e9 a6 00 00 00          jmpq   4019ef <rio_readlineb+0x103>
401949:       85 c0                   test   %eax,%eax
40194b:       0f 84 99 00 00 00       je     4019ea <rio_readlineb+0xfe>
401951:       4c 89 63 08             mov    %r12,0x8(%rbx)
401955:       8b 6b 04                mov    0x4(%rbx),%ebp
401958:       85 ed                   test   %ebp,%ebp
40195a:       7e c1                   jle    40191d <rio_readlineb+0x31>
40195c:       85 ed                   test   %ebp,%ebp
40195e:       0f 85 90 00 00 00       jne    4019f4 <rio_readlineb+0x108>
401964:       48 63 c5                movslq %ebp,%rax
401967:       48 89 44 24 08          mov    %rax,0x8(%rsp)
40196c:       48 8b 73 08             mov    0x8(%rbx),%rsi
401970:       48 89 c2                mov    %rax,%rdx
401973:       48 8d 7c 24 1f          lea    0x1f(%rsp),%rdi
401978:       e8 2b f2 ff ff          callq  400ba8 <memcpy@plt>
40197d:       48 8b 44 24 08          mov    0x8(%rsp),%rax
401982:       48 01 43 08             add    %rax,0x8(%rbx)
401986:       29 6b 04                sub    %ebp,0x4(%rbx)
401989:       89 c2                   mov    %eax,%edx
40198b:       83 f8 01                cmp    $0x1,%eax
40198e:       75 15                   jne    4019a5 <rio_readlineb+0xb9>
401990:       0f b6 44 24 1f          movzbl 0x1f(%rsp),%eax
401995:       41 88 07                mov    %al,(%r15)
401998:       49 83 c7 01             add    $0x1,%r15
40199c:       80 7c 24 1f 0a          cmpb   $0xa,0x1f(%rsp)
4019a1:       75 1c                   jne    4019bf <rio_readlineb+0xd3>
4019a3:       eb 2f                   jmp    4019d4 <rio_readlineb+0xe8>
4019a5:       44 89 f1                mov    %r14d,%ecx
4019a8:       48 c7 c0 ff ff ff ff    mov    $0xffffffffffffffff,%rax
4019af:       85 d2                   test   %edx,%edx
4019b1:       75 28                   jne    4019db <rio_readlineb+0xef>
4019b3:       b8 00 00 00 00          mov    $0x0,%eax
4019b8:       83 f9 01                cmp    $0x1,%ecx
4019bb:       75 17                   jne    4019d4 <rio_readlineb+0xe8>
4019bd:       eb 1c                   jmp    4019db <rio_readlineb+0xef>
4019bf:       41 83 c6 01             add    $0x1,%r14d
4019c3:       49 63 c6                movslq %r14d,%rax
4019c6:       48 3b 04 24             cmp    (%rsp),%rax
4019ca:       72 89                   jb     401955 <rio_readlineb+0x69>
4019cc:       eb 06                   jmp    4019d4 <rio_readlineb+0xe8>
4019ce:       41 be 01 00 00 00       mov    $0x1,%r14d
4019d4:       41 c6 07 00             movb   $0x0,(%r15)
4019d8:       49 63 c6                movslq %r14d,%rax
4019db:       48 83 c4 28             add    $0x28,%rsp
4019df:       5b                      pop    %rbx
4019e0:       5d                      pop    %rbp
4019e1:       41 5c                   pop    %r12
4019e3:       41 5d                   pop    %r13
4019e5:       41 5e                   pop    %r14
4019e7:       41 5f                   pop    %r15
4019e9:       c3                      retq
4019ea:       ba 00 00 00 00          mov    $0x0,%edx
4019ef:       44 89 f1                mov    %r14d,%ecx
4019f2:       eb b4                   jmp    4019a8 <rio_readlineb+0xbc>
4019f4:       48 8b 43 08             mov    0x8(%rbx),%rax
4019f8:       0f b6 00                movzbl (%rax),%eax
4019fb:       88 44 24 1f             mov    %al,0x1f(%rsp)
4019ff:       48 83 43 08 01          addq   $0x1,0x8(%rbx)
401a04:       83 6b 04 01             subl   $0x1,0x4(%rbx)
401a08:       eb 86                   jmp    401990 <rio_readlineb+0xa4>

0000000000401a0a <submitr>:
401a0a:       41 57                   push   %r15
401a0c:       41 56                   push   %r14
401a0e:       41 55                   push   %r13
401a10:       41 54                   push   %r12
401a12:       55                      push   %rbp
401a13:       53                      push   %rbx
401a14:       48 81 ec 78 a0 00 00    sub    $0xa078,%rsp
401a1b:       48 89 fb                mov    %rdi,%rbx
401a1e:       89 f5                   mov    %esi,%ebp
401a20:       48 89 54 24 18          mov    %rdx,0x18(%rsp)
401a25:       48 89 4c 24 20          mov    %rcx,0x20(%rsp)
401a2a:       4c 89 44 24 28          mov    %r8,0x28(%rsp)
401a2f:       4d 89 cf                mov    %r9,%r15
401a32:       4c 8b a4 24 b0 a0 00    mov    0xa0b0(%rsp),%r12
401a39:       00
401a3a:       4c 8b b4 24 b8 a0 00    mov    0xa0b8(%rsp),%r14
401a41:       00
401a42:       c7 84 24 4c 20 00 00    movl   $0x0,0x204c(%rsp)
401a49:       00 00 00 00
401a4d:       ba 00 00 00 00          mov    $0x0,%edx
401a52:       be 01 00 00 00          mov    $0x1,%esi
401a57:       bf 02 00 00 00          mov    $0x2,%edi
401a5c:       e8 67 f1 ff ff          callq  400bc8 <socket@plt>
401a61:       41 89 c5                mov    %eax,%r13d
401a64:       85 c0                   test   %eax,%eax
401a66:       79 19                   jns    401a81 <submitr+0x77>
401a68:       be 50 27 40 00          mov    $0x402750,%esi
401a6d:       b9 26 00 00 00          mov    $0x26,%ecx
401a72:       4c 89 f7                mov    %r14,%rdi
401a75:       f3 a4                   rep movsb %ds:(%rsi),%es:(%rdi)
401a77:       b8 ff ff ff ff          mov    $0xffffffff,%eax
401a7c:       e9 4a 05 00 00          jmpq   401fcb <submitr+0x5c1>
401a81:       48 89 df                mov    %rbx,%rdi
401a84:       e8 1f f0 ff ff          callq  400aa8 <gethostbyname@plt>
401a89:       48 85 c0                test   %rax,%rax
401a8c:       75 21                   jne    401aaf <submitr+0xa5>
401a8e:       be 78 27 40 00          mov    $0x402778,%esi
401a93:       b9 2f 00 00 00          mov    $0x2f,%ecx
401a98:       4c 89 f7                mov    %r14,%rdi
401a9b:       f3 a4                   rep movsb %ds:(%rsi),%es:(%rdi)
401a9d:       44 89 ef                mov    %r13d,%edi
401aa0:       e8 f3 ef ff ff          callq  400a98 <close@plt>
401aa5:       b8 ff ff ff ff          mov    $0xffffffff,%eax
401aaa:       e9 1c 05 00 00          jmpq   401fcb <submitr+0x5c1>
401aaf:       48 8d 9c 24 60 a0 00    lea    0xa060(%rsp),%rbx
401ab6:       00
401ab7:       48 c7 03 00 00 00 00    movq   $0x0,(%rbx)
401abe:       48 c7 43 08 00 00 00    movq   $0x0,0x8(%rbx)
401ac5:       00
401ac6:       66 c7 84 24 60 a0 00    movw   $0x2,0xa060(%rsp)
401acd:       00 02 00
401ad0:       48 63 50 14             movslq 0x14(%rax),%rdx
401ad4:       48 8d 73 04             lea    0x4(%rbx),%rsi
401ad8:       48 8b 40 18             mov    0x18(%rax),%rax
401adc:       48 8b 38                mov    (%rax),%rdi
401adf:       e8 54 f0 ff ff          callq  400b38 <bcopy@plt>
401ae4:       66 c1 cd 08             ror    $0x8,%bp
401ae8:       66 89 ac 24 62 a0 00    mov    %bp,0xa062(%rsp)
401aef:       00
401af0:       ba 10 00 00 00          mov    $0x10,%edx
401af5:       48 89 de                mov    %rbx,%rsi
401af8:       44 89 ef                mov    %r13d,%edi
401afb:       e8 88 f0 ff ff          callq  400b88 <connect@plt>
401b00:       85 c0                   test   %eax,%eax
401b02:       79 21                   jns    401b25 <submitr+0x11b>
401b04:       be a8 27 40 00          mov    $0x4027a8,%esi
401b09:       b9 27 00 00 00          mov    $0x27,%ecx
401b0e:       4c 89 f7                mov    %r14,%rdi
401b11:       f3 a4                   rep movsb %ds:(%rsi),%es:(%rdi)
401b13:       44 89 ef                mov    %r13d,%edi
401b16:       e8 7d ef ff ff          callq  400a98 <close@plt>
401b1b:       b8 ff ff ff ff          mov    $0xffffffff,%eax
401b20:       e9 a6 04 00 00          jmpq   401fcb <submitr+0x5c1>
401b25:       48 c7 c2 ff ff ff ff    mov    $0xffffffffffffffff,%rdx
401b2c:       4c 89 e7                mov    %r12,%rdi
401b2f:       b8 00 00 00 00          mov    $0x0,%eax
401b34:       48 89 d1                mov    %rdx,%rcx
401b37:       f2 ae                   repnz scas %es:(%rdi),%al
401b39:       48 89 cb                mov    %rcx,%rbx
401b3c:       48 f7 d3                not    %rbx
401b3f:       48 8b 7c 24 18          mov    0x18(%rsp),%rdi
401b44:       48 89 d1                mov    %rdx,%rcx
401b47:       f2 ae                   repnz scas %es:(%rdi),%al
401b49:       48 89 ce                mov    %rcx,%rsi
401b4c:       48 8b 7c 24 20          mov    0x20(%rsp),%rdi
401b51:       48 89 d1                mov    %rdx,%rcx
401b54:       f2 ae                   repnz scas %es:(%rdi),%al
401b56:       48 89 cd                mov    %rcx,%rbp
401b59:       48 f7 d5                not    %rbp
401b5c:       4c 89 ff                mov    %r15,%rdi
401b5f:       48 89 d1                mov    %rdx,%rcx
401b62:       f2 ae                   repnz scas %es:(%rdi),%al
401b64:       48 29 f5                sub    %rsi,%rbp
401b67:       48 29 cd                sub    %rcx,%rbp
401b6a:       48 8d 5c 5b fd          lea    -0x3(%rbx,%rbx,2),%rbx
401b6f:       48 8d 44 1d 7b          lea    0x7b(%rbp,%rbx,1),%rax
401b74:       48 3d 00 20 00 00       cmp    $0x2000,%rax
401b7a:       0f 86 81 00 00 00       jbe    401c01 <submitr+0x1f7>
401b80:       41 c7 06 45 72 72 6f    movl   $0x6f727245,(%r14)
401b87:       41 c7 46 04 72 3a 20    movl   $0x52203a72,0x4(%r14)
401b8e:       52
401b8f:       41 c7 46 08 65 73 75    movl   $0x6c757365,0x8(%r14)
401b96:       6c
401b97:       41 c7 46 0c 74 20 73    movl   $0x74732074,0xc(%r14)
401b9e:       74
401b9f:       41 c7 46 10 72 69 6e    movl   $0x676e6972,0x10(%r14)
401ba6:       67
401ba7:       41 c7 46 14 20 74 6f    movl   $0x6f6f7420,0x14(%r14)
401bae:       6f
401baf:       41 c7 46 18 20 6c 61    movl   $0x72616c20,0x18(%r14)
401bb6:       72
401bb7:       41 c7 46 1c 67 65 2e    movl   $0x202e6567,0x1c(%r14)
401bbe:       20
401bbf:       41 c7 46 20 49 6e 63    movl   $0x72636e49,0x20(%r14)
401bc6:       72
401bc7:       41 c7 46 24 65 61 73    movl   $0x65736165,0x24(%r14)
401bce:       65
401bcf:       41 c7 46 28 20 53 55    movl   $0x42555320,0x28(%r14)
401bd6:       42
401bd7:       41 c7 46 2c 4d 49 54    movl   $0x5254494d,0x2c(%r14)
401bde:       52
401bdf:       41 c7 46 30 5f 4d 41    movl   $0x58414d5f,0x30(%r14)
401be6:       58
401be7:       41 c7 46 34 42 55 46    movl   $0x465542,0x34(%r14)
401bee:       00
401bef:       44 89 ef                mov    %r13d,%edi
401bf2:       e8 a1 ee ff ff          callq  400a98 <close@plt>
401bf7:       b8 ff ff ff ff          mov    $0xffffffff,%eax
401bfc:       e9 ca 03 00 00          jmpq   401fcb <submitr+0x5c1>
401c01:       48 8d 94 24 50 40 00    lea    0x4050(%rsp),%rdx
401c08:       00
401c09:       b9 00 04 00 00          mov    $0x400,%ecx
401c0e:       b8 00 00 00 00          mov    $0x0,%eax
401c13:       48 89 d7                mov    %rdx,%rdi
401c16:       f3 48 ab                rep stos %rax,%es:(%rdi)
401c19:       4c 89 e7                mov    %r12,%rdi
401c1c:       48 c7 c1 ff ff ff ff    mov    $0xffffffffffffffff,%rcx
401c23:       f2 ae                   repnz scas %es:(%rdi),%al
401c25:       48 f7 d1                not    %rcx
401c28:       83 e9 01                sub    $0x1,%ecx
401c2b:       0f 84 ac 03 00 00       je     401fdd <submitr+0x5d3>
401c31:       48 89 d3                mov    %rdx,%rbx
401c34:       4c 89 e5                mov    %r12,%rbp
401c37:       44 8d 61 ff             lea    -0x1(%rcx),%r12d
401c3b:       0f b6 45 00             movzbl 0x0(%rbp),%eax
401c3f:       3c 2a                   cmp    $0x2a,%al
401c41:       74 27                   je     401c6a <submitr+0x260>
401c43:       3c 2d                   cmp    $0x2d,%al
401c45:       74 23                   je     401c6a <submitr+0x260>
401c47:       3c 2e                   cmp    $0x2e,%al
401c49:       74 1f                   je     401c6a <submitr+0x260>
401c4b:       3c 5f                   cmp    $0x5f,%al
401c4d:       0f 1f 00                nopl   (%rax)
401c50:       74 18                   je     401c6a <submitr+0x260>
401c52:       8d 50 d0                lea    -0x30(%rax),%edx
401c55:       80 fa 09                cmp    $0x9,%dl
401c58:       76 10                   jbe    401c6a <submitr+0x260>
401c5a:       8d 50 bf                lea    -0x41(%rax),%edx
401c5d:       80 fa 19                cmp    $0x19,%dl
401c60:       76 08                   jbe    401c6a <submitr+0x260>
401c62:       8d 50 9f                lea    -0x61(%rax),%edx
401c65:       80 fa 19                cmp    $0x19,%dl
401c68:       77 08                   ja     401c72 <submitr+0x268>
401c6a:       88 03                   mov    %al,(%rbx)
401c6c:       48 83 c3 01             add    $0x1,%rbx
401c70:       eb 4b                   jmp    401cbd <submitr+0x2b3>
401c72:       3c 20                   cmp    $0x20,%al
401c74:       75 09                   jne    401c7f <submitr+0x275>
401c76:       c6 03 2b                movb   $0x2b,(%rbx)
401c79:       48 83 c3 01             add    $0x1,%rbx
401c7d:       eb 3e                   jmp    401cbd <submitr+0x2b3>
401c7f:       8d 50 e0                lea    -0x20(%rax),%edx
401c82:       80 fa 5f                cmp    $0x5f,%dl
401c85:       76 04                   jbe    401c8b <submitr+0x281>
401c87:       3c 09                   cmp    $0x9,%al
401c89:       75 48                   jne    401cd3 <submitr+0x2c9>
401c8b:       0f b6 d0                movzbl %al,%edx
401c8e:       be d8 26 40 00          mov    $0x4026d8,%esi
401c93:       48 8d 7c 24 30          lea    0x30(%rsp),%rdi
401c98:       b8 00 00 00 00          mov    $0x0,%eax
401c9d:       e8 b6 ee ff ff          callq  400b58 <sprintf@plt>
401ca2:       0f b6 44 24 30          movzbl 0x30(%rsp),%eax
401ca7:       88 03                   mov    %al,(%rbx)
401ca9:       0f b6 44 24 31          movzbl 0x31(%rsp),%eax
401cae:       88 43 01                mov    %al,0x1(%rbx)
401cb1:       0f b6 44 24 32          movzbl 0x32(%rsp),%eax
401cb6:       88 43 02                mov    %al,0x2(%rbx)
401cb9:       48 83 c3 03             add    $0x3,%rbx
401cbd:       45 85 e4                test   %r12d,%r12d
401cc0:       0f 84 17 03 00 00       je     401fdd <submitr+0x5d3>
401cc6:       48 83 c5 01             add    $0x1,%rbp
401cca:       41 83 ec 01             sub    $0x1,%r12d
401cce:       e9 68 ff ff ff          jmpq   401c3b <submitr+0x231>
401cd3:       be d0 27 40 00          mov    $0x4027d0,%esi
401cd8:       b9 43 00 00 00          mov    $0x43,%ecx
401cdd:       4c 89 f7                mov    %r14,%rdi
401ce0:       f3 a4                   rep movsb %ds:(%rsi),%es:(%rdi)
401ce2:       44 89 ef                mov    %r13d,%edi
401ce5:       e8 ae ed ff ff          callq  400a98 <close@plt>
401cea:       b8 ff ff ff ff          mov    $0xffffffff,%eax
401cef:       e9 d7 02 00 00          jmpq   401fcb <submitr+0x5c1>
401cf4:       48 01 c5                add    %rax,%rbp
401cf7:       48 89 da                mov    %rbx,%rdx
401cfa:       48 89 ee                mov    %rbp,%rsi
401cfd:       44 89 ef                mov    %r13d,%edi
401d00:       e8 23 ef ff ff          callq  400c28 <write@plt>
401d05:       48 85 c0                test   %rax,%rax
401d08:       7f 0d                   jg     401d17 <submitr+0x30d>
401d0a:       e8 e9 ee ff ff          callq  400bf8 <__errno_location@plt>
401d0f:       83 38 04                cmpl   $0x4,(%rax)
401d12:       75 0d                   jne    401d21 <submitr+0x317>
401d14:       4c 89 f8                mov    %r15,%rax
401d17:       48 29 c3                sub    %rax,%rbx
401d1a:       75 d8                   jne    401cf4 <submitr+0x2ea>
401d1c:       4d 85 e4                test   %r12,%r12
401d1f:       79 5d                   jns    401d7e <submitr+0x374>
401d21:       4c 89 f7                mov    %r14,%rdi
401d24:       be 18 28 40 00          mov    $0x402818,%esi
401d29:       b8 2c 00 00 00          mov    $0x2c,%eax
401d2e:       41 f6 c6 01             test   $0x1,%r14b
401d32:       74 04                   je     401d38 <submitr+0x32e>
401d34:       a4                      movsb  %ds:(%rsi),%es:(%rdi)
401d35:       83 e8 01                sub    $0x1,%eax
401d38:       40 f6 c7 02             test   $0x2,%dil
401d3c:       74 05                   je     401d43 <submitr+0x339>
401d3e:       66 a5                   movsw  %ds:(%rsi),%es:(%rdi)
401d40:       83 e8 02                sub    $0x2,%eax
401d43:       89 c1                   mov    %eax,%ecx
401d45:       c1 e9 02                shr    $0x2,%ecx
401d48:       89 c9                   mov    %ecx,%ecx
401d4a:       f3 a5                   rep movsl %ds:(%rsi),%es:(%rdi)
401d4c:       ba 00 00 00 00          mov    $0x0,%edx
401d51:       a8 02                   test   $0x2,%al
401d53:       74 0c                   je     401d61 <submitr+0x357>
401d55:       0f b7 0c 16             movzwl (%rsi,%rdx,1),%ecx
401d59:       66 89 0c 17             mov    %cx,(%rdi,%rdx,1)
401d5d:       48 83 c2 02             add    $0x2,%rdx
401d61:       a8 01                   test   $0x1,%al
401d63:       74 07                   je     401d6c <submitr+0x362>
401d65:       0f b6 04 16             movzbl (%rsi,%rdx,1),%eax
401d69:       88 04 17                mov    %al,(%rdi,%rdx,1)
401d6c:       44 89 ef                mov    %r13d,%edi
401d6f:       e8 24 ed ff ff          callq  400a98 <close@plt>
401d74:       b8 ff ff ff ff          mov    $0xffffffff,%eax
401d79:       e9 4d 02 00 00          jmpq   401fcb <submitr+0x5c1>
401d7e:       44 89 ac 24 50 80 00    mov    %r13d,0x8050(%rsp)
401d85:       00
401d86:       c7 84 24 54 80 00 00    movl   $0x0,0x8054(%rsp)
401d8d:       00 00 00 00
401d91:       48 8d bc 24 50 80 00    lea    0x8050(%rsp),%rdi
401d98:       00
401d99:       48 8d 47 10             lea    0x10(%rdi),%rax
401d9d:       48 89 84 24 58 80 00    mov    %rax,0x8058(%rsp)
401da4:       00
401da5:       48 8d b4 24 50 60 00    lea    0x6050(%rsp),%rsi
401dac:       00
401dad:       ba 00 20 00 00          mov    $0x2000,%edx
401db2:       e8 35 fb ff ff          callq  4018ec <rio_readlineb>
401db7:       48 85 c0                test   %rax,%rax
401dba:       7f 21                   jg     401ddd <submitr+0x3d3>
401dbc:       be 48 28 40 00          mov    $0x402848,%esi
401dc1:       b9 36 00 00 00          mov    $0x36,%ecx
401dc6:       4c 89 f7                mov    %r14,%rdi
401dc9:       f3 a4                   rep movsb %ds:(%rsi),%es:(%rdi)
401dcb:       44 89 ef                mov    %r13d,%edi
401dce:       e8 c5 ec ff ff          callq  400a98 <close@plt>
401dd3:       b8 ff ff ff ff          mov    $0xffffffff,%eax
401dd8:       e9 ee 01 00 00          jmpq   401fcb <submitr+0x5c1>
401ddd:       4c 8d bc 24 50 60 00    lea    0x6050(%rsp),%r15
401de4:       00
401de5:       48 8d 8c 24 4c 20 00    lea    0x204c(%rsp),%rcx
401dec:       00
401ded:       48 8d 94 24 50 20 00    lea    0x2050(%rsp),%rdx
401df4:       00
401df5:       4c 8d 44 24 40          lea    0x40(%rsp),%r8
401dfa:       be df 26 40 00          mov    $0x4026df,%esi
401dff:       4c 89 ff                mov    %r15,%rdi
401e02:       b8 00 00 00 00          mov    $0x0,%eax
401e07:       e8 bc ec ff ff          callq  400ac8 <__isoc99_sscanf@plt>
401e0c:       8b 94 24 4c 20 00 00    mov    0x204c(%rsp),%edx
401e13:       81 fa c8 00 00 00       cmp    $0xc8,%edx
401e19:       0f 84 b8 00 00 00       je     401ed7 <submitr+0x4cd>
401e1f:       48 8d 4c 24 40          lea    0x40(%rsp),%rcx
401e24:       be 80 28 40 00          mov    $0x402880,%esi
401e29:       4c 89 f7                mov    %r14,%rdi
401e2c:       b8 00 00 00 00          mov    $0x0,%eax
401e31:       e8 22 ed ff ff          callq  400b58 <sprintf@plt>
401e36:       44 89 ef                mov    %r13d,%edi
401e39:       e8 5a ec ff ff          callq  400a98 <close@plt>
401e3e:       b8 ff ff ff ff          mov    $0xffffffff,%eax
401e43:       e9 83 01 00 00          jmpq   401fcb <submitr+0x5c1>
401e48:       ba 00 20 00 00          mov    $0x2000,%edx
401e4d:       48 89 de                mov    %rbx,%rsi
401e50:       4c 89 e7                mov    %r12,%rdi
401e53:       e8 94 fa ff ff          callq  4018ec <rio_readlineb>
401e58:       48 85 c0                test   %rax,%rax
401e5b:       0f 8f 8b 00 00 00       jg     401eec <submitr+0x4e2>
401e61:       41 c7 06 45 72 72 6f    movl   $0x6f727245,(%r14)
401e68:       41 c7 46 04 72 3a 20    movl   $0x43203a72,0x4(%r14)
401e6f:       43
401e70:       41 c7 46 08 6c 69 65    movl   $0x6e65696c,0x8(%r14)
401e77:       6e
401e78:       41 c7 46 0c 74 20 75    movl   $0x6e752074,0xc(%r14)
401e7f:       6e
401e80:       41 c7 46 10 61 62 6c    movl   $0x656c6261,0x10(%r14)
401e87:       65
401e88:       41 c7 46 14 20 74 6f    movl   $0x206f7420,0x14(%r14)
401e8f:       20
401e90:       41 c7 46 18 72 65 61    movl   $0x64616572,0x18(%r14)
401e97:       64
401e98:       41 c7 46 1c 20 68 65    movl   $0x61656820,0x1c(%r14)
401e9f:       61
401ea0:       41 c7 46 20 64 65 72    movl   $0x73726564,0x20(%r14)
401ea7:       73
401ea8:       41 c7 46 24 20 66 72    movl   $0x6f726620,0x24(%r14)
401eaf:       6f
401eb0:       41 c7 46 28 6d 20 73    movl   $0x6573206d,0x28(%r14)
401eb7:       65
401eb8:       41 c7 46 2c 72 76 65    movl   $0x72657672,0x2c(%r14)
401ebf:       72
401ec0:       41 c6 46 30 00          movb   $0x0,0x30(%r14)
401ec5:       44 89 ef                mov    %r13d,%edi
401ec8:       e8 cb eb ff ff          callq  400a98 <close@plt>
401ecd:       b8 ff ff ff ff          mov    $0xffffffff,%eax
401ed2:       e9 f4 00 00 00          jmpq   401fcb <submitr+0x5c1>
401ed7:       48 8d 9c 24 50 60 00    lea    0x6050(%rsp),%rbx
401ede:       00
401edf:       bd f0 26 40 00          mov    $0x4026f0,%ebp
401ee4:       4c 8d a4 24 50 80 00    lea    0x8050(%rsp),%r12
401eeb:       00
401eec:       0f b6 03                movzbl (%rbx),%eax
401eef:       3a 45 00                cmp    0x0(%rbp),%al
401ef2:       0f 85 50 ff ff ff       jne    401e48 <submitr+0x43e>
401ef8:       0f b6 43 01             movzbl 0x1(%rbx),%eax
401efc:       3a 45 01                cmp    0x1(%rbp),%al
401eff:       0f 85 43 ff ff ff       jne    401e48 <submitr+0x43e>
401f05:       0f b6 43 02             movzbl 0x2(%rbx),%eax
401f09:       3a 45 02                cmp    0x2(%rbp),%al
401f0c:       0f 85 36 ff ff ff       jne    401e48 <submitr+0x43e>
401f12:       48 8d b4 24 50 60 00    lea    0x6050(%rsp),%rsi
401f19:       00
401f1a:       48 8d bc 24 50 80 00    lea    0x8050(%rsp),%rdi
401f21:       00
401f22:       ba 00 20 00 00          mov    $0x2000,%edx
401f27:       e8 c0 f9 ff ff          callq  4018ec <rio_readlineb>
401f2c:       48 85 c0                test   %rax,%rax
401f2f:       7f 5a                   jg     401f8b <submitr+0x581>
401f31:       4c 89 f7                mov    %r14,%rdi
401f34:       be b0 28 40 00          mov    $0x4028b0,%esi
401f39:       b8 38 00 00 00          mov    $0x38,%eax
401f3e:       41 f6 c6 01             test   $0x1,%r14b
401f42:       74 04                   je     401f48 <submitr+0x53e>
401f44:       a4                      movsb  %ds:(%rsi),%es:(%rdi)
401f45:       83 e8 01                sub    $0x1,%eax
401f48:       40 f6 c7 02             test   $0x2,%dil
401f4c:       74 05                   je     401f53 <submitr+0x549>
401f4e:       66 a5                   movsw  %ds:(%rsi),%es:(%rdi)
401f50:       83 e8 02                sub    $0x2,%eax
401f53:       89 c1                   mov    %eax,%ecx
401f55:       c1 e9 02                shr    $0x2,%ecx
401f58:       89 c9                   mov    %ecx,%ecx
401f5a:       f3 a5                   rep movsl %ds:(%rsi),%es:(%rdi)
401f5c:       ba 00 00 00 00          mov    $0x0,%edx
401f61:       a8 02                   test   $0x2,%al
401f63:       74 0c                   je     401f71 <submitr+0x567>
401f65:       0f b7 0c 16             movzwl (%rsi,%rdx,1),%ecx
401f69:       66 89 0c 17             mov    %cx,(%rdi,%rdx,1)
401f6d:       48 83 c2 02             add    $0x2,%rdx
401f71:       a8 01                   test   $0x1,%al
401f73:       74 07                   je     401f7c <submitr+0x572>
401f75:       0f b6 04 16             movzbl (%rsi,%rdx,1),%eax
401f79:       88 04 17                mov    %al,(%rdi,%rdx,1)
401f7c:       44 89 ef                mov    %r13d,%edi
401f7f:       e8 14 eb ff ff          callq  400a98 <close@plt>
401f84:       b8 ff ff ff ff          mov    $0xffffffff,%eax
401f89:       eb 40                   jmp    401fcb <submitr+0x5c1>
401f8b:       4c 89 fe                mov    %r15,%rsi
401f8e:       4c 89 f7                mov    %r14,%rdi
401f91:       e8 72 ec ff ff          callq  400c08 <strcpy@plt>
401f96:       44 89 ef                mov    %r13d,%edi
401f99:       e8 fa ea ff ff          callq  400a98 <close@plt>
401f9e:       b8 f3 26 40 00          mov    $0x4026f3,%eax
401fa3:       41 0f b6 16             movzbl (%r14),%edx
401fa7:       3a 10                   cmp    (%rax),%dl
401fa9:       75 1b                   jne    401fc6 <submitr+0x5bc>
401fab:       41 0f b6 56 01          movzbl 0x1(%r14),%edx
401fb0:       3a 50 01                cmp    0x1(%rax),%dl
401fb3:       75 11                   jne    401fc6 <submitr+0x5bc>
401fb5:       41 0f b6 56 02          movzbl 0x2(%r14),%edx
401fba:       3a 50 02                cmp    0x2(%rax),%dl
401fbd:       75 07                   jne    401fc6 <submitr+0x5bc>
401fbf:       b8 00 00 00 00          mov    $0x0,%eax
401fc4:       eb 05                   jmp    401fcb <submitr+0x5c1>
401fc6:       b8 ff ff ff ff          mov    $0xffffffff,%eax
401fcb:       48 81 c4 78 a0 00 00    add    $0xa078,%rsp
401fd2:       5b                      pop    %rbx
401fd3:       5d                      pop    %rbp
401fd4:       41 5c                   pop    %r12
401fd6:       41 5d                   pop    %r13
401fd8:       41 5e                   pop    %r14
401fda:       41 5f                   pop    %r15
401fdc:       c3                      retq
401fdd:       48 8d 9c 24 50 60 00    lea    0x6050(%rsp),%rbx
401fe4:       00
401fe5:       48 8d 84 24 50 40 00    lea    0x4050(%rsp),%rax
401fec:       00
401fed:       48 89 04 24             mov    %rax,(%rsp)
401ff1:       4d 89 f9                mov    %r15,%r9
401ff4:       4c 8b 44 24 28          mov    0x28(%rsp),%r8
401ff9:       48 8b 4c 24 20          mov    0x20(%rsp),%rcx
401ffe:       48 8b 54 24 18          mov    0x18(%rsp),%rdx
402003:       be e8 28 40 00          mov    $0x4028e8,%esi
402008:       48 89 df                mov    %rbx,%rdi
40200b:       b8 00 00 00 00          mov    $0x0,%eax
402010:       e8 43 eb ff ff          callq  400b58 <sprintf@plt>
402015:       48 89 df                mov    %rbx,%rdi
402018:       b8 00 00 00 00          mov    $0x0,%eax
40201d:       48 c7 c1 ff ff ff ff    mov    $0xffffffffffffffff,%rcx
402024:       f2 ae                   repnz scas %es:(%rdi),%al
402026:       48 f7 d1                not    %rcx
402029:       49 89 cc                mov    %rcx,%r12
40202c:       49 83 ec 01             sub    $0x1,%r12
402030:       0f 84 48 fd ff ff       je     401d7e <submitr+0x374>
402036:       4c 89 e3                mov    %r12,%rbx
402039:       48 8d ac 24 50 60 00    lea    0x6050(%rsp),%rbp
402040:       00
402041:       41 bf 00 00 00 00       mov    $0x0,%r15d
402047:       e9 ab fc ff ff          jmpq   401cf7 <submitr+0x2ed>

000000000040204c <driver_post>:
40204c:       53                      push   %rbx
40204d:       48 83 ec 10             sub    $0x10,%rsp
402051:       4c 89 c3                mov    %r8,%rbx
402054:       85 c9                   test   %ecx,%ecx
402056:       74 22                   je     40207a <driver_post+0x2e>
402058:       48 89 d6                mov    %rdx,%rsi
40205b:       bf f6 26 40 00          mov    $0x4026f6,%edi
402060:       b8 00 00 00 00          mov    $0x0,%eax
402065:       e8 1e ea ff ff          callq  400a88 <printf@plt>
40206a:       66 c7 03 4f 4b          movw   $0x4b4f,(%rbx)
40206f:       c6 43 02 00             movb   $0x0,0x2(%rbx)
402073:       b8 00 00 00 00          mov    $0x0,%eax
402078:       eb 43                   jmp    4020bd <driver_post+0x71>
40207a:       48 85 ff                test   %rdi,%rdi
40207d:       74 30                   je     4020af <driver_post+0x63>
40207f:       80 3f 00                cmpb   $0x0,(%rdi)
402082:       74 2b                   je     4020af <driver_post+0x63>
402084:       4c 89 44 24 08          mov    %r8,0x8(%rsp)
402089:       48 89 14 24             mov    %rdx,(%rsp)
40208d:       41 b9 0d 27 40 00       mov    $0x40270d,%r9d
402093:       49 89 f0                mov    %rsi,%r8
402096:       48 89 f9                mov    %rdi,%rcx
402099:       ba 1c 27 40 00          mov    $0x40271c,%edx
40209e:       be 6e 3b 00 00          mov    $0x3b6e,%esi
4020a3:       bf fe 24 40 00          mov    $0x4024fe,%edi
4020a8:       e8 5d f9 ff ff          callq  401a0a <submitr>
4020ad:       eb 0e                   jmp    4020bd <driver_post+0x71>
4020af:       66 c7 03 4f 4b          movw   $0x4b4f,(%rbx)
4020b4:       c6 43 02 00             movb   $0x0,0x2(%rbx)
4020b8:       b8 00 00 00 00          mov    $0x0,%eax
4020bd:       48 83 c4 10             add    $0x10,%rsp
4020c1:       5b                      pop    %rbx
4020c2:       c3                      retq

00000000004020c3 <sigalrm_handler>:
4020c3:       48 83 ec 08             sub    $0x8,%rsp
4020c7:       ba 00 00 00 00          mov    $0x0,%edx
4020cc:       be 40 29 40 00          mov    $0x402940,%esi
4020d1:       48 8b 3d 70 17 20 00    mov    0x201770(%rip),%rdi        # 603848 <stderr@@GLIBC_2.2.5>
4020d8:       b8 00 00 00 00          mov    $0x0,%eax
4020dd:       e8 36 eb ff ff          callq  400c18 <fprintf@plt>
4020e2:       bf 01 00 00 00          mov    $0x1,%edi
4020e7:       e8 ec e9 ff ff          callq  400ad8 <exit@plt>
4020ec:       90                      nop
4020ed:       90                      nop
4020ee:       90                      nop
4020ef:       90                      nop

00000000004020f0 <__libc_csu_fini>:
4020f0:       f3 c3                   repz retq
4020f2:       66 66 66 66 66 2e 0f    data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
4020f9:       1f 84 00 00 00 00 00

0000000000402100 <__libc_csu_init>:
402100:       48 89 6c 24 d8          mov    %rbp,-0x28(%rsp)
402105:       4c 89 64 24 e0          mov    %r12,-0x20(%rsp)
40210a:       48 8d 2d db 0d 20 00    lea    0x200ddb(%rip),%rbp        # 602eec <__init_array_end>
402111:       4c 8d 25 d4 0d 20 00    lea    0x200dd4(%rip),%r12        # 602eec <__init_array_end>
402118:       4c 89 6c 24 e8          mov    %r13,-0x18(%rsp)
40211d:       4c 89 74 24 f0          mov    %r14,-0x10(%rsp)
402122:       4c 89 7c 24 f8          mov    %r15,-0x8(%rsp)
402127:       48 89 5c 24 d0          mov    %rbx,-0x30(%rsp)
40212c:       48 83 ec 38             sub    $0x38,%rsp
402130:       4c 29 e5                sub    %r12,%rbp
402133:       41 89 fd                mov    %edi,%r13d
402136:       49 89 f6                mov    %rsi,%r14
402139:       48 c1 fd 03             sar    $0x3,%rbp
40213d:       49 89 d7                mov    %rdx,%r15
402140:       e8 1b e9 ff ff          callq  400a60 <_init>
402145:       48 85 ed                test   %rbp,%rbp
402148:       74 1c                   je     402166 <__libc_csu_init+0x66>
40214a:       31 db                   xor    %ebx,%ebx
40214c:       0f 1f 40 00             nopl   0x0(%rax)
402150:       4c 89 fa                mov    %r15,%rdx
402153:       4c 89 f6                mov    %r14,%rsi
402156:       44 89 ef                mov    %r13d,%edi
402159:       41 ff 14 dc             callq  *(%r12,%rbx,8)
40215d:       48 83 c3 01             add    $0x1,%rbx
402161:       48 39 eb                cmp    %rbp,%rbx
402164:       72 ea                   jb     402150 <__libc_csu_init+0x50>
402166:       48 8b 5c 24 08          mov    0x8(%rsp),%rbx
40216b:       48 8b 6c 24 10          mov    0x10(%rsp),%rbp
402170:       4c 8b 64 24 18          mov    0x18(%rsp),%r12
402175:       4c 8b 6c 24 20          mov    0x20(%rsp),%r13
40217a:       4c 8b 74 24 28          mov    0x28(%rsp),%r14
40217f:       4c 8b 7c 24 30          mov    0x30(%rsp),%r15
402184:       48 83 c4 38             add    $0x38,%rsp
402188:       c3                      retq
402189:       90                      nop
40218a:       90                      nop
40218b:       90                      nop
40218c:       90                      nop
40218d:       90                      nop
40218e:       90                      nop
40218f:       90                      nop

0000000000402190 <__do_global_ctors_aux>:
402190:       55                      push   %rbp
402191:       48 89 e5                mov    %rsp,%rbp
402194:       53                      push   %rbx
402195:       48 83 ec 08             sub    $0x8,%rsp
402199:       48 8b 05 50 0d 20 00    mov    0x200d50(%rip),%rax        # 602ef0 <__CTOR_LIST__>
4021a0:       48 83 f8 ff             cmp    $0xffffffffffffffff,%rax
4021a4:       74 19                   je     4021bf <__do_global_ctors_aux+0x2f>
4021a6:       bb f0 2e 60 00          mov    $0x602ef0,%ebx
4021ab:       0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)
4021b0:       48 83 eb 08             sub    $0x8,%rbx
4021b4:       ff d0                   callq  *%rax
4021b6:       48 8b 03                mov    (%rbx),%rax
4021b9:       48 83 f8 ff             cmp    $0xffffffffffffffff,%rax
4021bd:       75 f1                   jne    4021b0 <__do_global_ctors_aux+0x20>
4021bf:       48 83 c4 08             add    $0x8,%rsp
4021c3:       5b                      pop    %rbx
4021c4:       c9                      leaveq
4021c5:       c3                      retq
4021c6:       90                      nop
4021c7:       90                      nop

Disassembly of section .fini:

00000000004021c8 <_fini>:
4021c8:       48 83 ec 08             sub    $0x8,%rsp
4021cc:       e8 cf ea ff ff          callq  400ca0 <__do_global_dtors_aux>
4021d1:       48 83 c4 08             add    $0x8,%rsp
4021d5:       c3                      retq
u2 naharis3 86 :
u2 naharis3 86 :
