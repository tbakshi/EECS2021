a: DD c 
b: DD d 

ORG 0x1000100010001000
c: DD 0x2222333344445555
ORG 0x1000100010001100
d: DD 0x1111222233334444


ld x6, a(x0)
ld x7, b(x0)

add x28, x6, x7 // Addition 
sub x29, x6, x7 // subtract 
or x30 , x6, x7 
xor x31, x6, x7
