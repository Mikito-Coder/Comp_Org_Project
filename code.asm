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

        li $v0, 5
        syscall
        move $t0, $v0
        
        j while
     
     exit:
        move $a0, $v0
        jal fib
        move $a1, $v0
	
	li $v0, 4
        la $a0, output
        syscall

	li $v0, 1
        move $a0, $t0
        syscall
     
     li $v0, 10
     syscall


fib:
    li $t0, 1 #fn 
    li $t1, 1 #fn1
    li $t2, 2 #fn2
    move $t3, $a0 #takes the input integer from prompt and moves it to $

        
     