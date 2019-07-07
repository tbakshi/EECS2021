; DD x1,y1,x2,y2 

sg1: DD 0, 0, 8, 10 ;the 1-st segment 
DD 1, 2, 3, 4 
DD 5, 6, 7, 8 
DD 9, 10, 11, 12 
sgn: DD 0, 0, 100, 80 ;the n-th segment
mp: EQU 100 ;the max power value


ld x6, 0(x0)
ld x7, 8(x0) 
ld x8, 16(x0) 
ld x9, 24(x0) 

ld x22, 32(x0) ; 
ld x11, 40(x0) 
ld x12, 48(x0) 
ld x13, 56(x0)
 
ld x14, 64(x0) 
ld x15, 72(x0) 
ld x16, 80(x0) 
ld x17, 88(x0)
 
ld x18, 96(x0) 
ld x19, 104(x0) 
ld x20, 112(x0) 
ld x21, 120(x0) 

sub x23, x8, x6 
mul x23, x23, x23 

sub x24, x9, x7 
mul x24, x24, x24

add x23, x23, x24 ; Segment 1  in x23 



sub x24, x12, x22 
mul x24, x24, x24 

sub x25, x13, x11 
mul x25, x25, x25

add x24, x24, x25 ; Segment 2 in x24 



bge x23, x24, higher 
higher: 
add x2, x0, x23 

sub x25, x16, x14 
mul x25, x26, x26

sub x26, x17, x15 
mul x26, x26, x26

add x25, x24, x25 ; Segment 3 in x25 

bge x2, x25, higherTwo
higherTwo: 




sub x26, x20, x18 
mul x26, x27, x27

sub x27, x21, x19 
mul x27, x27, x27

add x26, x24, x25 ; Segment 4 in x25 

bge x2, x25, higherThree
higherThree: 

add x10, x0, x2


a1: DF 8.0
a2: DF 10.0 

fld f1, d1(x0)
fld f2, d2(x0) 

fdiv.d f3, f2, f1


