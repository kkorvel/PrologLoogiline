:-encoding(utf8).

vaike_tydruk(punamytsike).
on_lapsed(tydrukud).
on_uudishimulik(laps).


punamytsike(X):-
	%vaike_tydruk(X):- on_lapsed(X).
	%on_lapsed(X):-on_uudishimulik(X),
	write("Punamütsike on väike tüdruk. Kõik väiksed tüdrukud on lapsed. Iga laps on uudishimulik. Järelikult Punamütsike on uudishimulik.").
	
	

	
	
	
	
	
	
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