.stack 100h
.model small
.data

a dw "Enter upper case char: $"       ;Show massage
b dw "Lower case : $"


.code 
  main proc
    
    mov ax,@data
    mov ds,ax
    
    lea ax,a         
    mov ah,9
    int 21h  
    
    mov ah,1          ;Take input & put it bl register
    int 21h
    mov bl,al
    
    add bl,32
           
           mov ah,2
           mov dl,0ah
           int 21h
           mov dl,0dh        ;Newline
           int 21h
           
    lea dx,b
    mov ah,9
    int 21h
    
          mov ah,2
          mov dl,bl       ;Print result
          int 21h
 main endp
  end main




