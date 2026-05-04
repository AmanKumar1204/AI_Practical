max(X, Y, X) :- X >= Y.
max(X, Y, Y) :- Y > X.

% Query: ?- max(10, 20, M).
% M = 20