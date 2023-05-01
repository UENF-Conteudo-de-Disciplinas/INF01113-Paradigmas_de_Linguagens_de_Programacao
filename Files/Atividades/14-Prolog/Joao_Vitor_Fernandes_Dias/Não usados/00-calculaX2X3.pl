%--------------------------------------------------%
% UENF-CCT-LCMAT-CC                                %
% Disciplina:   Paradigmas de Ling. de Programacao %
% Prof.:        Ausberto S. Castro Vera            %
% Date:         21/set/2021                        %
% Aluno:        João Vítor Fernandes Dias          %
% Arquivo:      00-calculadoraX2X3.pl              %
%--------------------------------------------------%

  quadrado  :-  write('Escreva um valor: '),read(X),calculaquadrado (X).
  cubo      :-  write('Escreva um valor: '),read(X),calculaCubo     (X).

%%%-----------------------------------------------------

calculaquadrado(fim) :- !.
calculaquadrado(N) :-
              Q is N*N,
              write('O quadrado de '),
              write(N), write(' eh '),
              write(Q), nl, quadrado.
 %%%-----------------------------------------------------
calculaCubo(fim) :- !.
calculaCubo(N) :-
              C is N*N*N,
              write('O cubo de '),
              write(N), write(' eh '),
              write(C), nl, cubo.

 %%%-----------------------------------------------------
dobro:- write('Por favor ingresse um numero : '),
                         read(X),nl,
                         write('O dobro de '), write(X), write(' eh '), Y is 2*X,
                         write(Y),nl.
 %%%-----------------------------------------------------
