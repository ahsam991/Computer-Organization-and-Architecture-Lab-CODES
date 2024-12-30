.MODEL SMALL
.STACK 100h
.DATA  

.CODE

MAIN PROC

    MOV AX,@DATA
    MOV DS,AX
     
     
     
    MOV al,-1
    CMP al,0
    JL Condition 
    JMP Condition2
    
    Condition:
    MOV ah,0FFH
    JMP EXIT
    
    Condition2:
    MOV ah,0H
    
   
        
Exit:
    MOV AH,4CH
    INT 21h


    MAIN ENDP
    END MAIN