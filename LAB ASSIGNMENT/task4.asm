;LAB TASK 4
;Print A to Z 
.model small
.stack 100h
.code

main proc
   
    ;loop code
      
    mov cx ,26
    mov ah ,2
    mov dl,65
   
      
     level1:
     int 21h
     inc dl
     loop level1
           
    exit:
    mov ax,4ch
    int 21h
    main endp
end main



