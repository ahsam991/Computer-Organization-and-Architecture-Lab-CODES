.model small
.stack 100h
.code
main proc 
  mov ah,1
  int 21h
  mov bl,al
  ;int 21h 
  
  ;new line for output
  mov ah,2
  mov dl,0ah
  int 21h
  mov dl,0dh
  int 21h
  
  
  mov ah,2
  mov dl,bl
  int 21h
  
  main endp
end main

