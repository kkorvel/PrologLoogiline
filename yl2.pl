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
