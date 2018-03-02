pai(a, A) :- A = c ; A = b.
pai(b, A) :- A = d ; A = e.
pai(c, f).

% auxiliar
avo(A, B) :- pai(A, N), pai(N, B).


% a - Defina um predicado irmao(X,Y) que é verdade se X é irmão de Y. 
irmao(A, B) :- pai(C, A) , pai(C, B).

% b - Defina um predicado primo(X,Y) que é verdade se X é primo de Y. 
primo(A, B) :- avo(G, A), avo(G, B), irmao(D, DD).

% c - Defina um predicado neto(X,Y) que é verdade se X é neto de Y. 
neto(A, B)  :- avo(B, A).

% d - Defina um predicado descendente(X,Y) que é verdade se X é descendente de Y. 
descendente(A, B) :- pai(B, A) ; pai(B, C) , descendente(A, C).

% e - Defina um predicado avo(X) que é verdade se X é avô.
avo(A) :- ( avo(A, X) -> true ; false).