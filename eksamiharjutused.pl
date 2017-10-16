%1. Program reading

p([],_Ys).
p([X|Xs],[X|Ys]):-p(Xs,Ys).
p([],_Ys).
p([X|Xs],[X|Ys]):-p(Xs,Ys).



%2 ülesanne
%http://www.dailyfreecode.com/code/find-sum-square-n-numbers-2245.aspx
summ(1,1).
summ(2,5).
summ(3,14).
summ(4,30).
summ(5,55).
summ(6,91).
summ(X,Y) :-
	summ(X,Y), !.
% või
sum(N,S):-sum(N,0,S).

sum(0,S,S).
sum(N,Acc,S):-
    N2 is N-1,
    Acc2 is Acc+N*N,
    sum(N2,Acc2,S).

%3. Puzzle

% numbers 1..9
digit(1).
digit(2).
digit(3).
digit(4).
digit(5).
digit(6).
digit(7).
digit(8).
digit(9).

magic(A1,A2,A3,B1,B2,B3,C1,C2,C3):-
    (var(A1), var(A2), var(A3), var(B1), var(B2), var(B3),
     var(C1), var(C2), var(C3)
     -> Flag=write,
        write('Warning! Calculation may take some time...')
      ; Flag=nowrite),
    % initial values
    digit(A1), digit(A2),
    (Flag=write -> nl ; true),
    digit(A3),
    (Flag=write -> write(.) ; true),
    digit(B1), digit(B2), digit(B3),
    digit(C1), digit(C2), digit(C3),
    % assure that the initial values are different
    A1\=A2, A1\=A3, A1\=B1, A1\=B2, A1\=B3, A1\=C1, A1\=C2, A1\=C3, 
    A2\=A3, A2\=B1, A2\=B2, A2\=B3, A2\=C1, A2\=C2, A2\=C3, 
    A3\=B1, A3\=B2, A3\=B3, A3\=C1, A3\=C2, A3\=C3, 
    B1\=B2, B1\=B3, B1\=C1, B1\=C2, B1\=C3, 
    B2\=B3, B2\=C1, B2\=C2, B2\=C3, 
    B3\=C1, B3\=C2, B3\=C3, 
    C1\=C2, C1\=C3, 
    C2\=C3,
    % check that all row, column and diagonal sums are equal
    X is A1+A2+A3, X is B1+B2+B3, X is C1+C2+C3,
    X is A1+B1+C1, X is A2+B2+C2, X is A3+B3+C3,
    X is A1+B2+C3, X is A3+B2+C1.

% mu lahendus
%4ülesanne
delnegg([],[]).

delnegg([H|T],S) :-
  H<0,
  delnegg(T,S).

delnegg([H|T], L) :- 
 H>=0, 
 delnegg(T, S),
 append([H],S,L).
 
 
 %4. Lists

delneg([],[]).
delneg([X|Ys],[X|Zs]):-
    X>=0, 
    delneg(Ys,Zs).
delneg([X|Ys],Zs):-
    X<0,
    delneg(Ys,Zs).