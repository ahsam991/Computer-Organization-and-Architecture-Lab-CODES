.model small
.stack 100h
.code
main proc

mov ax,625
mov cx,0
mov dx,0

check:
cmp ax,0
je print

mov bx,10
div bx
push dx
inc cx

mov dx,0
jmp check

print:
cmp cx,0
je exit
pop dx
add dx,48

mov ah,2
int 21h
dec cx
jmp print

exit:
mov ah,4ch
int 21h
main endp 
end main