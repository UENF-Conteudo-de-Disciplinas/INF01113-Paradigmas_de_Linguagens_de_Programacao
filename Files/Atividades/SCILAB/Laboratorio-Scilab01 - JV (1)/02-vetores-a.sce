// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         21/out/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      02-vetores-a.sce                   %
// %--------------------------------------------------%
// Para eNecutar desde o editor SciNotes:   < Ctrl >< L >
clc; clear;      
mprintf('\n UENF-CCT-LCMAT-Ciencia da Computacao\n');
printf(" Aluno: João Vítor Fernandes Dias - Campos %s\n\n", date());


// ======> Assunto:  VETORES   ==================

// Considere N um número inteiro maior que 5.
// Construir em Scilab uma matriz formada por elementos da seguinte maneira:
// Na primeira linha, 	os N números inteiros qualquer.
// Na segunda linha, 	os quadrados respectivos.
// Na terceira linha, 	os cubos respectivos
// Na quarta linha, 	cada elemento da primeira linha multiplicado por 10.
N = 0
while N<=5
     N=round(input("Digite um número inteiro maior que 5 (Se não for inteiro, será arredondado para o inteiro mais próximo):"))
     printf("Número digitado: %d", N)
end

l1 = rand(0,N)
l2 = l1.^2
l3 = l1.^3
l4 = l1.*10
M = [l1;l2;l3;l4]
