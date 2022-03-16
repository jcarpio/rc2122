
mi_reverse([], []).

mi_reverse([Cab|Resto], R2):-
  mi_reverse(Resto, R),
  ins_final(Cab, R, R2).

/*

ins_final(Elem, Lista, R)
  es cierto si R unifica con 
  una lista que contiene los
  elementos de Lista con Elem
  insertado al final.
  
*/


ins_final(Elem, [], [Elem]).

ins_final(Elem, [Cab|Resto], [Cab|R]):-
  ins_final(Elem, Resto, R).
  
/*  
ins_final(1, [2,3,4,5], [2,3,4,5,1])

ins_final(1, [3,4,5], [3,4,5,1])  
*/





