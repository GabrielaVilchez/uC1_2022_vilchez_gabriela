PSECT resetVect,class=CODE,reloc=2
resetVect:
    goto Main
    
PSECT CODE  
 Main:
    CALL Config_OSC,1
    CALL Config_Port,1
    

Led_on:
    BCF	    LATF,3,1	;Led on    
    CALL Delay_250ms
    CALL Delay_250ms
    CALL Delay_250ms
    CALL Delay_250ms
Led_off:	
    BSF	    LATF,3,1	;Led off
    CALL Delay_250ms
    CALL Delay_250ms
    CALL Delay_250ms
    CALL Delay_250ms
    goto    Led_on   
   
Config_OSC:
    ;Configuracion del oscilador interno a una frecuencia  de 4MHz
    BANKSEL OSCCON1
    MOVLW   0x60    ; seleccionamos el bloque del osc interno con  un div:1
    MOVWF   OSCCON1,1
    MOVLW   0x02    ; seleccionamos una frecuencia de 4MHz
    MOVWF   OSCFRQ,1
    RETURN

Config_Port:	;PORT-LAT-ANSEL-TRIS LED:RF3, BUTTON:RA3
    ;Config Led
    BANKSEL PORTF
    CLRF    PORTF,1	;PORTF =0
    BSF	    LATF,3,1	;LATF<3> =1 -Led off
    CLRF    ANSELF,1	;ANSELF<7:0> = 0 -PortF digital 
    BCF	    TRISF,3,1	;TRISF<3> = 0 -RF3 como salida
    
    ;Config Button
     BANKSEL PORTA
     CLRF    PORTA,1	;PORTA <7:0> = 0
     CLRF    ANSELA,1	;portA digital 
     BSF     TRISA,3,1	;RA3 como entrada
     BSF     WPUA,3,1	;Activamos la resistencia pull-up del pin RA3    
     RETURN 
 

END resetVect


