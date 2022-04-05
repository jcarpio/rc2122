/*
comprime(+Lista, -R)
 es cierto si R unifica con una lista
 de la siguiente forma:
 comprime([a,a,b,b,b,c,d,d], R).
 R= [(a,2), (b,3), (c,1), (d,2)]

 Cuándo primero y segundo son iguales
 [a,a,b,b,b,c,d,d] -> [(a,2), (b,3), (c,1), (d,2)]
   [a,b,b,b,c,d,d] -> [(a,1), (b,3), (c,1), (d,2)]
 
 Cuándo primero y segundo son distintos
 [e,a,a,b,b,b,c,d,d] -> [(e,1),(a,2), (b,3), (c,1), (d,2)]
   [a,a,b,b,b,c,d,d] ->       [(a,1), (b,3), (c,1), (d,2)]
 
 
 */
 
 comprime([],[]).
 comprime([E], [(E,1)]).
 
 comprime([Cab, Cab|Resto], [(Cab,N2)|R]):-    
	comprime([Cab|Resto], [(Cab,N)|R]), N2 is N+1.
 
 comprime([Cab, Cab1|Resto], [(Cab,1)|R]):-
    Cab \= Cab1, 
	comprime([Cab1|Resto], R).


/*
mas_veces(+Lista, -Elem, -N)
  es cierto si Elem unifica con el número
  que se repite más veces en Lista y N
  unifica con el número de veces que se
  repite.  
*/

mas_veces(Lista, E, N):- msort(Lista, R),
   comprime(R, R2), mayor(R2, E, N).


/*
  mayor(+Lista, -Elem, -N)
    es cierto si Elem unifica con el elemento
	que se repita más veces en Lista y N
	unifica con el número de veces que se repite


*/

mayor([], _, 0).

mayor([(Cab, N)|Resto], Cab, N):-
  mayor(Resto, _, N2), N > N2.

mayor([(_, N)|Resto], E, N2):-
  mayor(Resto, E, N2), N =< N2.

