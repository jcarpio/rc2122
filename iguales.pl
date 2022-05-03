/*

iguales(+A1, +A2)
 es cierto si el árbol binario A1 es igual
 al árbol binario A2.

*/

iguales(A, A).


/*

simetricos(+A1, -A2)
 es cierto si el árbol binario A1 es simétrico
 al árbol binario A2.

*/



simetricos(A, B):- espejo(A, B).


/*
simetrico(+A)
  es cierto si A es un árbol simétrico respecto a un 
  eje central.

*/

simetrico(A):- espejo(A, A).



/*

espejo(+A1, +A2)
   es cierto si A1 es un espejo de A2. Es decir,
   si todo lo que está a la izquierda en A1 está
   a la derecha en A2.
   
*/


espejo(nil, nil).

espejo(a(E, HI, HD), a(E, RD, RI)):-
  espejo(HI, RI),
  espejo(HD, RD).


/*

isomorfos(+A1, +A2)
 es cierto si el árbol binario A1 tiene la misma estructura
 que el árbol binario A2 aunque tengan distintas etiquetas.

*/

isomorfos(nil, nil).

isomorfos(a(_, HI1, HD1), a(_, HI2, HD2) ):-
  isomorfos(HI1, HI2),
  isomorfos(HD1, HD2).
  
  
arbol1(a(1, a(2, nil,nil), nil)).
arbol2(a(3, a(4, nil,nil), nil)).
arbol3(a(3, nil, a(4, nil,nil))).
  
 
