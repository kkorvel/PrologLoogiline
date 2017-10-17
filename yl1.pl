% Formaliseerige arutlus Prologis. Esitage vastav päring.
% Punamütsike on väike tüdruk. Kõik väiksed tüdrukud on lapsed. Iga laps on
% uudishimulik. Järelikult Punamütsike on uudishimulik.
% :-encoding(utf8).

v2ike_tydruk(punamytsike).
lapsed(X):- v2ike_tydruk(X).
uudishimulik(X):- lapsed(X).

väike_tydruk(punamytsike).
lapsed(X):-väike_tydruk(X).
uudishimulik(X):-lapsed(X).

% Nõukase versioon: 


onV2ike(v2iketydruk, punamytsike).
onLaps(laps, v2iketydruk).
onUudishimulik(laps).

lahendus(X):-
  onV2ike(V, X),
  onLaps(L, V),
  onUudishimulik(L).