.data
msg1: .asciiz "Digite o salario atual: "
msg2: .asciiz "\nNovo salario: "

.text
.globl main
main:
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    mul $t1, $t0, 25
    li $t2, 100
    div $t1, $t2
    mflo $t1

    add $t3, $t0, $t1

    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 1
    move $a0, $t3
    syscall

    li $v0, 10
    syscall
    