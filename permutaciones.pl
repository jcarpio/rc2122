/*
 permutaciones(+Lista, -R).
   es cierto si R unifica con cualquier
   permutación de los elementos de Lista.
   Podemos obtener todas las permutaciones
   con ";" y bagof

*/

permutar([], []).
permutar([Cab|Resto], R2):-
  permutar(Resto, R),
  insertar_todas_pos(Cab, R, R2).  

/*
insertar_todas_pos(+Elem, +Lista, -R)
  es cierto si R unica con una lista
  que contiene los elementos de Lista
  con Elem insertado en cualquier posición.
  Podemos obtener todas las posibles inserciones
   con ";" y bagof

*/

insertar_todas_pos(Elem, Lista, [Elem|Lista]).

insertar_todas_pos(Elem, [Cab|Resto],[Cab|R]):-
  insertar_todas_pos(Elem, Resto, R).
