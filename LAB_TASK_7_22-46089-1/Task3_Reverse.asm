.MODEL SMALL
.STACK 100H                         

.DATA  

NEWLINE DB 0AH,0DH,"$"
MSG1 DB "Before Reverse",0AH,0DH,"$"
MSG2 DB "After Reverse",0AH,0DH,"$"
INPUT DB "123$"  

.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    LEA DX, MSG1
    MOV AH, 09H
    INT 21H

    LEA DX, INPUT
    MOV AH, 09H
    INT 21H
    
    LEA SI, INPUT        
    MOV CX, 03H          
    XOR BX, BX           
    
    REVERSE_LOOP:
        MOV AL, [SI]     
        PUSH AX          
        INC SI           
        LOOP REVERSE_LOOP

    LEA DX, NEWLINE
    MOV AH, 09H
    INT 21H

    LEA DX, MSG2
    MOV AH, 09H
    INT 21H

    MOV CX, 03H          
    MOV AH, 02H          

    POP_LOOP:
        POP AX           
        MOV DL, AL       
        MOV AH, 02H      
        INT 21H          
        LOOP POP_LOOP    

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
