// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         21/out/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      02-vetores-b.sce                   %
// %--------------------------------------------------%
// Para eNecutar desde o editor SciNotes:   < Ctrl >< L >
clc; clear;      
mprintf('\n UENF-CCT-LCMAT-Ciencia da Computacao\n');
printf(" Aluno: João Vítor Fernandes Dias - Campos %s\n\n", date());


// ======> Assunto:  VETORES   ==================


// 6.	Como somar os k-ésimos e n-ésimos elementos de um vetor?
//      (elementos de índice k e n, respectivamente, de um vetor)
v1 = 3:10 
v2 = 23:2:31

n = 2
k = 3

soma    = v1(k) + v2(n)
