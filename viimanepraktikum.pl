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
	
lahenda(Tabel):-
	Tabel = 
	[[C01,C02,C03,C04,C05,C06],
	 [C11,C12,C13,C14,C15,C16],
	 [C21,C22,C23,C24,C25,C26],
	 [C31,C32,C33,C34,C35,C36],
	 [C41,C42,C43,C44,C45,C46],
	 [C51,C52,C53,C54,C55,C56]],
	 Tabel = [Nimed,Voor1,Voor2,Voor3,Voor4,Voor5],
	 Nimed = [eli, gre, ker, ott, rob, sti],
	 Veerg1 = [C01,C11,C21,C31,C41,C51],
	 C01=eli, C11=ott, C21=rob,
	 Veerg2 = [C02, C12, C22, C32, C42, C52],
	 C02=gre,
	 Veerg3 = [ker,C13,C23,C33,C43,C53],
	 C03=ker, C34=ott,
	 Veerg4 = [C04,C14,C24,C34,C44,C54],
	 Veerg5 = [C05,C15,C25,C35,C45,C55],
	 Veerg6 = [C06,C16,C26,C36,C46,C56],
	 Veerud = [Veerg1,Veerg2,Veerg3,Veerg4,Veerg5,Veerg6],
	 findall(P,permutation(Nimed,P),SR),
	 member(Voor1,SR),
	 member(Veerg1,SR),
	 \+((nth0(0,Veerg1,A),
		nth0(1,Veerg1,B),
		member(Veerg,Veerud),
		nth0(0,Veerg,B),
		nth0(1,Veerg,X),
		X\=A)),
	 member(Voor2,SR),
	 member(Veerg2,SR),
	 member(Voor3,SR),
	 member(Veerg3,SR),
	 member(Voor4,SR),
	 member(Voor5,SR),
	 tryki_list(Tabel).