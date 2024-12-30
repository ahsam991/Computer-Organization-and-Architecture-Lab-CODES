.MODEL SMALL
.STACK 100h
.DATA  

.CODE

MAIN PROC

    MOV AX,@DATA
    MOV DS,AX
     
     
     
    MOV ax,-1
    cmp ax,0
    JL Condition 
    jmp EXIT
    
    Condition:
    mov bx,0FFFFH
   
        
Exit:
    MOV AH,4CH
    INT 21h


    MAIN ENDP
    END MAIN