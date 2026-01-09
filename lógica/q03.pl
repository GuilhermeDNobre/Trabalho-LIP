progenitor(jose, joao).
progenitor(maria, joao).

progenitor(jose, ana).
progenitor(maria, ana).

progenitor(ana, helena).
progenitor(ana, joana).

progenitor(joao, mario).

progenitor(helena, carlos).
progenitor(mario, carlos).


masculino(jose).
masculino(joao).
masculino(mario).
masculino(carlos).

feminino(maria).
feminino(ana).
feminino(helena).
feminino(joana).


pai(X,Y) :-
    progenitor(X,Y),
    masculino(X).

mae(X,Y) :-
    progenitor(X,Y),
    feminino(X).


irma(X,Y) :-
    feminino(X),
    progenitor(P,X),
    progenitor(P,Y),
    X \= Y.

irmao(X,Y) :-
    masculino(X),
    progenitor(P,X),
    progenitor(P,Y),
    X \= Y.

descendente(X,Y) :-
    progenitor(Y,X).

descendente(X,Y) :-
    progenitor(Z,X),
    descendente(Z,Y).

avo(X,Y) :-
    masculino(X),
    progenitor(X,Z),
    progenitor(Z,Y).

avoa(X,Y) :-
    feminino(X),
    progenitor(X,Z),
    progenitor(Z,Y).

tio(X,Y) :-
    masculino(X),
    progenitor(P,Y),
    irmao(X,P).

tia(X,Y) :-
    feminino(X),
    progenitor(P,Y),
    irma(X,P).

primo(X,Y) :-
    masculino(X),
    progenitor(PX,X),
    progenitor(PY,Y),
    irmao(PX,PY).

prima(X,Y) :-
    feminino(X),
    progenitor(PX,X),
    progenitor(PY,Y),
    irma(PX,PY).
