00000000004015e0 <initialize_bomb>:
4015e0:       55                      push   %rbp
4015e1:       53                      push   %rbx
4015e2:       48 81 ec 48 20 00 00    sub    $0x2048,%rsp  #allocating space for stack
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
