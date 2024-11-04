org 100h              ; Origin directive for .COM files

section .data
    message db 'Assembly Language$', 0  ; Message to print
    predefinedInput db 'X$'              ; Predefined input
    prompt db 'Enter a character: $', 0  ; Prompt for user input
    newline db 13, 10, '$'                ; Newline characters
    buffer db 2 dup(0)                    ; Buffer for user input

section .code
start:
    ; Print "Assembly Language"
    mov ah, 09h                     ; DOS function to print string
    lea dx, message                 ; Load address of message
    int 21h                         ; Call DOS interrupt

    ; Print a newline
    lea dx, newline                 ; Load newline characters
    int 21h                         ; Call DOS interrupt

    ; Show predefined input
    mov ah, 09h                     ; Print predefined input
    lea dx, predefinedInput         ; Load address of predefined input
    int 21h                         ; Call DOS interrupt

    ; Print a newline
    lea dx, newline                 ; Load newline characters
    int 21h                         ; Call DOS interrupt

    ; Prompt for user input
    mov ah, 09h                     ; Print prompt
    lea dx, prompt                  ; Load address of prompt
    int 21h                         ; Call DOS interrupt

    ; Read first character
    mov ah, 01h                     ; Function to read character
    int 21h                         ; Call DOS interrupt
    mov buffer[0], al               ; Store first character

    ; Read second character
    mov ah, 01h                     ; Function to read character
    int 21h                         ; Call DOS interrupt
    mov buffer[1], al               ; Store second character

    ; Display the two characters
    mov ah, 02h                     ; Function to write character
    mov dl, buffer[0]               ; Load first character
    int 21h                         ; Call DOS interrupt
    mov dl, buffer[1]               ; Load second character
    int 21h                         ; Call DOS interrupt

    ; Print a newline
    lea dx, newline                 ; Load newline characters
    int 21h                         ; Call DOS interrupt

    ; Read a character to display A to Z
    mov ah, 01h                     ; Function to read character
    int 21h                         ; Call DOS interrupt
    mov cl, al                      ; Store input character in CL

    ; Display characters from A to Z
    mov bl, 'A'                     ; Start from 'A'

print_loop:
    cmp bl, 'Z'                     ; Compare with 'Z'
    jg end_print                    ; If greater than 'Z', end loop

    mov ah, 02h                     ; Function to write character
    mov dl, bl                      ; Load current character
    int 21h                         ; Call DOS interrupt

    inc bl                          ; Move to the next character
    jmp print_loop                  ; Repeat

end_print:
    ; Print a newline
    lea dx, newline                 ; Load newline characters
    int 21h                         ; Call DOS interrupt

    ; Exit the program
    mov ax, 4C00h                   ; Function to terminate program
    int 21h                         ; Call DOS interrupt
