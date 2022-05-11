

/*

anchura(+A, -Lista)
  es cierto si Lista unifica con las etiquetas
  de A en el orden del recorrido en anchura.
  
*/


anchura(a(Et, ListaHijos), [Et|R]):-
  anchura(ListaHijos, R).

/*

anchura(+ListaArboles, R)
  es cierto si R unifica con las etiquetas de la
  lista de árboles genéricos ListaArboles ordenadas
  por el recorrido en anchura.
  
*/  

anchura([], []).
anchura([a(Et, ListaArboles)|Resto], [Et|R]):-
  append(Resto, ListaArboles, L2),
  anchura(L2, R).


arbol1(
        a(1, [a(2,[a(5,[a(10,[])]), a(6,[])]), a(3,[a(7,[])]), a(4,[a(8,[]),a(9,[])])])

       ).
