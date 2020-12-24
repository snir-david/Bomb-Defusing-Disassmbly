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
