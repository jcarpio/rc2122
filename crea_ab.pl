/*

cuenta_nodos(+Arbol, -NumNodos)
  es cierto si NumNodos unifica con 
  el número de nodos del árbol binario 
  Arbol.

*/

cuenta_nodos(nil, 0).

cuenta_nodos( a(_, HI, HD), R):- cuenta_nodos(HI, RI),
  cuenta_nodos(HD, RD),
  R is RI + RD + 1.
  
arbol1(
  a(1, a(2, a(4, a(7,nil,nil), nil), a(5,nil,nil)), a(3, a(6,nil,nil), nil))
).
  
  
/*

crea_ab(+Lista, -ArbolBinario)
 es cierto si ArbolBinario unifica con
 un árbol binario que contiene los elementos
 de Lista. El árbol resultante es un árbol 
 balanceado.

*/

crea_ab(Lista,  ):-
  length(Lista, L),
  M is L div 2,
  length(L1, M),
  append(L1, [Raiz|L2], Lista),
  crea_ab(L1, AI),
  crea_ab(L2, AD).
