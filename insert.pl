insert(I, 1, L, [I|L]).
insert(I, N, [H|T], [H|R]) :-
    N > 1,
    N1 is N - 1,
    insert(I, N1, T, R).

% Query: ?- insert(99, 3, [1,2,3,4,5], R).
% R = [1,2,99,3,4,5]