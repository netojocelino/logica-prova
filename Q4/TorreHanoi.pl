% definação das cláusulas
move(1,A,B,_) :-    
    write('Move da haste '),
    write(A),
    write(' para haste '),
    write(B),
    nl.
move(N,A,B,C) :-
    N>1,
    M is N-1,
    move(M,A,B,C),
    move(1,A,B,_),
    move(M,A,B,C).
