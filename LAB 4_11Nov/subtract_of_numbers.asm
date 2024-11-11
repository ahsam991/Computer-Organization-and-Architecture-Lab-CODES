.model small
.stack 100h      
.data         
message db  " Input First NUmber $"
message2 db " Input Seconf Number $"
;message3 db "  - $"
message4 db "Result $"
.code
    main proc

       mov ax, seg message 
       mov ds, ax        
       mov dx, offset message   ;
       mov ah, 9h
       int 21h      

       mov ah, 1h  ;read character wl input stored in al
       int 21h                                            

       mov bl, al


       mov ah, 0Eh       ;print new line sequence
       mov al, 0Dh
       int 10h
       mov al, 0Ah
       int 10h

       mov ax, seg message2     ;print msg 2
       mov ds, ax
       mov dx, offset message2
       mov ah,9h
       int 21h 

       mov ah, 1h
       int 21h  

       mov cl, al   

       mov ah, 0Eh       ;print new line sequence
       mov al, 0Dh
       int 10h
       mov al, 0Ah
       int 10h

     ;  mov dl, bl
    ;   mov ah, 2h  
    ;   int 21h 


      ; mov ax, seg message3
      ; mov ds, ax
      ; mov dx, offset message3
      ; mov ah,9h
      ; int 21h 

     ;  mov dl, cl
      ; mov ah, 2h 
      ; int 21h 

       mov ax, seg message4
       mov ds, ax
       mov dx, offset message4
       mov ah,9h
       int 21h

       sub bl, 30h    
       sub cl, 30h       ;decimal 


       sub bl, cl       

       add bl, 30h     

       mov dl, bl   
       mov ah, 2h
       int 21h
    endp        ;end main


end main        ;end the program