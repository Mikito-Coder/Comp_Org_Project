.data
    prompt: .asciiz "Please enter an integer: "
    output: .asciiz "\nYou typed the number "
    illegal: .asciiz "illegal Number!\n"
    newline: .asciiz "\n"
.text
main:
    li $v0, 4          # syscall: print_str
    la $a0, prompt     # load the address of the prompt string
    syscall            # make the system call to print the prompt
    
    li $v0, 5
    syscall
    move $t0, $v0
    while:
        bgt $t0, 24, exit
        
        li $v0, 4
        la $a0, illegal
        syscall

	li $v0, 4
        la $a0, prompt
        syscall
