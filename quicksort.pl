%-----------------------------------------------------
% divide(+Elem, +Lista, -Menores, -Mayores)
%  es cierto cuando Menores unifica con una lista que
%  contiene los elemenentos de Lista que son menores
%  o iguales que Elem y Mayores unifica con una lista
%  que contiene los elementos de Lista que son mayores 
%  que Elem.
%------------------------------------------------------

divide(_, [], [], []).

divide(E, [Cab|Resto], [Cab|RMe], RMa):- Cab =< E,
  divide(E, Resto, RMe, RMa).
  
divide(E, [Cab|Resto], RMe, [Cab|RMa]):- Cab > E,
  divide(E, Resto, RMe, RMa).
  
quicksort([], []).  
quicksort([P|Resto], R):-
  divide(P, Resto, Me, Ma),
  quicksort(Me, RMe),
  quicksort(Ma, RMa),
  append(RMe, [P|RMa], R). 
