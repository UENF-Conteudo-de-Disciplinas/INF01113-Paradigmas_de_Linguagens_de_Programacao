%-------------------------------------------------%
% programa 08-Minha_Familia-BaseDeConhecimento.pl %
% Prof. Ausberto S. Castro Vera                   %
% Disciplina : Paradigmas de Ling. de Programacao %
% UENF-CCT-LCMAT-CC                               %
% Date:  23/set/2021                              %
% Aluno: Joao Vitor Fernandes Dias                %
%-------------------------------------------------%
:-style_check(-discontiguous).
 % FATOS
  homem(joaovitor).
  homem(daniel).
  homem(everton).
  homem(cleberson).
  homem(filipe).
  homem(antoniocarlos).
  homem(rodolphojr).
  homem(adilson).
  homem(flavio).
  homem(rodolfo).
  homem(leonardo).
  homem(rodolpho).
  homem(fernando).
  mulher(leticia).
  mulher(julia).
  mulher(laura).
  mulher(ludmila).
  mulher(mariaeduarda).
  mulher(fernanda).
  mulher(fabiane).
  mulher(franciane).
  mulher(valeria).
  mulher(philomena).
  mulher(nailza).

  pai(antoniocarlos,    joaovitor       ).
  pai(antoniocarlos,    daniel          ).
  mae(fernanda,         joaovitor       ).
  mae(fernanda,         daniel          ).
  pai(adilson,          cleberson       ).
  pai(adilson,          everton         ).
  pai(adilson,          ludmila         ).
  mae(valeria,          cleberson       ).
  mae(valeria,          everton         ).
  mae(valeria,          ludmila         ).
  pai(flavio,           filipe          ).
  pai(flavio,           mariaeduarda    ).
  mae(flavio,           filipe          ).
  mae(flavio,           mariaeduarda    ).
  pai(rodolfo,          leticia         ).
  pai(rodolfo,          julia           ).
  mae(fabiane,          leticia         ).
  mae(fabiane,          julia           ).
  pai(rodolfo,          filipe          ).
  pai(rodolfo,          julia           ).
  mae(fabiane,          leticia         ).
  mae(fabiane,          julia           ).
  pai(leonardo,         laura           ).
  mae(franciane,        laura           ).
  pai(fernando,         fernanda        ).
  pai(fernando,         fabiane         ).
  pai(fernando,         flavio          ).
  pai(fernando,         franciane       ).
  mae(nailza,           fernanda        ).
  mae(nailza,           fabiane         ).
  mae(nailza,           flavio          ).
  mae(nailza,           franciane       ).
  pai(rodolpho,         antoniocarlos   ).
  pai(rodolpho,         valeria         ).
  pai(rodolpho,         rodolphojr      ).
  mae(philomena,        antoniocarlos   ).
  mae(philomena,        valeria         ).
  mae(philomena,        rodolphojr      ).

 % REGRAS

  filho(F,P):-     homem(F),pai(P,F).
  filho(F,M):-     homem(F),mae(M,F).
  
  filha(F,P):-     mulher(F),pai(P,F).
  filha(F,M):-     mulher(F),mae(M,F).

  irma(A,B):-    mulher(A), pai(P,A), pai(P,B), not(A=B).
  irma(A,B):-    mulher(A), mae(P,A), mae(P,B), not(A=B).

  irmao(A,B):-   homem(A), pai(M,A), pai(M,B), not(A=B).
  %irmao(A,B):-   homem(A), mae(M,A), mae(M,B), not(A=B).

  avos(AVO,NETO):- filho(NETO,PAI), filho(PAI,AVO).
  avos(AVO,NETO):- filho(NETO,MAE), filha(MAE,AVO).
  avos(AVO,NETA):- filha(NETA,PAI), filho(PAI,AVO).
  avos(AVO,NETA):- filha(NETA,MAE), filha(MAE,AVO).

