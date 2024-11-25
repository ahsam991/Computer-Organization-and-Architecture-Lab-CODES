; Task 6  


.model small
.stack 100h

.data

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ax, 5
    mov bx, 8
    mov cx, 7
    
    cmp ax, bx 
    jl PRINT_AX 
    jg BX_
    jmp Exit
    
BX_:
    cmp bx, cx
    jl PRINT_BX
    jg PRINT_CX
    jmp Exit

PRINT_AX:
    mov ax, '0'
    mov ah, 2
    mov dx, ax
    int 21h
    jmp Exit

PRINT_BX:
    mov bx, '0'
    mov ah, 2
    mov dx, bx
    int 21h
    jmp Exit
    
PRINT_CX:
    mov cx, '0'
    mov ah, 2
    mov dx, cx
    int 21h
    jmp Exit
      
    

Exit:     
    mov ah, 4ch
    int 21h
    main endp
end main
