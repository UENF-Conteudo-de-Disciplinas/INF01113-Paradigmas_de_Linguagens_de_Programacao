%--------------------------------------------------%
% UENF-CCT-LCMAT-CC                                %
% Disciplina:   Paradigmas de Ling. de Programacao %
% Prof.:        Ausberto S. Castro Vera            %
% Date:         21/set/2021                        %
% Aluno:        João Vítor Fernandes Dias          %
% Arquivo:      02-familia-B.pl                    %
%--------------------------------------------------%
:-style_check(-discontiguous).
%%%%%%%%%%%%%%%% FATOS %%%%%%%%%%%%%%%%
  homem(adam).
  homem(pedro).
  homem(paulo).
  mulher(maria).
  mulher(eva).
  mulher(martha).
  pai(adam,pedro). % significa adam eh pai de pedro
  pai(adam,paulo).
  marido(adam,eva).
  esposa(eva,adam).
  mae(eva,maria).
  mae(eva,pedro).
  irma(eva,martha).

%%%%%%%%%%%%%%%% REGRAS %%%%%%%%%%%%%%%%
  filho(F,P):-homem(F),pai(P,F).
  filho(F,M):-homem(F),mae(M,F).
  
  filha(F,P):-mulher(F),pai(P,F).
  filha(F,M):-mulher(F),mae(M,F).


%%%%%%%%%%%%%%%% FATOS %%%%%%%%%%%%%%%%
  filha(maria,eva).
  filha(maria,adam).
  filha(suzana,martha).
  
% Completar as regras:
  irmao(A,B):- homem(A), pai(X,A), pai(X,B), mae(Y,A), mae(Y,B).
  irma(X,Y) :-mulher(A), pai(X,A), pai(X,B), mae(Y,A), mae(Y,B).
  prima(A,B):-mulher(A), pai(X,A), irmao(X,Y), pai(Y,B).
  prima(A,B):-mulher(A), pai(X,A), irmao(X,Y), mae(Y,B).
  prima(A,B):-mulher(A), mae(X,A), irma(X,Y), pai(Y,B).
  prima(A,B):-mulher(A), mae(X,A), irma(X,Y), mae(Y,B).
  tia(A,B)  :-mulher(A), irma(A,X), pai(X,B).
  tia(A,B)  :-mulher(A), irma(A,X), mae(X,B).
  
