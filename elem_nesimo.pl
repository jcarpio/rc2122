/*

 elem_nesimo(Pos, Lista, Elem)
   es cierto si Elem unifica con 
   el elemento que ocupala posición
   Pos de Lista
*/

elem_nesimo(1, [Cab|_], Cab).

elem_nesimo(Pos, [_|Resto], Elem):-
     Pos > 1,
     Pos2 is Pos - 1,
     elem_nesimo(Pos2, Resto, Elem). 
	 
/*
3	 [1,2,3,4,5]	3

2    [2,3,4,5]

*/
