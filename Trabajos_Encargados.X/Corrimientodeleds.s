;--------------------------------------------------------------
; PRACTICA1: Corrimiento de Leds
; FECHA: 14/01/2023
; AUTORA: GABRIELA ALESSANDRA VILCHEZ YACILA
; Programa que permite realizar un corrimiento de leds conectados al puerto C, con un retardo 
; de 500 ms en un numero de corrimientos pares y un retardo de 250ms en un numero de corrimientos impares.
;------------------------------------------------------------------  
PROCESSOR 18F57Q84
#include "Bit_Config.inc" /*config statements should precede project file includes.*/
#include <xc.inc>
#include "Retardos.inc"

    
PSECT resetVect,class=CODE,reloc=2
resetVect:
    goto Main
    
PSECT CODE
 
Main:
    ;Llamamos a las subrutinas
    CALL Config_OSC,1 
    CALL Button
    CALL Corrimiento
    CALL Loop ;Llamamos al ciclo para que prendan los leds
    NOP
Loop:
    BTFSS PORTA,3,1
    goto Par_Impar
    Off:
    BCF TRISE,1,0
    BCF LATE,1,0
    BCF TRISE,1,0
    BCF LATE,1,0
    BCF TRISC,0,0
    BCF LATC,0,0
    BCF TRISC,1,0
    BCF LATC,1,0
    BCF TRISC,2,0
    BCF LATC,2,0
    BCF TRISC,3,0
    BCF LATC,3,0
    BCF TRISC,4,0
    BCF LATC,4,0
    BCF TRISC,5,0
    BCF LATC,5,0
    BCF TRISC,6,0
    BCF LATC,6,0
    BCF TRISC,7,0
    BCF LATC,7,0
    GOTO Loop
   Par_Impar:
    BCF TRISE,1,0
    BSF LATE,1,0
    BCF TRISE,1,0
    BCF LATE,0,0
    
    BCF TRISC,0,0
    BCF LATC,0,0
    
    BCF TRISC,1,0
    BSF LATC,1,0
    
    BCF TRISC,2,0
    BCF LATC,2,0
    
    BCF TRISC,3,0
    BCF LATC,3,0
    
    BCF TRISC,4,0
    BCF LATC,4,0
    
    BCF TRISC,5,0
    BCF LATC,5,0
    
    BCF TRISC,6,0
    BCF LATC,6,0
    
    
    BCF TRISC,7,0
    BCF LATC,7,0
    
    
    BTFSS PORTA,3,1
    GOTO Loop
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    
    
    BCF TRISC,0,0
    BCF LATC,0,0
    
    BCF TRISC,1,0
    BCF LATC,1,0
    
    BCF TRISC,2,0
    BCF LATC,2,0
    
    BCF TRISC,3,0
    BSF LATC,3,0
    
    
    BCF TRISC,4,0
    BCF LATC,4,0
    
    
    BCF TRISC,5,0
    BCF LATC,5,0
    
    
    BCF TRISC,6,0
    BCF LATC,6,0
    
    
    BCF TRISC,7,0
    BCF LATC,7,0
    
    BTFSS PORTA,3,1
    GOTO Loop
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    
    
    BCF TRISC,0,0
    BCF LATC,0,0
    
    
    BCF TRISC,1,0
    BCF LATC,1,0
    
    
    BCF TRISC,2,0
    BCF LATC,2,0
    
    BCF TRISC,3,0
    BSF LATC,3,0
    
    BCF TRISC,4,0
    BCF LATC,4,0
    
    
    BCF TRISC,5,0
    BCF LATC,5,0
    
    BTFSS PORTA,3,1
    GOTO Loop
    BCF TRISC,6,0
    BCF LATC,6,0
    
   
    BCF TRISC,7,0
    BCF LATC,7,0
    
    BTFSS PORTA,3,1
    GOTO Loop
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    
    
    BCF TRISC,0,0
    BCF LATC,0,0
    
    
    BCF TRISC,1,0
    BCF LATC,1,0
    
    BCF TRISC,2,0
    BCF LATC,2,0
    
 
    BCF TRISC,3,0
    BCF LATC,3,0
    
    BCF TRISC,4,0
    BCF LATC,4,0
    
    BCF TRISC,5,0
    BSF LATC,5,0
    
    BCF TRISC,6,0
    BCF LATC,6,0
    
    BCF TRISC,7,0
    BCF LATC,7,0
    
    BTFSS PORTA,3,1
    GOTO Loop
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    
    
    BCF TRISC,0,0
    BCF LATC,0,0
    
    BCF TRISC,1,0
    BCF LATC,1,0
    
    BCF TRISC,2,0
    BCF LATC,2,0
   
    BCF TRISC,3,0
    BCF LATC,3,0
    
    BCF TRISC,4,0
    BCF LATC,4,0
    
    BCF TRISC,5,0
    BCF LATC,5,0
    
    BCF TRISC,6,0
    BCF LATC,6,0
    
    
    BCF TRISC,7,0
    BSF LATC,7,0
    
    BTFSS PORTA,3,1
    GOTO Loop
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    
    
    BCF TRISE,0,0
    BSF LATE,0,0
    BCF TRISE,1,0
    BCF LATE,1,0
    
    BCF TRISC,0,0
    BSF LATC,0,0
    
    BCF TRISC,1,0
    BCF LATC,1,0
    
    BCF TRISC,2,0
    BCF LATC,2,0
    
    BCF TRISC,3,0
    BCF LATC,3,0
    
    BCF TRISC,4,0
    BCF LATC,4,0
    
    BCF TRISC,5,0
    BCF LATC,5,0
    
 
    BCF TRISC,6,0
    BCF LATC,6,0
    
    
    BCF TRISC,7,0
    BCF LATC,7,0
    
    BTFSS PORTA,3,1
    GOTO Loop
    CALL Delay_250ms,1
    
    BCF TRISC,0,0
    BCF LATC,0,0
    
    BCF TRISC,1,0
    BCF LATC,1,0
    
    BCF TRISC,2,0
    BSF LATC,2,0
    
    BCF TRISC,3,0
    BCF LATC,3,0
    
    
    BCF TRISC,4,0
    BCF LATC,4,0
    
    
    BCF TRISC,5,0
    BCF LATC,5,0
    
    BCF TRISC,6,0
    BCF LATC,6,0
    
    BCF TRISC,7,0
    BCF LATC,7,0
    
    BTFSS PORTA,3,1
    GOTO Loop
    CALL Delay_250ms,1
    
    BCF TRISC,0,0
    BCF LATC,0,0
    
    
    BCF TRISC,1,0
    BCF LATC,1,0
    
    BCF TRISC,2,0
    BCF LATC,2,0
    
    BCF TRISC,3,0
    BCF LATC,3,0
    
    
    BCF TRISC,4,0
    BSF LATC,4,0
    
    BCF TRISC,5,0
    BCF LATC,5,0
    
    BCF TRISC,6,0
    BCF LATC,6,0
    
    BCF TRISC,7,0
    BCF LATC,7,0
    
    BTFSS PORTA,3,1
    GOTO Loop
    CALL Delay_250ms,1
    
   BCF TRISC,0,0
    BCF LATC,0,0
    
    BCF TRISC,1,0
    BCF LATC,1,0
    
    BCF TRISC,2,0
    BCF LATC,2,0
    
    BCF TRISC,3,0
    BCF LATC,3,0
    
    BCF TRISC,4,0
    BCF LATC,4,0
    
    BCF TRISC,5,0
    BCF LATC,5,0
    
    BCF TRISC,6,0
    BSF LATC,6,0
    
    BCF TRISC,7,0
    BCF LATC,7,0
      
    BTFSS PORTA,3,1
    GOTO Loop
    CALL Delay_250ms,1
    GOTO Par_Impar
    
 Button:
    BANKSEL PORTA
    CLRF PORTA,1
    CLRF ANSELA,1
    BSF TRISA,3,1
    BSF LATA,3,1
    BSF WPUA,3,1
    RETURN
;Configuramos Oscilador
Config_OSC: ;4Mhz
    BANKSEL OSCCON1
    MOVLW 0x60
    MOVWF OSCCON1,1
    MOVLW 0x02
    MOVWF OSCFRQ,1
    RETURN
 ;Configuramos el puerto C    
 Corrimiento:
    BANKSEL PORTC  
    CLRF PORTC,0
    CLRF ANSELC,0
    RETURN 
    
END resetVect


