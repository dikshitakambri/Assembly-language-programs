CODE SEGMENT
ASSUME CS:CODE
START: 
        MOV SI,2000H
        MOV DI,4000H
        MOV CX,[SI]
        MOV DX,0000
        MOV AX,0001
BACK:   MUL CX          ;DX:AX <- AX * CX
        LOOP BACK
        MOV [DI],AX
        MOV AX,DX
        MOV [DI+2],AX
        INT 3
        CODE ENDS
        END START
