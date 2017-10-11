sum(X, Y, Z):- 
    var(Z), number(X), number(Y) -> Z is X + Y;
    var(X), number(Z), number(Y) -> X is Z - Y;
    var(Y), number(Z), number(X) -> Y is Z - X;
    var(X), var(Y), number(Z) ->
    moreSolutions(0, Z);
    X + Y =:= Z.
    

moreSolutions(X, Y) :-
  Y >= 0,
  write('X = '),
  write(X),
  write(','),
  tab(1),
  write('Y = '),
  write(Y), nl,
  Y1 is Y - 1,
  X1 is X + 1,
  moreSolutions(X1, Y1).