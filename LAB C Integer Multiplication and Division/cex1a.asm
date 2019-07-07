//Write an assembly program that i) inputs a small positive
//integer, ii) calculates the factorial of that integer, 
//and iii) outputs the calculated result. 
// n! Enter n: \n number!)


s0: DC "n! Enter n:\0" 
s1: DC "!=" 
addi x5, x0, s0
ecall x0, x5, 4; out info 
ecall x6,x0,5 
add x8,x0,x6
addi x7, x6, -1; 
loop: mul x8, x8, x7
addi x7, x7, -1
bne x7, x0, loop
addi x5, x0, s1
ecall x1, x6, 0
ecall x1, x5, 4 
ecall x0, x8, 0 



