;Objective:To add elements of the word array
;Approach:using loop instruction to calculate the sum

data segment     ;data segment starts
    arr dw 41,23,16 ;intialized array with word elemts
    sum dw  ?    ;intialized a  word variable
    data ends    ; data segment ends
code segment
    assume cs:code segment,ds:data segment  ;aasociating segment with segment register
start:
        mov ax,data   ;store data in ax register
        mov ds,ax     ;store ax in associated data segment
        mov ax,0      ;intialized ax with 00h
        mov cx,3      ;Intialize 3 in cx
        mov si,0      ;intialize 0 in si
next: add ax,arr[si]  ;add arr[si] in ax
       add si,2         ;increment si by 2
       loop next      ;goes back to next until cx is 3
       mov sum,ax     ;moves the final value in sum
code ends             ; code segment ends
end start             ;start ends






