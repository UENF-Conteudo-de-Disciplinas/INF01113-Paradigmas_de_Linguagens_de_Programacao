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
//   x + 2y = 5
//       2y = 5 - x
//        y =(5 - x)/2
//        B =(5 - x)/2
//        B = 5/2 - (1/2) * x
//        B = x * (5/(2*x) - (1/2))
//        B = x * (5/(2*x) - (x/2*x))
//        B = x * ((5-x)/(2*x))

X1 = 1               //X arbitrário
A1 = ((5-X1)/(2*X1))
B1 = A1*X1
disp (B1)
X1 = inv(A1)*B1
disp (X1)

//  2x + 3y = 8
//  2*x + 3*y =  8
//        3*y =  8 - 2*x
//          y = (8 - 2*x)/3
//          y = x*(1/x)*(8 - 2*x)/3
//          B = x*(8 - 2*x)/3*x
//          B = x*(8 - 2*x)/3*x
X2 = 3               //X arbitrário
A2 = (8 - 2*X2)/3*X2
B2 = A2*X2
disp (B2)
X2 = inv(A2)*B2
disp (X2)
