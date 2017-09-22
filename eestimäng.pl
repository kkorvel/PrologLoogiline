:-encoding(utf8).

kysimus1(b, "Lehmadele on õige vastus!").
kysimus2(c, "Üks on õige vastus!").


viktoriin:-
	write("Kellele tuli taliharjapäeval ilmtingimata näidata päikest?"),nl,
	write('a: Hobustele'),nl,
    write('b: Lehmadele'),nl,
    write('c: Sigadele'),nl,
	write("Vali õige vastus, kas (a/b/c)"),nl,
	read(Input),nl,
	kysimus1(Input,Output),nl,
	write(Output),nl,
	
	nl,
	write("Liigume järgmise küsimuse juurde!"),nl,
	nl,
	
	write("Mitu väravat lõi FC Liverpooli eest lõppenud hooajal Ragnar Klavan?"),nl,
	write('a: Kaks'),nl,
    write('b: Mitte ühtegi'),nl,
	write('c: Ühe'),nl,
	write("Vali õige vastus, kas (a/b/c)"),nl,
	read(Input2),nl,
	kysimus2(Input2,Output2) -> write(Output2);
	write("Vale vastus!").
	
	