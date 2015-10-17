
%sismo(fecha,hora,cuidad,pais,distancia,magnitud,longitud,latitud).
%tsunami(fecha, hora, cuidad, pais, riesgo, estado, referencia).

%sismo('01-01-2015','10:00','Illapel','Chile',34,4.3,78,56).
%tsunami(fecha, hora, cuidad, pais, riesgo, estado, referencia).


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

/*Paises con zona de riesgo roja*/
riesgo('Chile',_,'Alto').
riesgo('Peru',_,'Alto').
riesgo('Ecuador',_,'Alto').
riesgo('Colombia',_,'Alto').
riesgo('Panama',_,'Alto').
riesgo('Costa Rica',_,'Alto').
riesgo('Nicaragua',_,'Alto').
riesgo('El Salvador',_,'Alto').
riesgo('Honduras',_,'Alto').
riesgo('Guatemala',_,'Alto').
riesgo('Mexico',_,'Alto').
riesgo('Estados Unidos','Alaska','Alto').
riesgo('Canada','Columbia Britanica','Alto').
riesgo('Marruecos',_,'Alto').
riesgo('Portugal',_,'Alto').
riesgo('Grecia',_,'Alto').
riesgo('Turkia',_,'Alto').
riesgo('Pakistan','Sindh','Alto').
riesgo('Pakistan','Punyab','Alto').
riesgo('India',_,'Alto').
riesgo('Bangladesh',_,'Alto').
riesgo('Tailandia',_,'Alto').
riesgo('Indonesia',_,'Alto').
riesgo('China','Pekin','Alto').
riesgo('China','Shanghai','Alto').
riesgo('China','Shandong','Alto').
riesgo('China','Zhejiang','Alto').
riesgo('China','Fujian','Alto').
riesgo('China','Jiangxi','Alto').
riesgo('Taiwan',_,'Alto').
riesgo('Hong Kong',_,'Alto').
riesgo('Filipinas',_,'Alto').
riesgo('Birmania',_,'Alto').
riesgo('Rusia','Krai de Primorie','Alto').
riesgo('Rusia','Krai de Jabarovsk','Alto').
riesgo('Rusia','Oblast de Magadan','Alto').
riesgo('Rusia','Krai de Kamchatka','Alto').
riesgo('Rusia','Chukotka','Alto').
riesgo('Korea Del Sur',_,'Alto').
riesgo('Japon',_,'Alto').
riesgo('Nueva Guinea',_,'Alto').

/*Paises con zona de riesgo anaranjada*/
riesgo('Estados Unidos','California','Medio').
riesgo('Estados Unidos','Oregon','Medio').
riesgo('Estados Unidos','Washington','Medio').
riesgo('Venezuela',_,'Medio').
riesgo('Belice',_,'Medio').
riesgo('España',_,'Medio').
riesgo('Cuba',_,'Medio').
riesgo('Haiti',_,'Medio').
riesgo('Republica Dominicana',_,'Medio').
riesgo('Puerto Rico',_,'Medio').
riesgo('Francia',_,'Medio').
riesgo('Italia',_,'Medio').
riesgo('Algeria',_,'Medio').
riesgo('Libia',_,'Medio').
riesgo('Egipto',_,'Medio').
riesgo('Tunez',_,'Medio').
riesgo('Madagascar',_,'Medio').
riesgo('Turquia',_,'Medio').
riesgo('Iran',_,'Medio').
riesgo('Korea Del Norte',_,'Medio').
riesgo('Vietnam',_,'Medio').
riesgo('Singapur',_,'Medio').
riesgo('Malasia',_,'Medio').
riesgo('Australia',_,'Medio').
riesgo('Nueva Zelanda',_,'Medio').
riesgo('Oman',_,'Medio').
riesgo('Emiratos Arabes',_,'Medio').

/*Paises con zona de riesgo amarillo*/
riesgo('Canada','Terranova y Labrador','Bajo').
riesgo('Canada','Nuevo Brunswick','Bajo').
riesgo('Canada','Nueva Escocia','Bajo').
riesgo('Canada','Quebec','Bajo').
riesgo('Estados Unidos','Wisconsin','Bajo').
riesgo('Estados Unidos','Ilinois','Bajo').
riesgo('Estados Unidos','Kentucky','Bajo').
riesgo('Estados Unidos','Tennessee','Bajo').
riesgo('Estados Unidos','Misisipi','Bajo').
riesgo('Estados Unidos','Alabama','Bajo').
riesgo('Estados Unidos','Indiana','Bajo').
riesgo('Estados Unidos','Michigan','Bajo').
riesgo('Estados Unidos','Ohio','Bajo').
riesgo('Estados Unidos','Georgia','Bajo').
riesgo('Estados Unidos','Florida','Bajo').
riesgo('Estados Unidos','Carolina Del Sur','Bajo').
riesgo('Estados Unidos','Carolina del Norte','Bajo').
riesgo('Estados Unidos','Virginia','Bajo').
riesgo('Estados Unidos','Pensilvania','Bajo').
riesgo('Estados Unidos','Nueva York','Bajo').
riesgo('Estados Unidos','Massachusetts','Bajo').
riesgo('Estados Unidos','Nuevo Hampshire','Bajo').
riesgo('Estados Unidos','Maine','Bajo').
riesgo('Estados Unidos','Rhode Island','Bajo').
riesgo('Estados Unidos','Connecticut','Bajo').
riesgo('Estados Unidos','Nueva Jersey','Bajo').
riesgo('Estados Unidos','Delaware','Bajo').
riesgo('Estados Unidos','Maryland','Bajo').
riesgo('Estados Unidos','Washington DC','Bajo').
riesgo('Estados Unidos','Virginia Occidental','Bajo').
riesgo('Surinam',_,'Bajo').
riesgo('Guyana',_,'Bajo').
riesgo('Guyana Francesa',_,'Bajo').
riesgo('Irlanda',_,'Bajo').
riesgo('Inglaterra',_,'Bajo').
riesgo('Croacia',_,'Bajo').
riesgo('Albania',_,'Bajo').
riesgo('Montenegro',_,'Bajo').
riesgo('Sudafrica',_,'Bajo').
riesgo('Mozambique',_,'Bajo').
riesgo('Yemen',_,'Bajo').
riesgo('Gales',_,'Bajo').
riesgo('Escocia',_,'Bajo').
riesgo('Camboya',_,'Bajo').

/*Paises con zona de riesgo muy baja o color gris*/
riesgo(X,Y,'Muy Bajo'):- not(riesgo(X,Y,'Alto')),not(riesgo(X,Y,'Medio')), not(riesgo(X,Y,'Bajo')).

%Caso1
alerta(C,P, M, Co,Ni,E, F, Po):- M>=4.0, M=<5.9 ,riesgo(P,C,Ni),zonariesgo4_5(Po, Co, Ni), comparafecha(F, E).
%Caso2
alerta(C,P, M, Co,Ni,E, F, Po):- M>=6.0, M=<7.9 ,riesgo(P,C,Ni),zonariesgo6_7(Po, Co, Ni), comparafecha(F, E).
%Caso3
alerta(C,P, M, Co,Ni,E, F,Po):- M>=8.0, riesgo(P,C,Ni),zonariesgo8(Po, Co, Ni), comparafecha(F, E).

%tsunami(fecha, hora, cuidad, pais, riesgo, estado, referencia).

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
fechaactual(X):- get_date_time_value(year, A), atom_concat(A,'-', F), get_date_time_value(month, A2), atom_concat(F,A2, F2), atom_concat(F2,'-', F3),
get_date_time_value(day, A3), atom_concat(F3,A3, X).

