.model small
.stack 100h
.data
.code 



main proc  
    
    ;mov AH, 01H
    ;int 21H 
    ;mov BL, AL
    ;mov ah, 02H  
    
    ;MOV BH, 05H
    ;MOV AH, 02H 
    
    ;NEW LINE
    ;mov DL, 0AH
    ;int 21H
    ;mov DL, 0DH  
    ;int 21H    
    
    ;mov DL, BL   
    ;mov DL, BH
    ;ADD DL, 30H 
    ;int 21H 
    
    ;MOV AH, 02H
    ;MOV DL, 'A'
    ;INT 21H 
    
    
    MOV AH, 2
    MOV DL, '*'
    INT 21H   
    
    mov DL, 0AH
    int 21H
    mov DL, 0DH  
    int 21H
    
    ;MOV AH, 2
    MOV DL, '*'
    INT 21H  
   
    
    ;MOV AH, 2
    ;MOV DL, '*'
    INT 21H  
      
    mov DL, 0AH
    int 21H
    mov DL, 0DH  
    int 21H  
    
    ;MOV AH, 2
    MOV DL, '*'
    INT 21H  
    
    ;MOV AH, 2
    ;MOV DL, '*'
    INT 21H
    
    ;MOV AH, 2
    ;MOV DL, '*'
    INT 21H 
    
    mov DL, 0AH
    int 21H
    mov DL, 0DH  
    int 21H
    
    ;MOV AH, 2
    MOV DL, '*'
    INT 21H 
    
    ;MOV AH, 2
    ;MOV DL, '*'
    INT 21H 
    
    mov DL, 0AH
    int 21H
    mov DL, 0DH  
    int 21H
               
    ;MOV AH, 2
    MOV DL, '*'
    INT 21H
    
    ;EXCHANGE
    ;mov bl, 07h
    ;mov bh, 03h
    ;xchg bl, bh  
    ;mov cl,bl
    
    mov AH, 4CH
    INT 21H
