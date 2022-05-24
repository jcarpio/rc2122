/*
Problemas de Estados
Caníbales y misioneros
1. estado(MD, CD, Barca)
2. Inicial -> estado(3,3, dch)
   Final   -> estado(0,0, izq)
   
3. Movimientos
   mov( llevar(M, C, Dir), EstadoAntes, EstadoDespues ).
*/


   mov( llevar(M, C, izq), estado(MD, CD, dch), estado(MD2, CD2, izq)):-
     llevar(M, C, izq),
     MD2 is MD - M, MD2 >= 0, CD2 is CD - C, CD2 >= 0.
     
    

   mov( llevar(M, C, dch), estado(MD, CD, izq), estado(MD2, CD2, dch)):-
     llevar(M, C, dch),
     MD2 is MD + M, MD2 =< 3, CD2 is CD + C, CD2 =< 3.
	 
	 
llevar(1,0, _).
llevar(0,1, _).
llevar(1,1, _).
llevar(2,0, _).
llevar(0,2, _).



no_valido(estado(1, 3, _)).
no_valido(estado(1, 2, _)).
no_valido(estado(2, 3, _)).
no_valido(estado(2, 1, _)).
no_valido(estado(1, 0, _)).
no_valido(estado(2, 0, _)).



camino(Ei, Ei, _, []).

camino(Ei, Ef, Visitados, [llevar(M,C,Dir)|Camino]):-
  mov(llevar(M, C, Dir), Ei, Etmp),
  \+ no_valido(Etmp),
  \+ member(Etmp, Visitados),
  camino(Etmp, Ef, [Etmp|Visitados], Camino).
  
  
/*
 camino(estado(3,3,dch), estado(0,0,_), [estado(3,3,dch)], Camino).
*/

solucion(Camino):- camino(estado(0,0, dch), estado(3,3,_), [], Camino).



