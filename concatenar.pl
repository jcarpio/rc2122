/*

concatenar(L1, L2, R).
  es cierto cuando R unifica con una lista
  que contiene los elementos de L1 seguidos
  de los elementos de L2.  

*/

concatenar([], L2, L2).

concatenar([Cab|Resto], L2, [Cab|R]):- 
   concatenar(Resto, L2, R).
   
/*
[1,2,3], [4,5,6] -> 

[2,3] [4,5,6] -> [2,3,4,5,6]

*/ 
