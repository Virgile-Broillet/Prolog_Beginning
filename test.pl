fact(1,1).
fact(N,Fn) :- N>1, Nm1 is N-1, fact(Nm1, Fnm1), Fn is Fnm1*N.

renverse([],[]).
renverse([X|L],R) :- renverse(L,Lr), append(Lr, [X], R).

renverse2([],Acc,Acc):- renverse2(L, [], R)

// [a,b,c][]L --> [b,c][a]R --> ... --> [][c,b,a]R --> L = [c,b,a]


