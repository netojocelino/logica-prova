c(1,2).
c(3,4).
c(4,1).
c(4,7).
c(5,6).
c(6,11).
c(6,3).
c(7,8).
c(9,10).
c(11,15).
c(12,13). 
c(13,14).
c(14,9).
c(14,17). 
c(15,16).
c(16,12).
c(16,19).
c(17,18).
c(19,20).


% a - Defina um predicado vai(X,Y) que é verdade se existe um caminho, direto ou indireto, que leva o jogador da sala X para a sala Y. 
%%% RESPOSTA
vai(X, Y) :- c(X,Y) ; c(X, N) , vai(N, Y).

% b - Há alguma sala inalcançável a partir das demais? Qual?
%%% RESPOSTA
% vai(X, 5).

% c - Quais salas deixam o jogador preso?
%%% RESPOSTA
% vai(10, X) , vai(2, Y), vai(8, Z) , vai(20, P) , vai(18, I).

% d - Qual o menor número de sala a partir da qual é possível chegar na sala 20? 
%%% RESPOSTA
% vai(19, 20).

% e - Suponha agora que as conexões são bi-direcionais.
%% O predicado que você definiu no primeiro item ainda funciona? Por que?
%%% RESPOSTA
%% Não! Pois neste predicado afirmamos que é possível sair da sala A 
%% para uma sala qualquer e depois verificamos se é possível chegar dessa
%% sala qualquer para a sala B.
%% Poderia ser resolvida fazendo vai(X, Y) :- c(X,Y) ; vai(N, Y), c(X, N).


% TESTES %
% a - vai(X,Y).
% b - c(X, 5).
% c - vai(10, X) , vai(2, Y), vai(8, Z) , vai(20, P) , vai(18, I).
% d - vai(19, 20).