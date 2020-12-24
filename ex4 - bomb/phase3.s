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
