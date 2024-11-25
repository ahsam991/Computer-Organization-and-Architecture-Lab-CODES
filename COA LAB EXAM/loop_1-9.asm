.model small
.stack 100h
.data
.code
MAIN PROC
    ; Initialize the data segment
    MOV AX, @data
    MOV DS, AX

    ; Set CX to loop 9 times
    MOV CX, 9
    
    ; Prepare to print characters starting with '1' (ASCII 49)
    MOV AH, 2 ; Function for printing a character
    MOV DL, 49 ; ASCII code for '1'

TOP:
    INT 21h ; Print the current character
    
    ; Print a newline after each character
    MOV DL, 0Dh ; Carriage Return
    MOV AH, 2
    INT 21h
    MOV DL, 0Ah ; Line Feed
    MOV AH, 2
    INT 21h
             
             
    INC DL ; Increment DL to print the next character
    LOOP TOP ; Decrement CX and repeat until CX = 0

    ; Exit program
    MOV AH, 4Ch
    INT 21h
MAIN ENDP
END MAIN
