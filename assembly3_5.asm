.data
msg1: .asciiz "Digite A: "
msg2: .asciiz "Digite B: "
msg3: .asciiz "Digite C: "
msg4: .asciiz "DUAS RAIZES REAIS"
msg5: .asciiz "UMA RAIZ REAL"
msg6: .asciiz "NAO EXISTEM RAIZES REAIS"

.text
.globl main
main:
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 5
    syscall
    move $t2, $v0

    mul $t3, $t1, $t1

    mul $t4, $t0, $t2
    li $t5, 4
    mul $t4, $t4, $t5

    sub $t6, $t3, $t4

    bgtz $t6, duas
    beqz $t6, uma
    j nenhuma

duas:
    li $v0, 4
    la $a0, msg4
    syscall
    j fim

uma:
    li $v0, 4
    la $a0, msg5
    syscall
    j fim

nenhuma:
    li $v0, 4
    la $a0, msg6
    syscall

fim:
    li $v0, 10
    syscall
    
