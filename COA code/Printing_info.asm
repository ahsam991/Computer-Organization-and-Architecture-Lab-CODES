.MODEL SMALL
.STACK 100H     
       
.DATA 

MSG1 DB 'Name: Rakin Sad Aftab $'
MSG2 DB 'ID: 20-41991-1 $'
MSG3 DB 'Email: rakinsadaftab@gmail.com $'
MSG4 DB 'Address: Jatra Bari, Dhaka $'
nl EQU 0AH
cr EQU 0DH  

 
.CODE

MAIN PROC   
    MOV AX,@DATA
    MOV DS,AX                                                                        
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
            
    MOV AH,2
    MOV DL,nl
    INT 21H
    MOV DL,cr
    INT 21H        
            
    MOV AH,9
    LEA DX,MSG2
    INT 21H
   
        
    MOV AH,2
    MOV DL,nl
    INT 21H
    MOV DL,cr
    INT 21H    
    
    MOV AH,9
    LEA DX,MSG3
    INT 21H
   
    
    MOV AH,2
    MOV DL,nl
    INT 21H
    MOV DL,cr
    INT 21H
    
    MOV AH,9
    LEA DX,MSG4
    INT 21H

    
EXIT:
    MOV AX,4CH
    INT 21H 
    
    MAIN ENDP
    END MAIN
