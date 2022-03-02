/* 

natural(N)
  es cierto si N es un número natural.
  
 Principio de inducción:
 
 1. P(n0)

 2. Para todo n mayor que n0,
    P(n-1) -> P(n) 
  
*/

natural(1).

natural(N) :- N > 1, N2 is N - 1,
              natural(N2).
