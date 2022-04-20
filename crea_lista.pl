:- load_files('crea_ab.pl').
:- set_prolog_flag(stack_limit, 8_589_934_592).

/*

 crea_lista(+N, -L)
   es cierto si L unifica con una lista
   de valores que van desde 1 hasta N,
   ordenados de menor a mayor.

*/


crea_lista(0, []).
crea_lista(N, [N|L]):-
  N > 0,
  N2 is N-1,
  crea_lista(N2, L).
  
  
/*

 crea_lista(+I, +N, -L)
   es cierto si L unifica con una lista
   de valores que van desde 1 hasta N,
   ordenados de menor a mayor.

*/

crea_lista(N, N, []).

crea_lista(I, N, [I|L]):-
  I < N,
  I2 is I + 1,
  crea_lista(I2, N, L).
  


