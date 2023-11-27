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
