
/*
  crea_ag(+ListaEt, -A)
    es cierto si A unifica con un árbol
	genérico que contiene todas las etiquetas
	de ListaEt.
*/


crea_ag([E], a(E, [])).

crea_ag(L, a(Cab, [RR]) ):-
  length(L, LL),
  LL > 1,
  L = [Cab|Resto],
  crea_ag(Resto, RR).
  
/*

 crea_ag2(+ListaEt, -A)
    es cierto si A unifica con un árbol
	genérico que contiene todas las etiquetas
	de ListaEt con un máximo de dos hijos por nivel.


*/  
  
crea_ag2([E], a(E,[]) ).  

crea_ag2([E1, E2], a(E1, [a(E2,[])]) ). 

crea_ag2(Lista, a(Cab, [A1, A2]) ):-
  Lista = [Cab|Resto],
  length(Lista, LL),
  LL > 2,
  LR is LL - 1,
  Mitad is LR div 2,
  length(L1, Mitad),
  append(L1, L2, Resto),
  crea_ag2(L1, A1),
  crea_ag2(L2, A2).
  
  
/*

 crea_ag(+N, +ListaEt, -A)
    es cierto si A unifica con un árbol
	genérico que contiene todas las etiquetas
	de ListaEt con un máximo de N hijos por nivel.

*/

/*
crea_sub_list(+N, +L, -R)
  es cierto si R unifica con una lista que 
  contiene los elementos de L separados
  en listas de tamaño L. La última lista puede 
  ser más pequeña.
  
*/

crea_sub_list(N, L, [L]):-
  length(L, LL),
  LL =< N.
