
/*

  crea_arbol(+I, +N, -Arbol)
  es cierto si Arbol unifica con un árbol
  binario de N nodos con valores desde 
  I hasta N.
  
*/

  crea_arbol(I, I, nil).

  crea_arbol(I, N, a(N,nil,nil) ):-
    1 is N - I.
	
  crea_arbol(I, N, a(N, a(I2, nil, nil),nil) ):-
    2 is N - I,
	I2 is I+1.
	 
  crea_arbol(I, N, a(IMed2, HI, HD)):-
    I < N,
    Int is N - I,
	Int > 2,
	IMed is Int div 2,
	crea_arbol(I, IMed, HI),
	IMed2 is IMed + 1,
	crea_arbol(IMed2, N, HD).
