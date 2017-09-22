
% Koidu perekond

% programmi andmed
mother(koit,merike).
mother(merike,silvia).
mother(einar,amanda).
mother(kaupo,merike).
mother(kadri,merike).
mother(einar,amanda).
mother(merike,silvia).
mother(mann,silvia).
mother(kalle,silvia).
mother(arne,silvia).
mother(heino,amanda).
mother(baara,amanda).


% married (X,Y) on t�ene, kui
% X on naine, kelle mees onY
married(merike,einar).
married(amanda,raho).
married(silvia,august).

male(koit).
male(einar).
male(kaupo).
male(august).
male(raho).
male(kalle).
male(arne).
male(heino).


female(merike).
female(amanda).
female(silvia).
female(kadri).
female(amanda).
female(silvia).
female(mann).
female(baara).

% isa reegel
% isa on ema abikaasa
father(X,Y):-
    mother(X,Z),
    married(Z,Y).

%vend on sama ema laps
brother(X,Y):-
	mother(X,Ema),
	mother(Y,Ema),
	male(Y),
	Y\=X.

	
%�de on sama ema laps
sister(X,Y):-
	mother(X,Ema),
	mother(Y,Ema),
	female(Y),
	Y\=X.
	
% vanaisa on ema isa v�i isa isa
grandfather(X,Vanaisa):-
	father(X,Isa),
	father(Isa,Vanaisa).
grandfather(X,Vanaisa):-
	mother(X,Ema),
	father(Ema,Vanaisa).
	
% vanaema on ema ema v�i isa ema
grandmother(X,Vanaema):-
	mother(X,Isa),
	mother(Isa,Vanaema).
grandmother(X,Vanaema):-
	father(X,Ema),
	mother(Ema,Vanaema).

%t�di on ema �de v�i siis isa �de
aunt(X,T�di):-
	mother(X,Ema),
	sister(Ema,T�di).
aunt(X,T�di):-
	father(X,Isa),
	sister(Isa,T�di).
	
%onu on ema vend v�i siis isa vend
uncle(X,Onu):-
	mother(X,Ema),
	brother(Ema,Onu).
uncle(X,Onu):-
	father(X,Isa),
	brother(Isa,Onu).

	

	
	



