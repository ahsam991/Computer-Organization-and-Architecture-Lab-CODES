.model small
.stack 100h

.data
less db "FFh$"   

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov al, -5
    
    cmp al, 0
    jl Print_Less
    jg Print_More
    jmp Exit
    
Print_Less:
    mov ah, 9 
    lea dx, less
    int 21h 
    
Print_More:
    mov ah, 2
    mov dl, '0'
    int 21h
    
   
Exit:     
    mov ah, 4ch
    int 21h
    main endp
end main

end main