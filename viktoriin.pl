
do :- read(Term),
    (Term = 'A' -> doA, !;
    (Term = 'B' -> doB, !;
    (Term = 'C' -> doC))).

doA :- writeln('DoA').
doB :- writeln('DoB').
doC :- writeln('DoC').