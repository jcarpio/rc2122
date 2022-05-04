
:- load_files('crea_ag.pl').
:- load_files('crea_lista.pl').

/* cuenta_nodos_a(+A, -N)
     es cierto si N unifica con el 
	 número de nodos del árbol genérico A.
	 
*/

cuenta_nodos_a(a(_, ListaHijos), R):-
  cuenta_nodos_lh(ListaHijos, RL),
  R is RL + 1.


/*
  cuenta_nodos_lh(+ListaHijos, -N)
     es cierto cuando N unifica con el número
	 de nodos de las lista de árboles genéricos
	 ListaHijos.
*/
	

cuenta_nodos_lh([], 0).
cuenta_nodos_lh([Cab|Resto], R):-
  cuenta_nodos_lh(Resto, RL),
  cuenta_nodos_a(Cab, RCa),
  R is RL + RCa.

  
arbol1( a(1, [a(2,[]), a(3,[]), a(4,[])]) ).

arbol2( a(1, [a(2,[a(5,[]), a(6,[])]), a(3,[]), a(4,[])]) ).   

	
