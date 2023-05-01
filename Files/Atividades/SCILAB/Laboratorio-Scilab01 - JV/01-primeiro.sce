// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         21/out/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      01-primeiro.sce                    %
// %--------------------------------------------------%
// Para executar desde o editor SciNotes:   < Ctrl >< L >
clc; clear;      // limpa a Janela de comandos // remove (limpa) as variaveis do ambiente (memoria)
mprintf('\n UENF-CCT-LCMAT-Ciencia da Computacao\n');
printf(" Aluno: João Vítor Fernandes Dias - Campos %s\n\n", date());


// ======> Assunto:  Primeiro programa - Comandos Basicos

// Atribuicao
x = 23                      // SEM ponto e virgula: mostrar o resultado
y = 24;                     // COM ponto e vírgula, NAO mostrar o resultado
z = [ 1 2 3]                // vetor
w = [ 1 2 3; 4 5 6; 7 8 9]  // matriz
s = 'UENF'                  // string

// Vetores
v1 = 2:7
v2 = 2:2:11
v3 = 1.5:0.3:3.8

Matricula=input(" Qual e o numero da sua matricula? ","string")
printf('\n\nO numero de matricula digitado: %s',Matricula);
