;LAB TASK 3
;READ TWO CHARACTER AND DISPLAY IT NEW LINE
;Sample Output
;AB
;AB

 .model small
.stack 100h
.data

msg1 db ? 
msg2 db ?



.code

main proc
    mov ax,@data
    mov ds,ax
              
    ;Input VALUE 1
              
    mov ah,1
    int 21h 
    mov msg1,al  
    
    ;Input VALUE 2
              
    mov ah,1
    int 21h 
    mov msg2,al 
    
     
    
    ;new line 
    mov ah,2
    mov dl,10  
    int 21h
    mov dl,13
    int 21h
    
    ;output value 1
    
    mov ah,2
    mov dl,msg1
    int 21h
    
     ;output value 2
    
    mov ah,2
    mov dl,msg2
    int 21h  
    
    
    
    
   Exit:
    mov ah,4ch
    int 21h
    main endp