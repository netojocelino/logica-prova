
% Defina um predicado hanoi(N,A,B,C) que resolve o problema das torres de Hanoi com N discos.
%% O movimento de um disco de X para Y deve ser escrito na tela usando o predicado
move(X,Y) :- write('Move da haste '), write(X), write(' para a haste '), write(Y), nl.

hanoi(N, X, Y, Z) :- % hastes X Y Z %
    (
    N < 2 ->
      move(X, Y)
    ;
      M is (N-1),
      
      %move(X, Y), move(X, Z), move(Y, Z), move(X, Y),
      %move(Z, X), move(Z, Y), move(X, Y)
      
      hanoi(M, X, Z, Y),
      hanoi(1, X, Y, _),
      hanoi(M, Z, Y, X)
    ).



% TESTE
% hanoi(3, X, Y, Z).
