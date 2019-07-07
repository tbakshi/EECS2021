//Write an assembly program that i) inputs a small positive
//integer, ii) calculates the factorial of that integer, 
//and iii) outputs the calculated result. 
// n! Enter n: \n number!)


s0: DC "n! Enter n:\0" 
s1: DC "!" 
addi x5, x0, s0
ecall x0, x5, 4; out info 
addi x5, x0, s1
ecall x1, x5, 4


