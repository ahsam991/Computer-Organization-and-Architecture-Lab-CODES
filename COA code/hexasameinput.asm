 .model small
.stack 100h
.data 

.code

main proc
    mov bl,0h
    mov ah,1
    int 21h
   
    
    cmp al,39h
    jle one
    
    cmp al,46h
    jle two 
    
   
  
    
    jmp exit
    
    
    one:
    
    sub al,30h
    shl bl,4
    or bl,al
    
    int 21h
    cmp al,39h
    jle l1
     cmp al,46h
    jle l2 
    
    
    jmp exit
    
    l1: 
    sub al,30h
    shl bl,4
    or bl,al
    jmp exit
    
    
    l2:
    sub al,37h
    shl bl,4
    or bl,al
    jmp exit
   
    
    
    two: 
     sub al,37h
    shl bl,4
    or bl,al
   
    
    int 21h
    cmp al,39h
    jle l3
      cmp al,46h
    jle l4 
    
    
    jmp exit
     
    l3: 
    sub al,30h
    shl bl,4
    or bl,al
    jmp exit
  
    
    l4:
    sub al,37h
    shl bl,4
    or bl,al
   
    jmp exit
    
            
            
    exit:
    mov ah,4ch
    int 21h
    


