;**********
;**********
;**********
;**********
;**********
;**********
;**********
;**********
;**********
;**********


.model  small
.stack 100h
.data
a db 10,13,'**********$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov cx,10
    l1:    
    mov ah,9
    lea dx,a
    int 21h  
    
   ;mov ah,1
   ; int 21h
   ; mov bl,al
    
    
    loop l1  
             
             
             
   exit:
   mov ah,4ch
   int 21h          
             
   main endp
end main