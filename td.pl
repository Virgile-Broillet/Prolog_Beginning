

enleve(X,[X|L],L).
enleve(X,[Y|L],[Y|Lt]) :- X \== Y, enleve(X,L,Lt).

minimum([X],[X]).
minimum([X|L],M):- L\==[], minimum(L,Y) , M is min(X,Y).

tri_minimum([],[]).
tri_minimum(L, [X|R]) :- L\==[], minimum(L,X), enleve(X, L, L2), tri_minimum(L2, R).

/* [6, [2, [1, [], []], [4, [3, [],[]], [5,[],[]]]], [9, [], []]] */

arbre([]).
arbre([X,G,D]):- arbre(X), arbre(G), arbre(D).

/* -1 pour pouvoir avoir 0 pour les feuilles */
hauteur([],-1).
hauteur([_,G,D], H) :- hauteur(G, Hg), hauteur(D, Hd), H is 1+max(Hg,Hd).

infixe([],[]).
infixe([X,G,D], L):- infixe(G,Lg), infixe(D, Ld), append(Lg,[X|Ld],L).

bulle([X], [X]).
bulle([X|L], Lt) :- bulle(L, [Y|R]), X =< Y, Lt = [X,Y|R].
bulle([X|L], Lt) :- bulle(L, [Y|R]), X > Y, Lt = [Y,X|R].

tribulle([],[]).
tribulle(L, [X|Lt]) :- bulle(L, [X|R]), tribulle(R, Lt).

/* in_tree(A, E) */

in_tree([X,_,_], E) :- E == X.
in_tree([_,G,_], E) :- in_tree(G,E).
in_tree([_,G,_], E) :- in_tree(D,E).

/* leaf_list(A, L_leaf) */
leaf_list([X,[],[]], [X]).
leaf_list([X,G,D], L) :- leaf_list(G, Lg), leaf_list(D, Ld), append(Lg, Ld, L).



