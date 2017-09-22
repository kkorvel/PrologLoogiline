muutuja(X, Y) :- 
	atom(X) -> Y = X.


muutuja(X + Z, Y) :-
	muutuja(X, Y);
	muutuja(Z, Y).
