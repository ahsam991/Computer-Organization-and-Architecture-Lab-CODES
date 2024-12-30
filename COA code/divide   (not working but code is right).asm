

    ;div->unsigned
;idiv->signed
;syntax div/idiv divisor

.model small 
.stack 100h
.data
a dw ?
b dw ?
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
    mov a,ax
    
    mov ah,9
    lea dx,d
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    mov b,ax
    
    mov ah,9
    lea dx,e
    int 21h
              
     mov ax,a
     div b      ;a / b = ax or a / b = al 
     
     mov ah,2     
     mov dx,ax
     add dx,48

     int 21h
     
     exit:
     mov ah,4ch 
     int 21h
     main endp
end main
    