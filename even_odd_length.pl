evenlength([]).
evenlength([_,_|T]) :- evenlength(T).

oddlength([_]).
oddlength([_,_|T]) :- oddlength(T).

% Query: ?- evenlength([1,2,3,4]).  → true
% Query: ?- oddlength([1,2,3]).     → true