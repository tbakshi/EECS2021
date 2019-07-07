a: DD 0xAAAABBBBCCCCDDDD
b: DD 0x4444333322221111

d: DM 8
ld x5, a(x0)
ld x6, b(x0) 


add x8, x5, x6 //a+b
sub x9, a5, x6 // a-b 
sub x10, x6, x5 //b-a
and x11, x5, x6 // a AND b 
or x12, x5, x6 // a OR b 
xor x13, x5, x6 // a XOR b
xori x14, x5, -1
xori x15, x6, -1 // not b 

ld x5, 16(x0) 


sd x8,d+0(x0) 


