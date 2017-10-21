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
	
%lahenda(Tabel):-
	%Tabel = 
	%[[C01,C02,C03,C04,C05,C06],
	% [C11,C12,C13,C14,C15,C16],
	% [C21,C22,C23,C24,C25,C26],
	% [C31,C32,C33,C34,C35,C36],
	% [C41,C42,C43,C44,C45,C46],
	 %[C51,C52,C53,C54,C55,C56]],
	% Tabel = [Nimed,Voor1,Voor2,Voor3,Voor4,Voor5],
	% Nimed = [eli, gre, ker, ott, rob, sti],
	% Veerg1 = [C01,C11,C21,C31,C41,C51],
	% C01=eli, C11=ott, C21=rob,
	% Veerg2 = [C02, C12, C22, C32, C42, C52],
	% C02=gre,
	% Veerg3 = [ker,C13,C23,C33,C43,C53],
	% C03=ker, C34=ott,
	% Veerg4 = [C04,C14,C24,C34,C44,C54],
	% Veerg5 = [C05,C15,C25,C35,C45,C55],
	% Veerg6 = [C06,C16,C26,C36,C46,C56],
	% Veerud = [Veerg1,Veerg2,Veerg3,Veerg4,Veerg5,Veerg6],
	% findall(P,permutation(Nimed,P),SR),
	% member(Voor1,SR),
	% member(Veerg1,SR),
	% \+((nth0(0,Veerg1,A),
	%	nth0(1,Veerg1,B),
	%	member(Veerg,Veerud),
	%	nth0(0,Veerg,B),
	%	nth0(1,Veerg,X),
	%	X\=A)),
	% member(Voor2,SR),
	% member(Veerg2,SR),
	 %\+((nth0(0,Veerg2,A),
	%	nth0(1,Veerg2,B),
	%	member(Veerg,Veerud),
	%	nth0(0,Veerg,B),
	%	nth0(1,Veerg,X),
	%	X\=A)),
	% member(Voor3,SR),
	% member(Veerg3,SR),
	% \+((nth0(0,Veerg3,A),
	%	nth0(1,Veerg3,B),
	%	member(Veerg,Veerud),
	%	nth0(0,Veerg,B),
	%	nth0(1,Veerg,X),
	%	X\=A)),
	% member(Voor4,SR),
	% member(Voor5,SR),
	% \+((nth0(0,Veerg4,A),
	%	nth0(1,Veerg4,B),
	%	member(Veerg,Veerud),
	%	nth0(0,Veerg,B),
	%	nth0(1,Veerg,X),
	%	X\=A)),
	% tryki_list(Tabel),
	% true.
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
	%member(Voor3,Ps),
	%member(Voor4,Ps),
	%member(Voor5,Ps),
	tryki_list(Tabel),
	true.
	
	