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
