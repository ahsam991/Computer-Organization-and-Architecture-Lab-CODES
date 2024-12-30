;a peogram to print a character 10 times on the screen
;the characetr to print will be an input from the user

.MODEL SMALL

.STACK 100H

.DATA
;all variables

       WELCOMEMSG DB 'Welcome to my program. Please enter a prinable character: $'

.CODE

  MAIN PROC
    ;load data segment address into DS through AX
    MOV AX,@DATA 
    MOV DS, AX
    ;now print the welcome message and ask for an input
    LEA DX, WELCOMEMSG
    MOV AH,9
    INT 21H
    ;now accept input
    MOV AH, 1
    INT 21H
    ;now collect the input from AL

    MOV BL,AL

    ;now print the character in BL 10 times 

    MOV AH,2
    MOV DL, 50
    INT 21H
    MOV DL, 13
    INT 21H 

    MOV CX,50
    MOV AH,2
    MOV DL,BL


    PRINT:
    DEC CX
    INT 21H
    JNZ PRINT

    ;exit to DOS routine

    EXITTOODOS:

       MOV AX,4CH
       INT 21H

    MAIN ENDP
    END MAIN
