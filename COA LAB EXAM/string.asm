;print a string 
.model small 
.stack 100h
.data 
msg1 db 'Assembly language $'
.code

main proc
    mov ax,@data
    mov ds,ax
    
    
    Lea dx,msg1
    mov ah,9
    int 21h
    
    
    main endp
end main