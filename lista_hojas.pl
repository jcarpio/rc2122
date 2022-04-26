/*

  lista_hojas(+A, -L)
    es cierto si L unifica con una lista
	que contiene las hojas del árbol A.
  
*/


hoja(a(_, nil, nil)).

lista_hojas(A, R):- 
  A = a(E, HI, HD), 
  not(hoja(A)),
  lista_hojas(HI, RI), lista_hojas(HD, RD),
  append(RI, RD, R).  
  
lista_hojas(a(E, nil, nil), [E]).

lista_hojas(nil, []).  
