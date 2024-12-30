.model small
.stack 100h
 
.data 
vowels db 'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U', '$' 
inp db 'x$'     
v db " = Vowel$"
nv db " = Not Vowel$"
 
.code
main proc
    mov ax, @data
    mov ds, ax  
    
    mov cx, 10
    xor si, si
    
COMPARE_: 
    mov al, vowels[si]
    cmp al, inp
    je PRINT_V
    inc si
    loop COMPARE_ 
    jmp PRINT_NV
    
PRINT_V:
    mov ah, 9 
    lea dx, inp
    int 21h 
    
    mov ah, 9 
    lea dx, v
    int 21h 
    jmp Exit   
    
PRINT_NV:
    mov ah, 9 
    lea dx, inp
    int 21h 
    
    mov ah, 9 
    lea dx, nv
    int 21h  
    
Exit:
    mov ah, 4ch
    int 21h
    main endp  
end main
