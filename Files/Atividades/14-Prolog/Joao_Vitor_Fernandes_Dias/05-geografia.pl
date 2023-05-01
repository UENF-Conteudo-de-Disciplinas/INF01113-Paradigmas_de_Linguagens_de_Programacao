%--------------------------------------------------%
% UENF-CCT-LCMAT-CC                                %
% Disciplina:   Paradigmas de Ling. de Programacao %
% Prof.:        Ausberto S. Castro Vera            %
% Date:         21/set/2021                        %
% Aluno:        João Vítor Fernandes Dias          %
% Arquivo:      05-geografia.pl                    %
%--------------------------------------------------%
:-style_check(-discontiguous).
%%%%%%%%%%%%%%%%  FATOS %%%%%%%%%%%%%%%%
capital     (brasilia       , brasil).
capital     (lima           , peru).
capital     (lima           , america_do_sul).
capital     (santiago       , chile).
capital     (quito          , equador).
capital     (montevideo     , uruguai).
capital     (bogota         , colombia).
capilat     (lapaz          , bolivia).
capital     (buenosaires    , argentina).
capital     (caracas        , venezuela).
%%
esta_em     (lima           , america_do_sul).
esta_em     (peru           , america_do_sul).
esta_em     (brasil         , america_do_sul).
esta_em     (saopaulo       , america_do_sul).
esta_em     (saopaulo       , brasil).
esta_em     (rio            , brasil).
esta_em     (campos         , brasil).
esta_em     (campos         , rio).
esta_em     (riodejaneiro   , rio).
esta_em     (riodejaneiro   , brasil).
esta_em     (riodejaneiro   , america_do_sul).
esta_em     (niteroi        , rio).
esta_em     (macae          , rio).
esta_em     (petropolis     , rio).
esta_em     (volta_redonda  , rio).
esta_em     (brasilia       , brasil).
esta_em     (recife         , brasil).
esta_em     (fortaleza      , brasil).
esta_em     (campinas       , brasil).
esta_em     (curitiba       , brasil).
esta_em     (curitiba       , parana).
limita_com  (peru           , brasil).
limita_com  (bolivia        , brasil).
limita_com  (chile          , peru).
limita_com  (peru           , chile).
limita_com  (equador        , peru).
limita_com  (peru           , equador)

%%%%%%%%%%%%%%%% REGRAS %%%%%%%%%%%%%%%%
%
% Viagem_nacional(X, Y):-
% Viagem_internacional(PaisA, PaisB) :-