
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.code
mov ah,1
m db ?
int 21h
mov ah,9
mov dl,m
int 21h


ret




