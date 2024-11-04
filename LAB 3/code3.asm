;LAB TASK 
;Print 4 5 6 7 8 9 
.model small
.stack 100h
.data
a db 'lab task $'
.code

main proc
    mov ax, @data
    mov ds ,ax
    
    mov ah , 09h
    lea dx , a
    int 21h 
    
    ;new line code
    
    mov ah , 2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    
   
      ;loop code
      
    mov cx ,6
    mov ah ,2
    mov dl,4
    add dl, 48
    
        
     level1:
     int 21h
     inc dl
     loop level1
           
    exit:
    mov ax,4ch
    int 21h
    main endp
end main



