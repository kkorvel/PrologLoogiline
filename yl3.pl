% Koostage päring, millele antakse ette neljaelemendiline list ning mis kustutab sellest esimese
% ja kolmanda elemendi, saades tulemuseks kaheelemendilise listi.
neljanelistkaheseks([A,B,C,D],Kahene):-
  Kahene = [B,D].
