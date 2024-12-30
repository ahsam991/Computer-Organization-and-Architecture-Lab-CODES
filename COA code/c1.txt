.MODEL SMALL
.STACK 100H     
       
.DATA 
MSG2 DB 'First input: $'
MSG3 DB 'Second input: $'
MSG4 DB 'Third input: $'
MSG5 DB 'Summetion: $'
nl EQU 0AH
cr EQU 0DH 

num1 DB ?
num2 DB ?
num3 DB ?
 
.CODE

MAIN PROC   
    MOV AX,@DATA   
    MOV DS,AX                                                                        
    
                  
            
    MOV AH,9
    LEA DX,MSG2 
    INT 21H
    MOV AH,1 
    INT 21H 
    MOV num1,AL
        
    MOV AH,2
    MOV DL,nl
    INT 21H
    MOV DL,cr
    INT 21H    
    
    MOV AH,9
    LEA DX,MSG3
    INT 21H
    MOV AH,1 
    INT 21H
    MOV num2,AL 
    
    MOV AH,2
    MOV DL,nl
    INT 21H
    MOV DL,cr
    INT 21H
    
    MOV AH,9
    LEA DX,MSG4
    INT 21H
    MOV AH,1
    INT 21H
    MOV num3,AL  
    
    
    MOV AH,2
    MOV DL,nl
    INT 21H
    MOV DL,cr
    INT 21H 
    
    mov BL,num1
    add BL,num2
    add BL,num3 
    add bl,0A0h
    
    
    MOV AH,9
    LEA DX,MSG5
    INT 21H  
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
EXIT:
    MOV AX,4CH
    INT 21H 
    
    MAIN ENDP
    END MAIN