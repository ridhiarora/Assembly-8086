;Objective:To add elements of the byte array
;Approach:using loop instruction to calculate the sum

data segment     ;data segment starts
    arr db 1,3,6 ;intialized array with byte elemts
    sum db  ?    ;intialized a byte variable
    data ends    ; data segment ends
code segment
    assume cs:code segment,ds:data segment  ;aasociating segment with segment register
start:
        mov ax,data   ;store data in ax register
        mov ds,ax     ;store ax in associated data segment
        mov al,0      ;intialized al with 00h
        mov cx,3      ;Intialize 3 in cx
        mov si,0      ;intialize 0 in si
next: add al,arr[si]  ;add arr[si] in al
       inc si         ;increment si by 1
       loop next      ;goes back to next until cx is 3
       mov sum,al     ;moves the final value in sum
code ends             ; code segment ends
end start             ;start ends




