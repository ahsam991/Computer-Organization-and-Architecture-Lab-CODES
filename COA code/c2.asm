.MODEL SMALL
.STACK 100H
.DATA
vow db "Vowel$"
cons db "Constant$" 
input db "e$"
.CODE  
MAIN PROC 
    mov ax, @data
    mov dS,ax 
  

    
MOV AL, input
jmp compA  

compA:
cmp al,061h
je vol
jne compE


compE:
cmp al, 065h 
je vol
jne compO

compI:
cmp al, 069h 
je vol
jne compO   

compO:
cmp al, 06fh 
je vol
jne compU 

compU:
cmp al, 075h 
je vol
jne else



vol:
MOV Ah, 9
LEA DX, vow
int 21h
jmp END 



else:
MOV Ah, 9
lea dx, cons
int 21h
jmp END

END:
     MOV AH,4CH
     INT 21H     
     MAIN ENDP