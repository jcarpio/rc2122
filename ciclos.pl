/*

camino(+Inicio, +Fin, +Grafo, +Visitados, -Camino)
  es cierto si Camino unifica con una lista
  de aristas/vértices que va desde Inicio hasta
  Fin sin repetir las aristas/vértices de la lista
  Visitados.
  
*/


camino(Ini, Fin, g(_,A), _, [Ini,Fin]):- conectado(Ini, Fin, A). 

camino(Ini, Fin, g(_,A), Visitados, [Ini|Camino]):-
  conectado(Ini, TMP, A), 
  \+ member(arista(Ini,TMP), Visitados),
  camino(TMP, Fin, g(_, A), [arista(Ini,TMP), arista(TMP,Ini)|Visitados], Camino).
  
/*
conectado(+Ini, +Fin, +Aristas)  
  es cierto si el punto Ini y el punto Fin estan
  conectados por una arista de la lista Aristas.

*/
    
conectado(Ini, Fin, Aristas):- member(arista(Ini, Fin), Aristas).
conectado(Ini, Fin, Aristas):- member(arista(Fin, Ini), Aristas).
	

grafo1(g([a,b,c,d,e], [arista(a,b), arista(a,c), arista(b,c),
                       arista(b,d), arista(d,e), arista(e,c),
					   arista(b,e), arista(d,c)])).


