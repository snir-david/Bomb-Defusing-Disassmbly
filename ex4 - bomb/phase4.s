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
