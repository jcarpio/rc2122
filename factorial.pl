
/*

Factorial

factorial(N, R).

R es cierto si unifica con el factorial de N
factorial(0) = 1
factorial(n) = n * factorial(n-1)

*/

factorial(0, 1).
factorial(N, R2):- N > 0, N2 is N - 1, factoria(N2, R),
                  R2 is N * R.
