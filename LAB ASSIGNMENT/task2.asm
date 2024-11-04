;LAB TASK 2
;Show one user input and one predefined input 
.model small
.stack 100h
.data

;Predefine part 

msg db 5 ;Predefined value
msg1 db ? ;USER INPUT VALUE


.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,2
    add msg,48
    mov dl,msg
    int 21h 
    
 ;User Iput in new line   
    
    mov ah,2
    mov dl,10  
    int 21h
    mov dl,13
    int 21h
    
    
    
    mov ah,1
    int 21h
    mov msg1,al
     
    
    ;new line 
    
    mov ah,2
    mov dl,10  
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,msg1
    int 21h 
    
    
   Exit:
    mov ah,4ch
    int 21h
    main endp