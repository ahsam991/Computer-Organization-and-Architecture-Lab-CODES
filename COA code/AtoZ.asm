.MODEL SMALL
.STACK
.DATA
.CODE
    MAIN PROC
        
        MOV BL,41h 
        MOV CX,26 
        
        JMP PRINTAtoZ 
        
        PRINTAtoZ:  
     
           MOV AH,2
           MOV DL,BL
           INT 21H  
          
           MOV DL,0AH
           INT 21H
           MOV DL, 0DH
           INT 21H  
           
           INC BL  
           DEC CX
           JNZ PRINTAtoZ
    Exit:
   	MOV AH,4CH
    INT 21h

    MAIN ENDP
    END MAIN