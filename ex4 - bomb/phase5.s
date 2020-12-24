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
