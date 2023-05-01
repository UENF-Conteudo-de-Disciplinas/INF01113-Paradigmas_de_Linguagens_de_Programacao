// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         21/out/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      04-polinomio.sce                   %
// %--------------------------------------------------%
// Para executar desde o editor SciNotes:   < Ctrl >< E >
clc; clear;      
mprintf('\n UENF-CCT-LCMAT-Ciencia da Computacao\n');
printf(" Aluno: João Vítor Fernandes Dias - Campos %s\n\n", date());


// ======> Assunto: POLINOMIOS ==================

p = poly([1 3],'x')         // polinomio em x com duas raizes p(x)=(x-1)(x-3)      
q = poly([2 -1 0],'s')      //  q(s) = (s-2)(s+1)s   ;tres raizes 2,-1,0
t= poly([ 2 3 4],'x','c')   // polinomio com coeficientes 2, 3 e 4
raizesq = roots(q)          // raizes do polinomio q
disp("Execução terminada...");
