CRA
STA $FA
STA $FE
STA $FD
STA $ED
ITA
CRF
ROL
STA $EE
CRF
ROL
CRF
ROL
CTA
ITA
STA $FF
STA $FB
ISZ $EE
BUCLE CRA
ADD $FD
STAI $FD 
ISZ $FD
ISZ $FB
JMP BUCLE

CRF ; caso positivo, reiniciar el Flip-Flop y continuar...
WHILE SFZ ; Flip-Flop == 0? True ? False 1:encontrado 0:!encontrado
JMP ENCONTRADO
CRA
ADD $FD
CTA
ITA
ADD $FE ; dirección inicial- dirección final
CRF
ROL
SFZ ; f==0? ... ... bajo <= alto?
JMP BUSCAR ; bajo <= alto then buscar
JMP FIN ; no encontrado :(
BUSCAR CRA
ADD $FE ; suma la dirreción inicial
ADD $FD ; suma  la dirección final
CRF
ROR ; (bajo + alto) / 2
STA $ED ; medio = (bajo + alto) / 2
CRA
ADDI $ED ; trae el elemento que se encuentra al medio de la lista ... lista[medio]
CTA
ITA
ADD $EE
CRF
ROL
SFZ
JMP NEGATIVO
ROR
CTA
STA $FC 
ISZ $FC 
JMP POSITIVO
ENCONTRADO CRA
ITA
STA $FA
CRF ; Flip-Flop <- 0
CTF ; Flip-Flop <- 1 porque se encontró, NO NECESARIO porque $FA guarda el resultado
JMP FIN
NEGATIVO CRA
CTA ; -1
ADD $ED ; medio
STA $FD ; alto = medio - 1
CRF
JMP WHILE
POSITIVO CRA
ADD $ED ; medio
ITA
STA $FE ; bajo = medio + 1
CRF
JMP WHILE
FIN HTL ; 'さようなら'
