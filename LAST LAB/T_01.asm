.model small
.stack 100h

.data
val db "-1$"   

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ax, -5
    
    cmp ax, 0
    jl Print_block
    jmp Exit
    
Print_block:
    mov ah, 9 
    lea dx, val
    int 21h
    
  
   
Exit:     
    mov ah, 4ch
    int 21h
    main endp
    
    
    
   
    
