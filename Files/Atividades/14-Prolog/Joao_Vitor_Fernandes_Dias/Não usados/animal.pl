%--------------------------------------------------%
% UENF-CCT-LCMAT-CC                                %
% Disciplina:   Paradigmas de Ling. de Programacao %
% Prof.:        Ausberto S. Castro Vera            %
% Date:         21/set/2021                        %
% Aluno:        João Vítor Fernandes Dias          %
% Arquivo:      animal.pl                          %
%--------------------------------------------------%

%
%%%%%%%%%%%%%%%% FATOS %%%%%%%%%%%%%%%%
cao(fido).
cao(duke).
cao(rover).

gato(tom).
gato(bill).
gato(mima).

cao_grande(fido).
cao_pequeno(rover).

gato_grande(bill).
gato_pequeno(mima).

%%%%%%%%%%%%%%%% REGRAS %%%%%%%%%%%%%%%%
animal_grande(X)  :- cao(X),  cao_grande(X).
animal_grande(Y)  :- gato(Y), gato_grande(Y).

animal_pequeno(A) :- cao(A),  cao_pequeno(A).
animal_pequeno(B) :- gato(B), gato_pequeno(B).

persegue(X,Y) :-
  cao(X),
  gato(Y),
  write(X),
  write(' persegue a '),
  write(Y),
  nl.

%%%%%%%%%%%%%%%% CONSULTAS %%%%%%%%%%%%%%%%
% cao(X).
% gato(Y).
% listing(cao).
% listing(gato).
% animal_grande(Y).
% animal_pequeno(B).
% persegue(M,N)
