data segment
    ar db  21h,32h,11h,9h,71h 
    find db 52h 
    
 data ends
code segment 
    assume cs:code segment,ds:data segment
    start:
         mov ax,data
         mov ds,ax
         mov cx,5
         mov si,0
   loop:
        mov al,ar[si]
        cmp al,find
        je ans
        inc si
        dec cx
        jnz loop
        
        mov bl,00h
        mov ax,4c00h
        int 21h
  
  ans:
       mov bl,al
       mov ax,4c00h
       int 21h
 code ends
 end start 
                   
    