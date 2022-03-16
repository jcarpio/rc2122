/*

num_elem(Lista, N)
  es cierto si N unifica con 
  el número de elementos de Lista


*/

num_elem([], 0).

num_elem([_|Resto], R2):-
   num_elem(Resto, R),
   R2 is R + 1.
