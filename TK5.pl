% Kuna eelnevalt otsisin netist mis täisarve korrutades saab arvu 98 siis jätsin nad reeglitena sisse

factors(98, 1).
factors(98, 2).
factors(98, 7).
factors(98, 14).
factors(98, 49).

lahenda(Summa) :-
  factors(98, X),
  factors(98, Y), Y > X,
  factors(98, Z), Z > Y,
  write('Lahendideks on:'),
  X*Y*Z =:= 98,
  write(X+Y+Z),
  Summa is X + Y + Z,
  write('=') ,write(Summa).
