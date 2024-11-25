
.model small
.stack 100h

.data

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov dl, 70
    
    cmp dl, 65
    jg More
    jl Less
    jmp Exit
    
Less:
    jmp Exit 
    
More:
    cmp dl, 90 
    jl Print_Char
    jmp Exit

Print_Char:
    mov ah, 2
    mov dl, dl
    int 21h 
    
   
Exit:     
    mov ah, 4ch
    int 21h
    main endp
end main


