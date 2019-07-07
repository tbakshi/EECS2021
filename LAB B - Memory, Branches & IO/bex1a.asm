a: DD 1024
b: DD 2048
c: DD 4096
d: DD 8192

ld x5, a(x0)
ld x6, b(x0)
ld x7, c(x0)
ld x8, d(x0)

add x9, x5, x6
add x9, x7, x9
add x9, x8, x9

srli x10, x9, 2

sd x10, 0(x0)

