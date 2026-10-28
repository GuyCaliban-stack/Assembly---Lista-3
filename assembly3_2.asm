.data
msg1: .asciiz "Digite o primeiro valor: "
msg2: .asciiz "Digite o segundo valor: "
msg3: .asciiz "\nValores apos a troca:\nPrimeiro: "
msg4: .asciiz "\nSegundo: "

.text
.globl main
main:
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    move $s0, $v0

    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 5
    syscall
    move $s1, $v0

    move $t0, $s0
    move $s0, $s1
    move $s1, $t0

    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 1
    move $a0, $s0
    syscall

    li $v0, 4
    la $a0, msg4
    syscall

    li $v0, 1
    move $a0, $s1
    syscall

    li $v0, 10
    syscall
    
    
    