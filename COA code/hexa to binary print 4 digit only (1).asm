.model small
.stack 100h
.data
.code
main proc
    

      mov bl,0h
      mov ah,1
      int 21h
      mov bh,al
      sub bh,30h 
      shl bh,4
      or bl,bh
      mov bh,0h
      int 21h
      mov bh,al
      sub bh,30h 
      or bl,bh
      mov bh,0h
      int 21h
      mov bh,al
      sub bh,30h
      shl bh,4
      int 21h
      mov dh,al
      sub dh,30h
      or bh,dh
      
      mov cx,16
      
      ;sub bh,30h
      ;sub bl,30h
      
      ;shl bh,4
      
      
      
      l1:
      SHL bx,1
      jc one
      jmp zero
      
      one:
      mov ah,2
      mov dl,'1'
      int 21h
      loop l1
      jmp exit
      
      
      zero:
      mov ah,2
      mov dl,'0'
      int 21h
      loop l1
    
exit:
     mov ah,4ch
     int 21h
     
     
main endp
end main             