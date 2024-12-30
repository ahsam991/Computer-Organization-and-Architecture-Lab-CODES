;Write a program that prompts the user to enter a character, and on sub sequent lines prints its 
;ascii code in binary, and the number of 1 bit in its ASCII code.
;User Input: A
;Binary: 0100 0001
;Number of 1s: 2

.MODEL SMALL 
.STACK 100H   
.DATA
   
   MSG_1  DB  'Enter the character : $'   
   MSG_2  DB  'Binary form is : $'    
   MSG_3  DB  'ASCII code are : $'
   
.CODE
     
   MAIN PROC      
   MOV AX, @DATA        
   MOV DS, AX    
   LEA DX, MSG_1                     
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
                      
   OUT:                        
   SHL BL, 1                        
   JNC ZZZERO                       
   INC BH                          
   MOV DL, 31H                   
   JMP DISPLAY
                     
   ZZZERO:                          
   MOV DL, 30H
                        
   DISPLAY:                          
   INT 21H                   
   LOOP OUT                     
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
