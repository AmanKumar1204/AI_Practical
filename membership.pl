memb(X, [X|_]).
memb(X, [_|T]) :- memb(X, T).

% Query: ?- memb(3, [1,2,3,4]).
% true
% Query: ?- memb(5, [1,2,3,4]).
% false