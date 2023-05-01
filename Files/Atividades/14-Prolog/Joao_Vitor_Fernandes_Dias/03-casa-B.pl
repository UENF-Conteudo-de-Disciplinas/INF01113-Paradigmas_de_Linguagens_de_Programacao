%--------------------------------------------------%
% UENF-CCT-LCMAT-CC                                %
% Disciplina:   Paradigmas de Ling. de Programacao %
% Prof.:        Ausberto S. Castro Vera            %
% Date:         21/set/2021                        %
% Aluno:        João Vítor Fernandes Dias          %
% Arquivo:      03-casa-B.pl                       %
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

estamos_em(escritorio).

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


%Adicionar ao programa 03-casa.pl pelo menos três lugares com três objetos
%cada um e fazer os respectivos testes positivos (resposta verdadeira, Yes)
%e negativos (resposta falsa, No), listando:
%  Lugares que tenham conexão entre si
%  Objetos de um determinado lugar
%  Altere o comando aqui(X) para outro lugar e execute o comando observar


lugar(varanda).
lugar(quarto).
lugar(banheiro).
localizacao(torneira,    varanda).
localizacao(ferramentas, varanda).
localizacao(parafusos,   varanda).
localizacao(cama,        quarto).
localizacao(computador,  quarto).
localizacao(cortina,     quarto).
localizacao(espelho,     banheiro).
localizacao(escova,      banheiro).
localizacao(toalha,      banheiro).
