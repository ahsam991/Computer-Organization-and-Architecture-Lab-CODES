.MODEL SMALL
.STACK 100h
.DATA

MSG DB 0AH,0DH,'HELLO WORLD$'

.CODE

MAIN PROC

    MOV AX,@DATA
    MOV DS,AX

    MOV CX,1

    PRINT_LOOP:
  
        LEA DX, MSG.
        MOV AH, 9
        INT 21h
        

        JG PRINT_LOOP 

    Exit:
        MOV AH,4CH
        INT 21h


        MAIN ENDP
        END MAIN


