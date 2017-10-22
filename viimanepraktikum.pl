
	tryki_list([]).
tryki_list([X|Xs]):-
	write(X), nl,
	tryki_list(Xs).

kopeeri_list([],[]).
kopeeri_list([X|Xs],[X|Xs]):-
	kopeeri_list(Xs,Xs).

vastanda([],[]).
vastanda([X|Xs],[Y|Ys]):-
	Y is X * -1,
	vastanda(Xs,Ys).

lahenda(L62):-
	Tabel = [[L11,L12,L13,L14,L15,L16],
			[L21,L22,L23,L24,L25,L26],
			[L31,L32,L33,L34,L35,L36],
			[L41,L42,L43,L44,L45,L46],
			[L51,L52,L53,L54,L55,L56],
			[L61,L62,L63,L64,L65,L66]
			],
	Tabel = [Nimed, Voor1, Voor2, Voor3, 
			Voor4,Voor5],
	Nimed = [e,g,o,r,k,'s'],
	L21 = o,
	L31= r,
	L44 = s,
	L55 = o,
	findall(P,permutation(Nimed,P),Ps),
	member(Nimed,Ps),
	member(Voor1,Ps),
	\+ (nth1(N,Nimed,A),
		nth1(N,Voor1,B),
		nth1(M,Nimed,B),
		\+ nth1(M,Voor1,A)),
	member([L11,L21,L31,L41,L51,L61],Ps),
	member(Voor2,Ps),
	\+ (nth1(N,Nimed,A),
		nth1(N,Voor2,B),
		nth1(M,Nimed,B),
		\+ nth1(M,Voor2,A)),
	member([L12,L22,L32,L42,L52,L62],Ps),
	member(Voor3,Ps),
	\+ (nth1(N,Nimed,A),
		nth1(N,Voor3,B),
		nth1(M,Nimed,B),
		\+ nth1(M,Voor3,A)),
	member([L13,L23,L33,L43,L53,L63],Ps),
	member(Voor4,Ps),
	\+ (nth1(N,Nimed,A),
		nth1(N,Voor4,B),
		nth1(M,Nimed,B),
		\+ nth1(M,Voor4,A)),
	member([L14,L24,L34,L44,L54,L64],Ps),
	member(Voor5,Ps),
	\+ (nth1(N,Nimed,A),
		nth1(N,Voor5,B),
		nth1(M,Nimed,B),
		\+ nth1(M,Voor5,A)),
	member([L15,L25,L35,L4t,L5t,L65],Ps),
	tryki_list(Tabel),
	true.
