.MODEL SMALL
.STACK 100h
.DATA
  
MSG DB 'o $'       
MSG2 DB 'e$' 

.CODE

MAIN PROC

    MOV AX,@DATA
    MOV DS,AX
     
     
     
    MOV al,2
    
    CMP al,1
    JE Condition
    CMP al,3
    JE Condition
    
    CMP al,2
    JE Condition2
    CMP al,4
    JE Condition2
     
    JMP EXIT
    
    Condition:
    MOV ah,9
    LEA dx,MSG 
    INT 21h 
    JMP EXIT
    
    Condition2:
    MOV ah,9
    LEA dx,MSG2 
    INT 21h 
    JMP EXIT
    
   
        
Exit:
    MOV AH,4CH
    INT 21h


    MAIN ENDP
    END MAIN