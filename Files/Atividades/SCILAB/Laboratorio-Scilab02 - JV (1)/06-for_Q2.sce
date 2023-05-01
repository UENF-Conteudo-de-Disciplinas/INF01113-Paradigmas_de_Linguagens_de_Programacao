// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         28/out/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      06-for_Q2.sce                      %
// %--------------------------------------------------%
// Para executar desde o editor SciNotes:   < Ctrl >< E >
clc; clear;      // limpa a Janela de comandos // remove (limpa) as variaveis do ambiente (memoria)
mprintf('\n UENF-CCT-LCMAT-Ciencia da Computacao\n');
printf(" Aluno: João Vítor Fernandes Dias - Campos %s\n\n", date());


// ======> Assunto:  Programacao: FOR ==================

//Escreva um programa que calcule a soma de N números inteiros consecutivos a partir do número X. Ambos, X e N, devem ser lidos do teclado.
N = input ("Quantidade de números inteiros consecutivos: ")
X = input ("Valor para começar a contagem: ")
v = X:1:(X+N-1)
S = sum (v)
