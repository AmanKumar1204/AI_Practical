multi(_, 0, 0).
multi(N1, N2, R) :-
    N2 > 0,
    N2_1 is N2 - 1,
    multi(N1, N2_1, R1),
    R is R1 + N1.

% Query: ?- multi(4, 5, R).
% R = 20