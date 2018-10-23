data segment
    packed db  88h,91h,32h,54h
    unpacked db ?
data ends
code segment
    assume cs:code segment,ds:data segment
        start:
              mov ax,data
              mov ds,ax
              mov si,0
              mov cx,4 
         loop1:mov ax,0
              mov al,packed[si]
              shl ax,4 
              shr al,4
              mov unpacked[si],al
              mov unpacked[si]+1,ah
              inc si
              dec cx
              jnz loop1
code ends
end start              
                   