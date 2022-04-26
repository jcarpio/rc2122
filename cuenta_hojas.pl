

/*

  cuenta_hojas(+Arbol, -N)
  es cierto si N unifica con el número
  de hojas de Arbol.
  
*/

hoja(a(_, nil, nil)).

cuenta_hojas(nil, 0).

cuenta_hojas(A, 1):- hoja(A).

cuenta_hojas(A, R):- A=a(_, HI, HD), not(hoja(A)),
  cuenta_hojas(HI, RI),
  cuenta_hojas(HD, RD),
  R is RI + RD.
