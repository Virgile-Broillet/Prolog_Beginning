homme(albert). homme(jean). homme(paul). homme(bertrand). homme(dominique). homme(benoit). femme(germaine). femme(christiane). femme(simone). femme(marie). femme(sophie).
pere(albert,jean). pere(jean,paul). pere(paul,bertrand). pere(paul,sophie). pere(jean,simone). pere(louis,benoit). mere(germaine,jean). mere(christiane,simone). mere(christiane,paul). mere(simone,benoit). mere(marie,bertrand). mere(marie,sophie).

parent(X,Y) :- pere(X,Y).
parent(X,Y) :- mere(X,Y).

fils(X,Y) :- mere(Y,X),homme(X).
fils(X,Y) :- pere(Y,X),homme(X).

fille(X,Y) :- mere(Y,X),femme(X).
fille(X,Y) :- pere(Y,X),femme(X).

gp(X,Y) :- pere(X,A),pere(A,Y).
gm(X,Y) :- mere(X,A),mere(A,Y).

frere(X,Y) :- pere(A,Y),pere(A,X),mere(B,Y),mere(B,X),homme(X), X\=Y.
soeur(X,Y) :- pere(A,Y),pere(A,X),mere(B,Y),mere(B,X),femme(X), X\=Y.

aime(marie, vin). voleur(pierre).

aimep(_,Y) :- aime(Y, vin).
vole(X,Y) :- aimep(X,Y), voleur(X).

longueur([],0).
longueur([_|L], N) :-
longueur(L, N1), N is N1+1.

concat([],[],[]).
concat(X,Y,R):- R = [X|Y].

renverse([],[]).
renverse([X|L],R) :- renverse(L,Lr), append(Lr, [X], R).

palindrome([]).
palindrome(L1):- renverse(L1,R), R==L1.

rang_pair([],[]).
rang_pair([X,Y|L],Y):- rang_pair(L,Y), append()

somme([],0).
somme([X|L], N) :-
somme(L, N1), N is N1+X.
