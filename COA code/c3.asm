.MODEL SMALL
.STACK 100h
.DATA

MSG DB '0 $'   
MSG2 DB '1 $'
MSG3 DB '2 $'

.CODE

MAIN PROC

    MOV AX,@DATA
    MOV DS,AX 
    
    mov ax,020h
    mov bx,030h
    mov cx,010h
    
    cmp ax,bx
    JL AXLESSBX
    JMP BXLESSCX
    
    AXLESSBX:
        mov ah,9   
        lea dx,MSG
        int 21h 
        
    BXLESSCX:
        cmp bx,cx
        JL LESS
        JG GREATER
        
    LESS:
         mov ah,9    
        lea dx,MSG2
        int 21h  
        JMP Exit
    
    
    GREATER:
        mov ah,9   
        lea dx,MSG3
        int 21h 
        JMP EXIT
     
    
    
    
    
    

Exit:
    MOV AH,4CH
    INT 21h


    MAIN ENDP
    END MAIN