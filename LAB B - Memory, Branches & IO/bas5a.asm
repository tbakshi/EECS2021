//Create a program that i) asks the user for the 
//number of integers to be entered, ii) prompts 
//for entering each of the integers, iii) prints the 
//integers on a single line in input order, and iv) 
//prints the integers on a single line in reverse input 
//order. 

c1: DC "Int: "
c2: DC ":" 
s1: DC "No of ints:\0" 

ld x28, c1(x0)
ld x29, c2(x0)


addi x30, x0, s1
ecall x0, x30, 4
ecall x4, x30, 5

bge x3, x4, end
addi x3, x3, 1

loop: 
bge x3, x4, end
addi x3, x0, 1
ecall x7 , x28, 5;
addi x3 ,x3, 1
ecall x0, x7, 0;

bge x4, x3, loop






end: ebreak x0, x0, 0 

