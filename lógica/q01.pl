aresta(0,1).
aresta(1,2).
aresta(0,3).
aresta(3,4).
aresta(4,1).

adjacente(X,Y) :- aresta(X,Y).
adjacente(X,Y) :- aresta(Y,X).

grau(V, G) :-
    findall(X, adjacente(V,X), Lista),
    length(Lista, G).

caminho([_]).
caminho([A,B|Resto]) :-
    adjacente(A,B),
    caminho([B|Resto]).
