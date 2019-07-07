s0: DC "sum(1..n-1) Enter n:\0" 
s1: DC "sum(1..19)=" 
s2: DC "(n*(n-1))/2=" 
addi x5, x0, s0
ecall x0, x5, 4; out info 

//ecall x6,x0,5 
//add x8,x0,x6



addi x7, x6, -1; 
loop: addi x7, x7, -1
bne x7, x0, loop
bne 
math: add x9, x8, -1
mul x9, x8, x9.
div x9, x9, 2
ecall x0, x9, 0

 


