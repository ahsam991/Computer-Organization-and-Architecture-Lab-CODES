org 100h        
jmp start
msg:db "Hello , World!",0Dh,0Ah,24h 
start: mov dx, msg     ; text mode 80x25, 16 colors, 8 pages (ah=0, al=3)
mov ah, 09h
int 21h

mov ah, 0
int 16h


ret

