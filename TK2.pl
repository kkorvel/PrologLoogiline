%?- suurem(s(s(s(0))),s(s(0))).
%true .
%?- suurem(0,s(s(0))).
%false.

suurem(s(_), 0).
suurem(s(X), s(Y)):-
  suurem(X, Y).

%https://stackoverflow.com/questions/11485007/prolog-greater-than-2-succ
%Google teadis ja leidsin infot selle ülesande kohta.