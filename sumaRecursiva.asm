;def sumar(lista):
;   return 0 if not lista else lista[0] + sumar(lista[1:])

CRA
STA $03
BUCLE CRA
ADDI $01
ADD $03
STA $03
CRA
ADD $02 ; trae la dirección de memoria final de la lista
CTA
ITA
ADD $01
CTA
STA $00 
ISZ $00
JMP REPTIR
CRA 
ADDI $01
ADD $03
STA $03
JMP FIN
REPETIR ISZ $01
JMP BUCLE ; volver a repetir el procedimiento, equivalente a return lista[0] + sumar(lista[1:] en Python
FIN HLT ; 'Hasta la vista, baby ...'
