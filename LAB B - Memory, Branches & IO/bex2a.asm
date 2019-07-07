//Given a sequence of non-zero integers followed by 0, 
//find the biggest integer in the sequence and 
// place the result in x5. Use the DD assembler 
//command to store in the beginning of the
// memory the initial test sequence of -1, 55, -3, 7, 0. 

src: DD -1, 55, -3, 7, 0
add x7, x0, x0

loop: ld x6, src(x7)
beq x6, x0, end
bge x6, x7, 
addi x6, x6, 8
beq x0, x0, loop

end: ebreak x0, x0, 0

dst: DM 1