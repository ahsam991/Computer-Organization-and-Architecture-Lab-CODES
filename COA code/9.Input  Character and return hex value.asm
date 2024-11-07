
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small

.stack 100h

.data 

msg1 db 10,13,'Type a Character:$'

msg2 db 10,13,'The Ascii Code of a Binary Is $'

msg3 db ' in hex is:$'
.code 

main proc 
    
mov ax,@data
mov ds,ax

input:

lea dx,msg1

mov ah,9

int 21h

mov ah,1

int 21h 

mov bl,al

cmp bl,0dh 

je end 

lea dx,msg2 

mov ah,9

int 21h 

mov dl,bl

mov ah,2

int 21h 

lea dx,msg3

mov ah,9

int 21h

mov cx,4

convert:

mov dl,bh
shr dl,1 
shr dl,1
shr dl,1
shr dl,1
cmp dl,9
jbe num 

add dl,55d

jmp display


num: 

add dl,30h 


display:


mov ah,2
int 21h
rcl bx,1 
rcl bx,1
rcl bx,1
rcl bx,1
loop convert 

jmp input 

end:

MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN

ret




