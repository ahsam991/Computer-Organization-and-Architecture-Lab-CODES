.MODEL SMALL  
 .STACK 100H   
 .DATA  
   MSG_1  DB  'Enter character : $\'   
   MSG_2  DB  0DH,0AH,'binary form is : $\'    
   MSG_3  DB  0DH,0AH,'ASCII code are : $\'  
.CODE   
   MAIN PROC      
   MOV AX, @DATA        
   MOV DS, AX    
   LEA DX,MSG_1                     
   MOV AH, 9      
   INT 21H       
   MOV AH, 1                         
   INT 21H      
   XOR BX, BX                        
   MOV BL, AL                      
   LEA DX, MSG_2                 
   MOV AH, 9      
   INT 21H       
   XOR BH, BH                        
   MOV CX, 8                        
   MOV AH, 2 
                     
   OUTPUT:                        
   SHL BL, 1                        
   JNC ZERO                       
   INC BH                          
   MOV DL, 31H                   
   JMP DISPLAY 
                    
   ZERO:                          
   MOV DL, 30H                     
   DISPLAY:                          
   INT 21H                   
   LOOP OUTPUT                     
   LEA DX, MSG_3              
   MOV AH, 9      
   INT 21H      
   OR BH, 30H                      
   MOV AH, 2                          
   MOV DL, BH      
   INT 21H       
   MOV AH, 4CH                    
   INT 21H   
    
   MAIN ENDP  
   END MAIN