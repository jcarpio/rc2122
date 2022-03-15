/*
Aritmética de Peano

Un único símbolo : 0
Un operador, siguiente: s( )

0  -  0
1  - s(0)
2  - s(s(0))
3  - s(s(s(0)))
4  - s(s(s(s(0))))
 ....
 
 suma(X, Y, Z).
   es cierto si Z unifica con
   la suma de X + Y.
 
 Principio de Inducción
 1. P(n0)
 2. Para todo n > n0,
    P(n-1) -> P(n)
	P(N) :- N2 is N-1, P(N2).
 */
 
 suma(0, Y, Y).
 
 suma(s(X), Y, s(R)):-  suma(X, Y, R).
 
 
 resta(X, 0, X).
 resta(X, s(Y), Z):- restar(X, Y, s(Z)).
 
 mul(_, 0, 0).
 mul(X, s(Y), R):- mul(X, Y, Z),
                  suma(Z, X, R).
		  		  

:- use_module(library(clpfd)).


/*

d2p(D, P).
 es cierto si P corresponde con el 
 valor en aritmética de Peano
 del decimal D.


*/

% P(n0)
d2p(0, 0).


% Para todo N > No,
% P(n-1) -> P(N)
% en Prolog
% P(N) :- N2 is N-1, P(N2).


d2p(D, s(P)):- D #> 0, D2 #= D - 1, d2p(D2, P).

/*

1. Lo primero que necesito es una defición que
   relacione las variables del predicado.
   "Es cierto si ..."
   
2. Necesito una solución para el caso más pequeño N0.

3. Pregunto al N-1. En la "salida" pongo una variable
   nueva y me pregunto que hay en esa variable cuando
   N-1 es verdad. A veces puede ayudarnos escribir un
   ejemplo.

4. Si el N-1 es cierto, se que N también lo va a ser,
   pero ¿Qué relación existe entre la "salida" del
   N-1 y la salida de N?

5. Comprobar que están todos los casos cubiertos una
   única vez. 

*/


d2p_cl(0,0).

d2p_cl(D2, s(P)):- d2p_cl(D, P),
                 D2 is D + 1.   

				 
d2p_cl2(0,0).
d2p_cl2(D, s(P)):- D > 0, D2 is D - 1, d2p_cl2(D2, P).		  
    

 
