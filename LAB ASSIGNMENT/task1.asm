;LAB TASK 1
;Print a string "Assembly Language"

.model small
.stack 100h
.data
a db 'Assembly Language $'
.code

main proc
    mov ax, @data
    mov ds ,ax
    
    mov ah , 09h
    lea dx , a
    int 21h 
         
    exit:
    mov ax,4ch
        int 21h
    main endp
end main

