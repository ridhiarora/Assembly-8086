;Objective:To add elements of the double word array
;Approach:using loop instruction to calculate the sum

data segment     ;data segment starts
    arr dd 3441,6723,16 ;intialized array with double word elemts
    sum dd  ?    ;intialized a  word variable
    data ends    ; data segment ends
code segment
    assume cs:code segment,ds:data segment  ;aasociating segment with segment register
start:
        mov ax,data   ;store data in ax register
        mov ds,ax     ;store ax in associated data segment
        mov ax,0      ;intialized ax with 0000h 
        mov dx,0      ;intialized dx with 0000h
        mov cx,3      ;Intialize 3 in cx
        mov si,0      ;intialize 0 in si
next: add ax,arr[si]  ;add arr[si] in ax
      adc dx,arr[si+2];add arr[si+2]in dx
       add si,4         ;increment si by 4
       loop next      ;goes back to next until cx is 3
       mov sum,ax    ;moves the final value in sum
       mov sum+2,dx   ;moves higher word value in sum
code ends             ; code segment ends
end start             ;start ends






