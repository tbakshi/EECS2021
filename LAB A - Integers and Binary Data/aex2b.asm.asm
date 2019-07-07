addi x6, x0, 0xff
slli x7, x6, 8
addi x8, x7, 0xff

slli x9, x8, 48

addi x10, x0, 0xff
slli x11, x10, 8
addi x12, x11, 0xff

slli x13, x12, 32

add x5, x9, x13
