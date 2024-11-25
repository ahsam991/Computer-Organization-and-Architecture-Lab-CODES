;sum of two number 
.model small
.stack 100h
.data 
msg db "Input First number: $"
msg1 db 10,13, "Input second number: $" 
msg2 db 10,13,"The sum of the two numbers = $"

.code
main proc 
    mov ax, @data
    mov ds, ax 
     
    mov ah, 9
    lea dx, msg
    int 21h
    
    mov ah, 1
    int 21h
    sub al, '0'      
    mov bl, al       
    
    
    mov ah, 9
    lea dx, msg1
    int 21h
    
    mov ah, 1
    int 21h
    sub al, '0'      
    mov cl, al       
    

    add bl, cl       
    add bl, '0'
      
      
    mov ah, 9
    lea dx, msg2
    int 21h
    
    mov ah, 2
    mov dl, bl       
    int 21h
    
Exit:     
    mov ah, 4ch
    int 21h
    main endp
end main
