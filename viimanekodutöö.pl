reeglid(nurgad, [[x,1,1,1,x],[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1],[x,1,1,1,x]]).
reeglid(diagonaalid, [[x,1,1,1,x],[1,x,1,x,1],[1,1,x,1,1],[1,x,1,x,1],[x,1,1,1,x]]).
reeglid(bingo, [[x,x,x,x,x],[x,x,x,x,x],[x,x,x,x,x],[x,x,x,x,x],[x,x,x,x,x]]).

tabel([[x,1,1,1,x],[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1],[x,1,1,1,x]]).

tabel(Tabel):-
	reeglid(nurgad, X),
	reeglid(diagonaalid, Y),
	reeglid(bingo, Z).