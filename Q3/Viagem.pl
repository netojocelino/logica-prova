onibus(saoPaulo,campinas).
onibus(campinas,paulinea).
onibus(valmont,saarbruecken).
onibus(valmont,metz).

trem(metz,frankfurt).
trem(saarbruecken,frankfurt).
trem(metz,paris).
trem(saarbruecken,paris).

aviao(frankfurt,bangkok).
aviao(frankfurt,singapura).
aviao(paris,losAngeles).
aviao(bangkok,saoPaulo).
aviao(singapura,saoPaulo).
aviao(losAngeles,saoPaulo).



deslocar(A, B) :-
    onibus(A, B) ;
    trem(A, B) ;
    aviao(A, B).

% a -  Defina um predicado viagem(X,Y) que é verdade se existe um caminho,
%% direto ou indireto, que leva da cidade X à cidade Y. Ex: viagem(paris, paulinea)
%% deve retornar Verdadeiro. 
viagem(A, B) :-
    deslocar(A, B) ;
    deslocar(A, N) , viagem(N, B).

% c -  Defina um predicado viagem(X,Y,Z) que, além de dizer se há um caminho,
%% diz quais as cidades visitadas. Ex: Para a consulta viagem(paris, campinas, Z) 
%% devemos ter Z = vai(paris, losAngeles, vai(losAngeles, saoPaulo, vai(saoPaulo, campinas))).
viagem(A, B, P) :-
    deslocar(A, B) , P = vai(A, B);
    deslocar(A, C) , viagem(C, B, K), P = vai(A, C, K)
    .


% TESTES %
% a - viagem(paris, paulinea).
% b - viagem(paris, paulinea, Z).