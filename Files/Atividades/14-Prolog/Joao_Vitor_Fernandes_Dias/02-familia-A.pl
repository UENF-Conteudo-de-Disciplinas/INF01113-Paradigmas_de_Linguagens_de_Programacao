%--------------------------------------------------%
% UENF-CCT-LCMAT-CC                                %
% Disciplina:   Paradigmas de Ling. de Programacao %
% Prof.:        Ausberto S. Castro Vera            %
% Date:         21/set/2021                        %
% Aluno:        João Vítor Fernandes Dias          %
% Arquivo:      02-familia-A.pl                    %
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
