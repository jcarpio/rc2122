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
 
