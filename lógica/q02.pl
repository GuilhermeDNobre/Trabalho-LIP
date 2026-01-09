adiciona(X, L1, [X|L1]).

membro(X, [X|_]).              
membro(X, [_|Resto]) :-       
    membro(X, Resto).

apaga(X, [X|Resto], Resto). 
apaga(X, [Y|Resto], [Y|L2]) :- 
    apaga(X, Resto, L2).


concatena([], L, L).
concatena([X|R1], L2, [X|R3]) :-
    concatena(R1, L2, R3).

comprimento(0, []).
comprimento(N, [_|Resto]) :-
    comprimento(N1, Resto),
    N is N1 + 1.
