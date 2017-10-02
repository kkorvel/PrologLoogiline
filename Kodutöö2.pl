sum(X,Y,Z):-
	var(Z),number(X),number(Y) -> Z is X + Y;
	var(X),number(Z),number(Y) -> X is Z - Y;
	var(Y),number(X),number(Z) -> Y is Z - X;
	X =:= Z-Y.
	Y =:= Z-X.
	Z =:= X+Y.