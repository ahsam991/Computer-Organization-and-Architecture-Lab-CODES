.model small
.stack 100h
.data
m db "I love assembly $"

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 09h     
    lea dx, m       
    int 21h         
    
    mov ax, 4C00h   
    int 21h        
main endp
end main
