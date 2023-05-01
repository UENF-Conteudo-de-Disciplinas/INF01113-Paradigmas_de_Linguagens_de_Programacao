%--------------------------------------------------%
% UENF-CCT-LCMAT-CC                                %
% Disciplina:   Paradigmas de Ling. de Programacao %
% Prof.:        Ausberto S. Castro Vera            %
% Date:         21/set/2021                        %
% Aluno:        João Vítor Fernandes Dias          %
% Arquivo:      03-casa-C.pl                       %
%--------------------------------------------------%
:-style_check(-discontiguous).
%    Ver mapa da casa
%%%%%%%%%%%%%%%% FATOS %%%%%%%%%%%%%%%%
lugar(sala).
lugar(cozinha).
lugar(escritorio).
lugar(corredor).
lugar('sala de jantar').
lugar(celeiro).
lugar(jardim).

porta(escritorio, corredor).
porta(cozinha, escritorio).
porta(corredor, 'sala de jantar').
porta(cozinha, celeiro).
porta('sala de jantar', cozinha).

localizacao(escrivaninha, escritorio).
localizacao(laranja, cozinha).
localizacao(lanterna, escrivaninha).
localizacao('maq de lavar', celeiro).
localizacao(sabao, 'maq de lavar').
localizacao(verdura, cozinha).
localizacao(faca, cozinha).
localizacao(panela, cozinha).
localizacao(arroz, cozinha).
localizacao(uva, cozinha).
localizacao(biscoitos, cozinha).
localizacao(computador, escritorio).
localizacao(mesa,'sala de jantar').

comestivel(laranja).
comestivel(biscoitos).
comestivel(arroz).
comestivel(uva).

gosto_amargo(verdura).

estamos_em(cozinha).

%%%%%%%%%%%%%%%% REGRAS %%%%%%%%%%%%%%%%
conectar(X,Y) :- porta(X,Y).
conectar(X,Y) :- porta(Y,X).
lista_coisas(Lugar) :-
  localizacao(X, Lugar),
  tab(2),
  write(X),
  nl,
  fail.
  lista_coisas(_Qualquerlugar).

lista_portas(Lugar) :-
  conectar(Lugar, X),
  tab(2),
  write(X),
  nl,
  fail.
  lista_portas(_).

observar :- estamos_em(Lugar),
  write('Voce esta na '), write(Lugar), nl,
  write('Voce pode ver:'), nl,
  lista_coisas(Lugar),
  write('Voce pode ir para:'), nl,
  lista_portas(Lugar).


mover(Lugar):- retract(estamos_em(_X)), asserta(estamos_em(Lugar)).

posso_ir(Lugar):- estamos_em(X), conectar(X, Lugar).
posso_ir(Lugar):- write('Voce nao pode ir de aqui para '), write(Lugar), nl, fail.

goto(Lugar):- posso_ir(Lugar), mover(Lugar), observar.

%Construir
%  uma regra estou(Lugar) que permita fazer a consulta:
%    onde você está, quais são as coisas que você está
%    observando, e aonde você pode ir desde este lugar.
%  Uma única regra  que permita saber  os objetos que
%    estão na cozinha e são comestíveis?
%  Uma regra: "Encontrar o objeto T e o lugar R tal que
%    existe uma porta da cozinha para R e o objeto T está em R

estou(Lugar):-
  write('Voce esta no lugar '),
  write('"'), write(Lugar),write('"'), nl,
  write('Voce pode ver:'), nl,
  lista_coisas(Lugar),
  write('Voce pode ir para:'), nl,
  lista_portas(Lugar).
  
comestiveisNaCozinha:-
  localizacao(X, cozinha),
  comestivel(X),
  tab(2),
  write(X),
  nl,
  fail.
  comestiveisNaCozinha.

encontrarObjetoTnoLocalRpartindoDaCozinha(T,R):-
  porta(cozinha,R),
  localizacao(T,R).
  
