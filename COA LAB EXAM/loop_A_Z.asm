.model small
.stack 100h

.data
msg db "Enter a character: $" 
inp db ?

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, msg
    int 21h  
    
    mov ah, 1
    int 21h
    mov inp, al 
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
        
    
level1:  
    mov dl, inp
    mov ah, 2 
    int 21h
    inc inp
    cmp inp, 'Z'
    cmp inp, 'z'
    jg end_loop
    jmp level1
    
 
     
end_loop:
    
Exit:
mov ah, 4ch
int 21h
main endp
end main