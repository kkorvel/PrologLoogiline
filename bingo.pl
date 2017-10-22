	
reeglid(nurgad, [[x,1,1,1,x],[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1],[x,1,1,1,x]]).
reeglid(diagonaalid, [[x,1,1,1,x],[1,x,1,x,1],[1,1,x,1,1],[1,x,1,x,1],[x,1,1,1,x]]).
reeglid(bingo, [[x,x,x,x,x],[x,x,x,x,x],[x,x,x,x,x],[x,x,x,x,x],[x,x,x,x,x]]).

tabel([[x,1,1,1,x],[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1],[x,1,1,1,x]]).
	
%nurgad([[x,1,1,1,x],[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1],[x,1,1,1,x]]).
nurgad(Tabel) :- !, reeglid(nurgad, Tabel).
%diagonaalid([[x,1,1,1,x],[1,x,1,x,1],[1,1,x,1,1],[1,x,1,x,1],[x,1,1,1,x]]).
diagonaalid(Tabel) :- reeglid(diagonaalid, Tabel).
%bingo([[x,x,x,x,x],[x,x,x,x,x],[x,x,x,x,x],[x,x,x,x,x],[x,x,x,x,x]]).
bingo(Tabel) :- reeglid(bingo, Tabel).
	