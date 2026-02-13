; 8051 Assembly code with dual LED and pump control
; P1.0 - Soil moisture sensor input
; P2.0 - Dry soil LED (Red)
; P2.1 - Wet soil LED (Green)
; P2.2 - Water pump control

ORG 0000H
MAIN:
    MOV P1, #0FFH    ; Configure P1 as input
    MOV P2, #00H     ; Configure P2 as output
    
LOOP:
    JB P1.0, DRY_SOIL ; If P1.0 is HIGH (dry soil)
    
    ; Wet soil condition
    CLR P2.0         ; Turn off Dry LED
    SETB P2.1        ; Turn on Wet LED
    SETB P2.2         ; Turn off water pump
    ACALL DELAY      ; Add some delay
    SJMP LOOP
    
DRY_SOIL:
    ; Dry soil condition
    SETB P2.0        ; Turn on Dry LED
    CLR P2.1         ; Turn off Wet LED
    CLR P2.2        ; Turn on water pump
    ACALL DELAY      ; Add some delay
    SJMP LOOP
    
DELAY:               ; Simple delay subroutine
    MOV R0, #200
DELAY1:
    MOV R1, #250
DELAY2:
    DJNZ R1, DELAY2
    DJNZ R0, DELAY1
    RET
    
END