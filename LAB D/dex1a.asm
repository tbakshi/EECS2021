s1: DC "Enter an integer:\0"

STACK: EQU 0x100000
       lui sp, STACK >> 12
       addi x5, x0, s1
       ecall x1, x5, 4
       ecall x8, x0, 5
       addi x6, x0, 2
       addi x29, x0, 0
loop: rem x7, x8, x6
      ecall x0, x7, 0
      div x8, x8, x6
      sd x7, 0(sp)
      addi sp, sp, 8
      addi x29, x29, 1
      beq x8, x0, loop2
      beq x0, x0, loop

loop2: addi sp, sp, -8
       ld x7, 0(sp)
       ecall x0, x7, 0
       addi x29, x29, -1
       beq x29, x0, exit
       beq x0, x0, loop2

exit: ebreak x0, x0, 0
       
