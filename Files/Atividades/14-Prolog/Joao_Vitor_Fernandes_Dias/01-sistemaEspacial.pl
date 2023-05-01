%--------------------------------------------------%
% UENF-CCT-LCMAT-CC                                %
% Disciplina:   Paradigmas de Ling. de Programacao %
% Prof.:        Ausberto S. Castro Vera            %
% Date:         21/set/2021                        %
% Aluno:        João Vítor Fernandes Dias          %
% Arquivo:      01-sistemaEspacial.pl              %
%--------------------------------------------------%
:-style_check(-discontiguous).
%%%%%%%%%%%%%%%% FATOS %%%%%%%%%%%%%%%%
estrela(sol).
estrela(sirius).
estrela(betelgeuse).
estrela(canopus).
estrela(arcturus).
estrela(vega).
estrela(capella).
%%
estrela(rigel).
estrela(procion).
%%
orbita(mercurio ,sol).
orbita(venus    ,sol).
orbita(terra    ,sol).
orbita(marte    ,sol).
orbita(jupiter  ,sol).
orbita(saturno  ,sol).
orbita(urano    ,sol).
orbita(netuno   ,sol).
%%
orbita(lua        ,terra).
orbita(phobos     ,marte).
orbita(deimos     ,marte).
orbita(ganimedes  ,jupiter).
orbita(callisto   ,jupiter).
orbita(europa     ,jupiter).
orbita(titan      ,saturno).
%%
ssolar(sol).
%%%%%%%%%%%%%%%% REGRAS %%%%%%%%%%%%%%%%
planeta(P):-orbita(P,sol).
satelite(S):- orbita(S,P), planeta(P).
ssolar(B):-planeta(B).
ssolar(B):-satelite(B).
