/*
 balanceado(+Arbol)
   es cierto si para todo nodo de Árbol
   la diferencia entre la altura del sub-arbol
   izquierdo y el sub-arbol derecho es como
   máximo 1.
*/

balanceado(nil).

balanceado(a(_, HI, HD)):-
  altura(HI, AI),
  altura(HD, AD),
  D is AI - AD,
  D2 is abs(D),
  D2 =< 1,
  balanceado(HI),
  balanceado(HD).

/*
altura(+Arbol, -Alt)
  es cierto si Alt unifica con la altura de Arbol.
  
     1
    / \   
   2   3
      / \
     4   5
	      \
		   6 
		   
   Atura = 3
  
*/


altura(nil, 0).

altura(a(_, HI, HD), R):-
  altura(HI, AI),
  altura(HD, AD),
  A is max(AI, AD),
  R is A + 1.
  
