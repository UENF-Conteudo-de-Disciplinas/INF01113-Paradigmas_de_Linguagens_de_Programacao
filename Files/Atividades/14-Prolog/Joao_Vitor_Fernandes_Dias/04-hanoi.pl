%--------------------------------------------------%
% UENF-CCT-LCMAT-CC                                %
% Disciplina:   Paradigmas de Ling. de Programacao %
% Prof.:        Ausberto S. Castro Vera            %
% Date:         21/set/2021                        %
% Aluno:        João Vítor Fernandes Dias          %
% Arquivo:      04-hanoi.pl                        %
%--------------------------------------------------%
:-style_check(-discontiguous).
%     X = esquerda      Y = direita
mover(1,X,Y,_) :-
  write('Mover disco do topo da torre  '),
  write(X),
  write(' para a torre '),
  write(Y),
  nl.


mover(Ndiscos,Esquerda,Direita,Centro) :-
  Ndiscos > 1, M is Ndiscos - 1,
  mover(M,Esquerda,Centro,Direita),
  mover(1,Esquerda,Direita,_),
  mover(M,Centro,Direita,Esquerda).