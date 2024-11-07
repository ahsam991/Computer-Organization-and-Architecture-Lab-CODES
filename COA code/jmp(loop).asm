
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
.stack 100h

.code
main proc
 first:
 
 mov dl,3 
 add dl,48
 mov ah,2
 int 21h 
 jmp second   
 second: 
 mov dl,4
 add dl,48
 mov ah,2
 int 21h
 jmp first
 
 

ret




