sumlist([], 0).
sumlist([H|T], S) :-
    sumlist(T, S1),
    S is S1 + H.

% Query: ?- sumlist([1,2,3,4,5], S).
% S = 15