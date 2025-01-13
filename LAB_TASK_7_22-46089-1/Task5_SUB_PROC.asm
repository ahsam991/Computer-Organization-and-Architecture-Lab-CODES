.model small
.stack 100h

.data   
input1 db ?
input2 db ?
msg1 db "Enter 2 nums: $"
msg2 db 10, 13, "Result: $"
.code
main proc 
    mov ax, @data
    mov ds, ax
    
    call input
    call output
        
    mov ah, 4ch
    int 21h
main endp   


input proc 
    mov ah, 9
    lea dx, msg1
    int 21h
        
    mov ah, 1
    int 21h
    mov bl, al
    int 21h
    mov bh, al
        
    ret 
input endp
        
output proc
    sub bl, bh
    add bl, 48
        
    mov ah, 9
    lea dx, msg2
    int 21h
        
    mov ah, 2
    mov dl, bl
    int 21h 
    
    ret 
output endp
    
end main
    