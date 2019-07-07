// VALUE ADDED  

lui x3, 0xFEDCC
addi x3, x3, 0xA98
slli x3, x3,32
lui x7, 0x76543
addi x7,x7, 0x210
add x6, x3, x7

//CHANGE MIDDLE 2 VALUES 

slli x4, x6, 28
srli x4, x4, 56
slli x4, x4, 28

xor x8, x4, x6 // RESTUL IN X8

// ROTATE 
slli x9,x8,8
srli x10, x8, 56
add x5, x9,x10





