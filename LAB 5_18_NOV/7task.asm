;;;;;;; Task 7
.model small
.stack 100h

.data

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov al, '3'
    
    cmp al, '1'
    je PRINT_O 
    
    cmp al, '2' 
    je PRINT_E  
    
    cmp al, '3'
    je PRINT_O
    
    cmp al, '4' 
    je PRINT_E
    

PRINT_O:
    mov ax, 'O'
    mov ah, 2
    mov dx, ax
    int 21h
    jmp Exit

PRINT_E:
    mov ax, 'E'
    mov ah, 2
    mov dx, ax
    int 21h
    jmp Exit
     

Exit:     
    mov ah, 4ch
    int 21h
    main endp
end main