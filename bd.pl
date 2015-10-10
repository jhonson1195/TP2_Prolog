
%sismo(fecha,hora,cuidad,pais,distancia,magnitud,longitud,latitud).
%tsunami(fecha, hora, cuidad, pais, riesgo, estado, referencia).
%riesgo(riesgo, color).
%child_of(joe, ralf).
%sismo('01-01-2015','10:00',ciudad0,pais0,40,6,78,56).
%sismo('01-01-2015 10:00',ciudad1,pais1,41,5,78,56).
%sismo('01-01-2015 10:00',ciudad1,pais1,41,7,78,56).
comprobar(F,H,C,P,Po,M,E):- sismo(F,H,C,P,Po,M,_,_), M>4.0, comparafecha(F, E).

%Compra las fechas
comparafecha(X, Y):- fechaactual(F), X = F, Y ='Activa',!.
comparafecha(_, Y):- Y = 'Levantada', !.   


get_date_time_value(Key, Value) :- get_time(Stamp), stamp_date_time(Stamp, DateTime, local),date_time_value(Key, DateTime, Value).

%obtiene la fecha actual
fechaactual(X):- get_date_time_value(day, A), atom_concat(A,'-', F), get_date_time_value(month, A2), atom_concat(F,A2, F2), atom_concat(F2,'-', F3),
get_date_time_value(year, A3), atom_concat(F3,A3, X).

