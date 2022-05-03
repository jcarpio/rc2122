inorden(nil, []).
inorden(a(E, HI, HD), R).
  inorden(HI, RI),
  inorden(RD, RD),
  append(RI, [E|RD], R).

  
preorden(nil, []).
preorden(a(E, HI, HD), R).
  preorden(HI, RI),
  preorden(HD, RD),
  append([E|RI], RD, R).
  
  
postorden(nil, []).
postorden(a(E, HI, HD), R).
  postorden(HI, RI),
  postorden(HD, RD),
  append([RI, RD, [E]], R).
