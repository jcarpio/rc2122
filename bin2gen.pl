

/*

bin2gen(+Ab, -Ag)
  es cierto si Ag unifica con un árbol genérico
  equilivante al árbol binario Ab.
  
*/

bin2gen(a(Et, nil, nil), a(Et, [])).
bin2gen(a(Et, HI, nil), a(Et, [RI]):-
  HI \= nil, 
  bin2gen(HI, RI).

bin2gen(a(Et, nil, HD), a(Et, [RD]):-
  HD \= nil, 
  bin2gen(HD, RD).
  
bin2gen(a(Et, HI, HD), a(E, [RI,RD])):-
  bin2gen(HI, RI),
  bin2gen(HD, RD).
