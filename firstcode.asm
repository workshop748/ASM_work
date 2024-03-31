extern printf

section .text

printfrase:
    push ebp
    mov ebp,esp
    push dword [ebp+8]
    call printf
    add esp, 4
    leave
    ret

main:
    push ebp
    mov ebp,esp

    sub esp,0x10; move stack pointer up by 4
    lea eax, DWORD[message]
    push eax
    call printfrase
    add esp,0x4

    leave
    ret


section .data
message db "Hello World",13,10,0
