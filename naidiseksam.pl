
% Formaliseerige arutlus Prologis. Esitage vastav päring.
% Punamütsike on väike tüdruk. Kõik väiksed tüdrukud on lapsed. Iga laps on
% uudishimulik. Järelikult Punamütsike on uudishimulik.
% :-encoding(utf8).

v2ike_tydruk(punamytsike).
lapsed(X):- v2ike_tydruk(X).
uudishimulik(X):- lapsed(X).

väike_tydruk(punamytsike).
lapsed(X):-väike_tydruk(X).
uudishimulik(X):-lapsed(X).

% Nõukase versioon: 


onV2ike(v2iketydruk, punamytsike).
onLaps(laps, v2iketydruk).
onUudishimulik(laps).

lahendus(X):-
  onV2ike(V, X),
  onLaps(L, V),
  onUudishimulik(L).	

% Kirjeldage Prologis nädalapäevadele naturaalarvude tsükliline liitmine. Näiteks
% ?-liida(kolmapäev,2,X).
% X=reede
% ?-liida(neljapäev,9,X).
% X=laupäev
:-encoding(utf8).

liida(Nädalapäev, LiidetavArv, Uusnädalapäev):-
  ( Nädalapäev = esmaspäev -> Uusnädalanr is 1+LiidetavArv
  ; Nädalapäev = teisipäev -> Uusnädalanr is 2+LiidetavArv
  ; Nädalapäev = kolmapäev -> Uusnädalanr is 3+LiidetavArv
  ; Nädalapäev = neljapäev -> Uusnädalanr is 4+LiidetavArv
  ; Nädalapäev = reede     -> Uusnädalanr is 5+LiidetavArv
  ; Nädalapäev = laupäev   -> Uusnädalanr is 6+LiidetavArv
  ; Nädalapäev = pühapäev  -> Uusnädalanr is 7+LiidetavArv ),
  test(Uusnädalanr, Res),
  ( Res = 1 -> ( Uusnädalapäev = esmaspäev, write(Nädalapäev), write("+"), write(LiidetavArv), write("="), write("esmaspäev") )
  ; Res = 2 -> ( Uusnädalapäev = teisipäev, write(Nädalapäev), write("+"), write(LiidetavArv), write("="), write("teisipäev") )
  ; Res = 3 -> ( Uusnädalapäev = kolmapäev, write(Nädalapäev), write("+"), write(LiidetavArv), write("="), write("kolmapäev") )
  ; Res = 4 -> ( Uusnädalapäev = neljapäev, write(Nädalapäev), write("+"), write(LiidetavArv), write("="), write("neljapäev") )
  ; Res = 5 -> ( Uusnädalapäev = reede,     write(Nädalapäev), write("+"), write(LiidetavArv), write("="), write("reede")     )
  ; Res = 6 -> ( Uusnädalapäev = laupäev,   write(Nädalapäev), write("+"), write(LiidetavArv), write("="), write("laupäev")   )
  ; Res = 7 -> ( Uusnädalapäev = pühapäev,  write(Nädalapäev), write("+"), write(LiidetavArv), write("="), write("pühapäev")  ) ).

test(X, Res) :-
    X =< 7 -> Res is X
  ; Y is X - 7, test(Y, Res).	
	
% Koostage päring, millele antakse ette neljaelemendiline list ning mis kustutab sellest esimese
% ja kolmanda elemendi, saades tulemuseks kaheelemendilise listi.
neljanelistkaheseks([A,B,C,D],Kahene):-
  Kahene = [B,D].
	
%oige2esimest
%kustuta(X,Y,[X,Y|Tail],Tail).
%?-kustuta(1,2[1,2,3,4],List).
%kustuta(X,Y,[Head|Tail],[Head|NewList]):-
	%kustuta(X,Y,Tail,NewList).

%eemaldab2ja3 
%?- remove2nd([1,2,3,4], X).
remove2nd([], []).
remove2nd([X], [X]).
remove2nd([X, K, P|Z], [X|Z]).


%eemaldab1ja3
%?- eemaldaelemendid([1,2,3,4], X).
eemaldaelemendid([], []).
eemaldaelemendid([X], [X]).
eemaldaelemendid([X, K, P|Z], [K|Z]).	
	
	
%eemaldab1ja2
%?- eemaldaelemendid12([1,2,3,4], X).
eemaldaelemendid12([], []).
eemaldaelemendid12([X], [X]).
eemaldaelemendid12([X, K, P|Z], [P|Z]).	

%eemaldab1
%?- eemaldaelemendid1([1,2,3,4], X).
eemaldaelemendid1([], []).
eemaldaelemendid1([X], [K]).
eemaldaelemendid1([X, P|Z], [P|Z]).	
%mida rohkem elemente, seda rohkem eemaldab	