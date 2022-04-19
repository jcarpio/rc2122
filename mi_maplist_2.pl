even(X) :- 0 is X mod 2.

mi_maplist(_,[]).
mi_maplist(P,[X|Xs]) :- call(P,X),mi_maplist(P,Xs).
