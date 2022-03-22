/*

burbuja(L, R)
  es cierto si R unifica con una lista que
  contiene los elementos de L ordenados
  de menor a mayor por el método de burbuja.

*/

burbuja(L, L):- ordenada(L).
burbuja(L, R2):- append(L1, [E1, E2|L2], L),
                E1 > E2,
				append(L1, [E2, E1|L2], R),
                burbuja(R, R2).
		
/*		
ordenada(Lista).
  es cierto si Lista unifica con una lista
  con sus elementos ordenados de menor a mayor.  

*/

ordenada([]).
ordenada([_]).
ordenada([E1, E2|Resto]):- E1 =< E2, ordenada([E2|Resto]).
