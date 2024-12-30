# ID= AB-CDEFG-H=19-40128-1
.MODEL      SMALL
.STACK      300H
.DATA

WORD1 DW 20
MSG DB 'i want to be a good human!'


main proc
MOV AX, 1940h 
MOV BX, 1281h
XCHG AH, AL 
XCHG BH, BL
ADD AL, 19h
ADD BH, 15h 
SUB AX, BX
INC AX
DEC BX
NEG AX
NEG BX
MOV  DX,WORD1
LEA  DX,MSG
main endp
END main
              
              
              
    