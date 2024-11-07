.model small
.stack 100h
.data
.code


main proc
    
    
    mov ah,1
    int 21h
    
    sub al,37h
    mov bl,al
    
    
   add al,01h
   mov bh,al
   
   
   ; if you enter A , bx register will show 0B0A
   
   main endp
  end main



