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
401409:       be 7e 24 40 00          mov    $0x40247e,%esi #scanformat - 6 digits (int)
40140e:       b8 00 00 00 00          mov    $0x0,%eax
401413:       e8 b0 f6 ff ff          callq  400ac8 <__isoc99_sscanf@plt>
401418:       83 f8 05                cmp    $0x5,%eax  #checking if there at least six numbers
40141b:       7f 05                   jg     401422 <read_six_numbers+0x3d>
40141d:       e8 8d ff ff ff          callq  4013af <explode_bomb>
401422:       48 83 c4 18             add    $0x18,%rsp
401426:       c3                      retq
