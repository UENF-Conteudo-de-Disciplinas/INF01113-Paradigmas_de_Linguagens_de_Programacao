%--------------------------------------------------%
% UENF-CCT-LCMAT-CC                                %
% Disciplina:   Paradigmas de Ling. de Programacao %
% Prof.:        Ausberto S. Castro Vera            %
% Date:         21/set/2021                        %
% Aluno:        João Vítor Fernandes Dias          %
% Arquivo:      00-calculadora.pl                  %
%--------------------------------------------------%

soma      (A,B,Resultado  ):- Resultado is A+B.
resta     (X,Y,Resultado  ):- Resultado is X-Y.
multip    (C,D,Resultado  ):- Resultado is C*D.
quadrado  (X,Resultado    ):- Resultado is X*X.
divide    (X,Y,Resultado  ):- Resultado is X/Y, Y >0.


