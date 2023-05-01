%--------------------------------------------------%
% UENF-CCT-LCMAT-CC                                %
% Disciplina:   Paradigmas de Ling. de Programacao %
% Prof.:        Ausberto S. Castro Vera            %
% Date:         30/set/2021                        %
% Aluno:        João Vítor Fernandes Dias          %
% Arquivo:      maior.pl                           %
%--------------------------------------------------%
:-style_check(-discontiguous).

maior(X,Y,Z) :-  X>=Y,X>=Z,write(X).
maior(X,Y,Z) :-  Y>=X,Y>=Z,write(Y).
maior(X,Y,Z) :-  Z>=X,Z>=Y,write(Z).

