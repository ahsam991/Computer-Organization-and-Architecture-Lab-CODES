
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
.stack 100h
.data
x db 0
y db 0
.code
mov ah,1
mov x,al
mov y,al
int 21h


ret




