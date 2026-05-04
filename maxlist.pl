maxlist([X], X).
maxlist([H|T], M) :-
    maxlist(T, M1),
    (H > M1 -> M = H ; M = M1).

% Query: ?- maxlist([3,1,4,1,5,9,2,6], M).
% M = 9