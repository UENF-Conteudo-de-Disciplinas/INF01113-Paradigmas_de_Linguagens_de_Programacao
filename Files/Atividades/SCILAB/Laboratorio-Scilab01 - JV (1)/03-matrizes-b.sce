// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         21/out/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      03-matrizes-b.sce                  %
// %--------------------------------------------------%
// Para executar desde o editor SciNotes:   < Ctrl >< E >
clc; clear;      
mprintf('\n UENF-CCT-LCMAT-Ciencia da Computacao\n');
printf(" Aluno: João Vítor Fernandes Dias - Campos %s\n\n", date());


// ======> Assunto:  MATRIZES  ==================
N = [   1 2 3 4 5   6;
        2 3 4 5 6   7; 
        3 4 5 6 7   8; 
        4 5 6 7 8   9; 
        5 6 7 8 9  10; 
        6 7 8 9 10 11]
A = N(3,4)
B = N(:, 5)
C = N(3,:)
D = N(2:4, 4:6) 
disp(A)
disp(B)
disp(C)
disp(D)
