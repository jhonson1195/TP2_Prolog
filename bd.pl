
%sismo(fecha,hora,cuidad,pais,distancia,magnitud,longitud,latitud).
%tsunami(fecha, hora, cuidad, pais, riesgo, estado, referencia).

sismo('01-01-2015','10:00','Illapel','Chile',34,4.3,78,56).
sismo('01-01-2015','10:00','SanJose','CostaRica',41,6.3,78,56).
sismo('01-01-2015','10:00','pana','Panama',34,9,78,56).
sismo('01-01-2015','10:00','pana4','Panama4',34,3,78,56).

riesgo('Chile','Illapel','Alto').
riesgo('CostaRica','SanJose','Alto').
riesgo('Panama','pana','Muy bajo').

%Caso1
riesgo_4a5_me_40('Muy bajo', amarillo).
riesgo_4a5_me_40('Bajo', amarillo).
riesgo_4a5_me_40('Medio', naranja).
riesgo_4a5_me_40('Alto', rojo).

riesgo_4a5_ma_40('Muy bajo', 'no genera alerta').
riesgo_4a5_ma_40('Bajo', 'no genera alerta').
riesgo_4a5_ma_40('Medio', amarillo).
riesgo_4a5_ma_40('Medio', naranja).
riesgo_4a5_ma_40('Alto', naranja).

%Caso2

riesgo_6a7_me_40('Muy bajo', 'no genera alerta').
riesgo_6a7_me_40('Bajo', naranja).
riesgo_6a7_me_40('Medio', rojo).
riesgo_6a7_me_40('Alto', rojo).

riesgo_6a7_ma_40('Muy bajo', 'no genera alerta').
riesgo_6a7_ma_40('Bajo', 'no genera alerta').
riesgo_6a7_ma_40('Medio', naranja).
riesgo_6a7_ma_40('Alto', naranja).

%Caso2

riesgo_8_me_40('Muy bajo', amarillo).
riesgo_8_me_40('Bajo', naranja).
riesgo_8_me_40('Medio', rojo).
riesgo_8_me_40('Alto', rojo).

riesgo_8_ma_40('Muy bajo', 'no genera alerta').
riesgo_8_ma_40('Bajo', amarillo).
riesgo_8_ma_40('Medio', naranja).
riesgo_8_ma_40('Alto', rojo).

%Caso0
alerta(C,P, M, Co,Ni,E):- sismo(F,_,C,P,_,M,_,_) , M<4.0, Ni = 'no genera alerta' ,Co ='ninguno', comparafecha(F, E).
%Caso1
alerta(C,P, M, Co,Ni,E):- sismo(F,_,C,P,Po,M,_,_) , M>=4.0, M=<5.9 ,riesgo(P,C,Ni),zonariesgo4_5(Po, Co, Ni), comparafecha(F, E).
%Caso2
alerta(C,P, M, Co,Ni,E):- sismo(F,_,C,P,Po,M,_,_) , M>=6.0, M=<7.9 ,riesgo(P,C,Ni),zonariesgo6_7(Po, Co, Ni), comparafecha(F, E).
%Caso3
alerta(C,P, M, Co,Ni,E):- sismo(F,_,C,P,Po,M,_,_) , M>=8.0, riesgo(P,C,Ni),zonariesgo8(Po, Co, Ni), comparafecha(F, E).



%Caso1
zonariesgo4_5(Po, Co, Ni):- Po<40, riesgo_4a5_me_40(Ni, Co). 
zonariesgo4_5(Po, Co, Ni):- Po>=40, riesgo_4a5_ma_40(Ni, Co).

%Caso2
zonariesgo6_7(Po, Co, Ni):- Po<40, riesgo_6a7_me_40(Ni, Co). 
zonariesgo6_7(Po, Co, Ni):- Po>=40, riesgo_6a7_ma_40(Ni, Co).

%Caso2
zonariesgo8(Po, Co, Ni):- Po<40, riesgo_8_me_40(Ni, Co). 
zonariesgo8(Po, Co, Ni):- Po>=40, riesgo_8_ma_40(Ni, Co).







%Compra las fechas
comparafecha(X, Y):- fechaactual(F), X = F, Y ='Activa',!.
comparafecha(_, Y):- Y = 'Levantada', !.   

get_date_time_value(Key, Value) :- get_time(Stamp), stamp_date_time(Stamp, DateTime, local),date_time_value(Key, DateTime, Value).

%obtiene la fecha actual
fechaactual(X):- get_date_time_value(day, A), atom_concat(A,'-', F), get_date_time_value(month, A2), atom_concat(F,A2, F2), atom_concat(F2,'-', F3),
get_date_time_value(year, A3), atom_concat(F3,A3, X).

