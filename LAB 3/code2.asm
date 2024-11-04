.model small
.stack 100h
.data
    a db 'lab task $'
.code

main proc
    ; Initialize the data segment
    mov ax, @data
    mov ds, ax
    
    ; Print the string
    mov ah, 09h          ; Function to print string
    lea dx, a            ; Load the address of the string
    int 21h              ; Call DOS interrupt

    ; Print a new line (CR + LF)
    mov dl, 13           ; Carriage return
    mov ah, 02h          ; Function to write character
    int 21h              ; Call DOS interrupt
    mov dl, 10           ; Line feed
    int 21h              ; Call DOS interrupt
    
    ; Exit the program
    mov ax, 4C00h        ; Function to terminate program
    int 21h              ; Call DOS interrupt
main endp
end main
