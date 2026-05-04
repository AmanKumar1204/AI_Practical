conc([], L, L).
conc([H|T], L2, [H|L3]) :- conc(T, L2, L3).

% Query: ?- conc([1,2,3], [4,5], L3).
% L3 = [1,2,3,4,5]