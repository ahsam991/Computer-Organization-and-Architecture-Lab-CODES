;mul->unsigned
;imul->signed
;syntax mul/imul source

.model small 
.stack 100h
.data
a db ?
b db ?
c db 'input 1st digit$'
d db 10,13,'input 2nd digit $'
e db 10,13, 'result $'

.code
main proc
    mov ax,@data   
    mov ds,ax
    
    mov ah,9
    lea dx,c
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    mov a,al
    
    mov ah,9
    lea dx,d
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    mov b,al
    
    mov ah,9
    lea dx,e
    int 21h
              
     mov al ,a
     mul b      ;a x b = ax or a x b = al
     
     mov dl,al
     add dl,48
     mov ah,2
     int 21h
     
     exit:
     mov ah,4ch 
     int 21h
     main endp
end main
    