

/*

ord_ins(+Lista, -R)
  es cierto si R unifica con una lista
  que contiene los elementos de Lista
  ordenados de menor a mayor.
  
  
  + : la variable tiene que estar instanciada
  - : la variable tiene que estar libre
  ? : la variable puede estar libre o instanciada

*/


ord_ins([], []).

ord_ins([Cab|Resto], R2):-
  ord_ins(Resto, R),
  insertar_ord(Cab, R, R2).
  
  
/*  
  
insertar_ord(+E, +Lista, -R)
  es cierto si R unifica con una lista
  que contiene los elementos de Lista
  (es una lista ordenada), con E insertado
  en la posición correcta.  
  
*/  

insertar_ord(E, [], [E]).

insertar_ord(E, [Cab|Resto],[Cab|R]):-
   E > Cab,
   insertar_ord(E,Resto, R).
   
   
   
   
insertar_ord(E, [Cab|Resto],[E,Cab|Resto]):-
  E =< Cab.
   
   
   
   













