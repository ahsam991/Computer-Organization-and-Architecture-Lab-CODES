.model small
.stack 100h
.data 
msg1 db 'Enter 1st Hexa : $'
msg2 db 0dh,0ah, 'Enter 2nd Hexa : $' 
msg3 db 0dh,0ah, 'Output : $'
.code
main proc
    
      
      mov ax,@data
      mov ds,ax
      
      
      xor bl,bl
      
      mov ah,9
      lea dx,msg1
      int 21h
      
      

      mov ah,1
      int 21h
      mov ch,al
      
      mov ah,9
      lea dx,msg2
      int 21h
      
      mov ah,1
      int 21h
      mov cl,al 
      
      
      
      
      cmp ch,39h
      jle one
      jmp two
      
      
      one:
      sub ch,30h
      shl bl,4
      or bl,ch
      
      cmp cl,39h
      jle t1
      jmp t2
      
      t1: 
      sub cl,30h
      shl bl,4
      or bl,cl 
      
      jmp exit
      
      t2:
         sub cl,37h
      shl bl,4
      or bl,cl
      
      jmp exit
      
      two:
      sub ch,37h
      shl bl,4
      or bl,ch
      
      cmp cl,39h
      jle k1
      jmp k2
      
      k1: 
      sub cl,30h
      shl bl,4
      or bl,cl
      
      jmp exit
      
      k2: 
      
        sub cl,37h
      shl bl,4
      or bl,cl
      
      jmp exit
      
      
       
      
      
      
     ; 
;      sub ch,37h
;      shl bl,4
;      or bl,ch 
;      
      
      ;mov ah,9
;      lea dx,msg3
;      int 21h 
      
     ; mov ah,2
;      mov dl,bl
;      int 21h
     
      ;
;       xor bl,bl
;       
;      sub cl,30h
;      shl bl,4
;      or bl,cl
      
      ;mov ah,2
;      mov dl,bl
;      int 21h 
       
      
     
exit:
     mov ah,4ch
     int 21h
     
     
main endp
end main             