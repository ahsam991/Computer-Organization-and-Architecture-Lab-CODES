NAME "EX-01"

ORG 100H

    MSG1: DB "EQUAL", 0DH,0AH,24H
    MSG2: DB "LESS", 0DH,0AH, 24H
    MSG3: DB "GREATER", 0DH,0AH,24H


    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,30H

 
 CMP BL,5H
 JE EQUAL
 JL LESSS
 JG GREAT
 
 EQUAL: 

      MOV DX,MSG1
      MOV AH,09H
      INT 21H
      RET

 LESSS: 

      MOV DX,MSG2
      MOV AH,09H
      INT 21H
      RET

 GREAT: 

      MOV DX,MSG3
      MOV AH,09H
      INT 21H
      RET 
