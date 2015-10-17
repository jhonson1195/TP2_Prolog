
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
riesgo('Alaska',_,'Alto').
riesgo('Canada','British Columbia','Alto').
riesgo('Morocco',_,'Alto').
riesgo('Portugal',_,'Alto').
riesgo('Greece',_,'Alto').
riesgo('Turkia',_,'Alto').
riesgo('Pakistan','Sindh','Alto').
riesgo('Pakistan','Punyab','Alto').
riesgo('India',_,'Alto').
riesgo('Bangladesh',_,'Alto').
riesgo('Thailand',_,'Alto').
riesgo('Indonesia',_,'Alto').
riesgo('China','Pekin','Alto').
riesgo('China','Shanghai','Alto').
riesgo('China','Shandong','Alto').
riesgo('China','Zhejiang','Alto').
riesgo('China','Fujian','Alto').
riesgo('China','Jiangxi','Alto').
riesgo('Taiwan',_,'Alto').
riesgo('Hong Kong',_,'Alto').
riesgo('Philippines',_,'Alto').
riesgo('Burma',_,'Alto').
riesgo('Russia','Primorsky Krai','Alto').
riesgo('Russia','Khabarovsk Krai','Alto').
riesgo('Russia','Magadan Oblast','Alto').
riesgo('Russia','Kamchatka Krai','Alto').
riesgo('Russia','Chukotka','Alto').
riesgo('South Corea',_,'Alto').
riesgo('Japan',_,'Alto').
riesgo('Papua New Guinea',_,'Alto').
riesgo('Solomon Islands',_, 'Alto').
riesgo('Vanuatu', _, 'Alto').
riesgo('Micronesia', _, 'Alto').




/*Paises con zona de riesgo anaranjada*/
riesgo('United States','California','Medio').
riesgo('United States','Oregon','Medio').
riesgo('United States','Washington','Medio').
riesgo('Venezuela',_,'Medio').
riesgo('Belize',_,'Medio').
riesgo('Spain',_,'Medio').
riesgo('Cuba',_,'Medio').
riesgo('Haiti',_,'Medio').
riesgo('Dominican Republic',_,'Medio').
riesgo('Puerto Rico',_,'Medio').
riesgo('France',_,'Medio').
riesgo('Italy',_,'Medio').
riesgo('Algeria',_,'Medio').
riesgo('Libya',_,'Medio').
riesgo('Egypt',_,'Medio').
riesgo('Tunisia',_,'Medio').
riesgo('Madagascar',_,'Medio').
riesgo('Turquia',_,'Medio').
riesgo('Iran',_,'Medio').
riesgo('North Korea',_,'Medio').
riesgo('Vietnam',_,'Medio').
riesgo('Singapur',_,'Medio').
riesgo('Malaysia',_,'Medio').
riesgo('Australia',_,'Medio').
riesgo('New Zealand',_,'Medio').
riesgo('Oman',_,'Medio').
riesgo('Arab Emirates',_,'Medio').
riesgo('New Caledonia', _, 'Medio').

/*Paises con zona de riesgo amarillo*/
riesgo('Barbados',_ ,'Bajo').
riesgo('Tonga', _,'Bajo').
riesgo('Canada','Newfoundland and Labrador','Bajo').
riesgo('Canada','New Brunswick','Bajo').
riesgo('Canada','Nova Scotia','Bajo').
riesgo('Canada','Quebec','Bajo').
riesgo('United States','Wisconsin','Bajo').
riesgo('United States','Ilinois','Bajo').
riesgo('United States','Kentucky','Bajo').
riesgo('United States','Tennessee','Bajo').
riesgo('United States','Misisipi','Bajo').
riesgo('United States','Alabama','Bajo').
riesgo('United States','Indiana','Bajo').
riesgo('United States','Michigan','Bajo').
riesgo('United States','Ohio','Bajo').
riesgo('United States','Georgia','Bajo').
riesgo('United States','Florida','Bajo').
riesgo('United States','South Carolina','Bajo').
riesgo('United States','North Carolina','Bajo').
riesgo('United States','Virginia','Bajo').
riesgo('United States','Pensilvania','Bajo').
riesgo('United States','New York','Bajo').
riesgo('United States','Massachusetts','Bajo').
riesgo('United States','New Hampshire','Bajo').
riesgo('United States','Maine','Bajo').
riesgo('United States','Rhode Island','Bajo').
riesgo('United States','Connecticut','Bajo').
riesgo('United States','New Jersey','Bajo').
riesgo('United States','Delaware','Bajo').
riesgo('United States','Maryland','Bajo').
riesgo('United States','Washington DC','Bajo').
riesgo('United States','West Virginia','Bajo').
riesgo('Surinam',_,'Bajo').
riesgo('Guyana',_,'Bajo').
riesgo('French Guyana',_,'Bajo').
riesgo('Ireland',_,'Bajo').
riesgo('England',_,'Bajo').
riesgo('Croatia',_,'Bajo').
riesgo('Albania',_,'Bajo').
riesgo('Montenegro',_,'Bajo').
riesgo('South Africa',_,'Bajo').
riesgo('Mozambique',_,'Bajo').
riesgo('Yemen',_,'Bajo').
riesgo('Wales',_,'Bajo').
riesgo('Scotland',_,'Bajo').
riesgo('Cambodia',_,'Bajo').
riesgo('Fiji',_,'Bajo').
riesgo('Fiji Islands',_,'Bajo').




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

