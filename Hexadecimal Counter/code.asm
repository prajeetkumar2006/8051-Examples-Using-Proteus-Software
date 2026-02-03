ORG 0000H

MOV A, #30H
MOV 30H, A
MOV 39H, #39H
MOV 41H, #41H
MOV 46H, #46H 
ACALL LCD_INIT


PRINT:
	 
    MOV A, 30H
    MOV P3, #80H
    CLR P2.0
    SETB P2.1
    CLR P2.1
    ACALL DELAY
    MOV A, 30H
    MOV P3, A 	
    SETB P2.0
    SETB P2.1
    CLR P2.1
    ACALL DELAY
    INC 30H
    CJNE A, #39H, PRINT
    SJMP HEXA

	

HALT:
    SJMP HALT

LCD_INIT:


    MOV A, #38H
    ACALL COMMAND
    ACALL DELAY
    MOV A, #0EH
    ACALL COMMAND
    ACALL DELAY
    MOV A, #01H
    ACALL COMMAND
    RET
												
COMMAND:
    ACALL DELAY
    MOV P3, A
    CLR P2.0
    SETB P2.1
    CLR P2.1
    RET

DELAY:
    MOV R1, #01H
LOOP1:
    MOV R2, #0FFH
LOOP2:
    MOV R3, #0FFH
LOOP3:
    DJNZ R3, LOOP3
    DJNZ R2, LOOP2
    DJNZ R1, LOOP1
    RET
HEXA:

    MOV A, 41H
    MOV P3, #80H
    CLR P2.0
    SETB P2.1
    CLR P2.1
    ACALL DELAY
    MOV A, 41H
    MOV P3, A 	
    SETB P2.0
    SETB P2.1
    CLR P2.1
    ACALL DELAY
    INC 41H
    CJNE A, #46H, HEXA
    SJMP HALT

END
