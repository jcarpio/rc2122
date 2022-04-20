:- load_files('crea_ab.pl').
:- set_prolog_flag(stack_limit, 8_589_934_592).

/*

 crea_lista_random(+N, -L)
   es cierto si L unifica con una
   lista que contiene N valores aleatorios
   entre 0 y N.

*/

crea_lista_random(0, []).
crea_lista_random(N, [Cab|L]):-
  N > 0,
  N2 is N - 1,
  crea_lista_random(N2, L),
  Cab is random(N).

/*

 crea_lista(+N, -L)
   es cierto si L unifica con una lista
   de valores que van desde 1 hasta N,
   ordenados de menor a mayor.

*/





  crea_lista(N, N, []).
  crea_lista(X, N, [X|L]):-
    X < N,
	X2 is X + 1,
	crea_lista(X2, N, L).




  
/*

  pertenece_abb(+Elem, +ABB).
    es cierto si Elem pertecene al arbol 
	binario de búsqueda ABB.

*/

  pertenece_abb(Elem, a(Elem, _, _)).
  
  pertenece_abb(Elem, a(Raiz, AI, _)):-
	Elem < Raiz,
	pertenece_abb(Elem, AI).
	
  pertenece_abb(Elem, a(Raiz, _, AD)):-
	Elem > Raiz,
	pertenece_abb(Elem, AD).	


