korrutis() :-
	write('Sisesta X:'),
	read(X),
	write('Sisesta Y:'),
	read(Y),
	Tulemus is X * Y,
	write(X + Y = Tulemus).


nat(0).
nat(s(X)):-
	nat(X).


arvud(0).
arvud(X+1):-
	arvud(X).

	
arvud(0).
arvud(X):-
	X > 0,
	write(X),
	tab(1),
	Y is X-1,
	arvud(Y).
	

arvud_yles(M,N):-M=:=N+1.
arvud_yles(M,N):-
	M<N+1,
	write(M),
	tab(1),
	M1 is M+1,
	arvud_yles(M1,N).
	

joon(0).
joon(X):-
	X>=1,
	write('*'),
	tab(1),
	Y is X-1,
	joon(Y).
	

sada(X,Y):-
	plokk1(X,Y),
	plokk2(X,Y),
	plokk3(X,Y).
	

plokk1(X,Y):-
%	joon(X-1), tab(1),
	tab(2),
	joon(1*Y-1), tab(1),
	tab(2), joon(2*Y), tab(1),
	tab(4), joon(2*Y), nl.
	
plokk2(X,Y):-
	joon(1*Y), tab(1),
	joon(3*Y), tab(1),
	joon(3*Y), nl,
	joon(1*Y), tab(1),
	joon(3*Y), tab(1),
	joon(3*Y), nl.
% Esimene ja kolmas plokk on sama!
% plokk3(X,Y):-plokk1(X,Y).
plokk3(X,Y):-
	joon(Y), tab(3),
	joon(1*Y+2), tab(5),
	joon(1*Y+2), nl.
	