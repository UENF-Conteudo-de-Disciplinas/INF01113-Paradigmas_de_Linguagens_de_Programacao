// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         21/out/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      03-matrizes-c.sce                  %
// %--------------------------------------------------%
// Para executar desde o editor SciNotes:   < Ctrl >< E >
clc; clear;      
mprintf('\n UENF-CCT-LCMAT-Ciencia da Computacao\n');
printf(" Aluno: João Vítor Fernandes Dias - Campos %s\n\n", date());


// ======> Assunto:  MATRIZES  ==================
X = [   1 2 3 4;
        4 5 6 7;
        7 8 9 0]
disp(diag(X))
disp(diag(X,1))
disp(diag(X,-1))
disp(diag([ 5 7 9]))

// N = [   1 2 3 4 5   6; 
//         2 3 4 5 6   7; 
//         3 4 5 6 7   8; 
//         4 5 6 7 8   9; 
//         5 6 7 8 9  10; 
//         6 7 8 9 10 11]
        
        
// disp(diag(N))
// disp(diag(N,1))
// disp(diag(N,-1))
// disp(diag([ 5 7 9]))
