.model small
.stack 100h

.data
    msg1 db 'Input: $'
    result db 'The number is: $'
    even_msg db 'Even', 13, 10, '$'
    odd_msg db 'Odd', 13, 10, '$'
    error_msg db 'This is Not a valid number.', 13, 10, '$'

.code
main:
    
    mov ax, @data
    mov ds, ax
    
    
    mov ah,9
    lea dx, msg1
    int 21h
             
             
   
    mov ah,1
    int 21h
    mov bl, al  
    
    
    
    
    cmp bl, '0'      
    jl not_number   
    cmp bl, '9'     
    jg not_number 
    
   
    sub bl, '0'
    
    
    test bl, 1      
    jz even_number  
    
    
    
    ; Odd number
    mov ah,9
    lea dx, odd_msg
    int 21h
    jmp end_program

even_number:
    mov ah,9
    lea dx, even_msg
    int 21h
    jmp end_program

not_number: 

    ; Error message if input is not a valid number
    mov ah,9
    lea dx, error_msg
    int 21h
            
            
end_program:
    mov ah, 4Ch
    int 21h
