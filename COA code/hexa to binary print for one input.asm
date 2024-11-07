.model small
.stack 100h
.data
  msg1 db 'input hexa:$'
  msg2 db 0dh,0ah, 'output in binary:$'
.code
main proc
    
      mov ax, @data
      mov ds,ax
      
      
      
      mov bl,0h 
      ;00000000b
      mov ah,9
      lea dx,msg1
      int 21h 
      
      mov ah,1
      int 21h 
      ;31h
      mov bl,al
      ;bl=31h
       
      mov ah,9
      lea dx,msg2
      int 21h
      
       mov cx,8
      cmp bl,41h 
      ; 31h
      
     
      jge op 
      jmp op1
      op:
      cmp bl,46h
      jle me
      jmp exit
      me:
      sub bl,37h
      jmp l1
      
      op1:
      cmp bl,39h
      ; 31h
      jle te
      jmp exit
      
      te:
      sub bl,30h 
      ; bl=01h;
      
      
      
      
      
      l1:
      ;bl=10000000b
      SHL bl,1
      ;bl=00000000b
      jc one
      jmp zero
      
      one:
      mov ah,2
      mov dl,'1'
      int 21h
      loop l1 
      ;cx=0
      jmp exit
      
      
      zero:
      mov ah,2
      mov dl,'0'
      int 21h
      loop l1 
      ;cx=1
    
exit:
     mov ah,4ch
     int 21h
     
     
main endp
end main             