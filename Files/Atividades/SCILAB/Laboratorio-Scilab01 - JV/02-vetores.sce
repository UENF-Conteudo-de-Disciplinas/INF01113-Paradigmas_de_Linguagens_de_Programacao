// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         19/out/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      02-vetores.sce                     %
// %--------------------------------------------------%
// Para executar desde o editor SciNotes:   < Ctrl >< L >
clc; clear;      
mprintf('\n UENF-CCT-LCMAT-Ciencia da Computacao\n');
printf(" Aluno: João Vítor Fernandes Dias - Campos %s\n\n", date());


// ======> Assunto:  VETORES   ==================

v1 = 3:10 
v2 = 23:2:31
v3 = 1.2:0.2:2.2

soma    = v1(3) + v3(5)
produto = v1(5) * v3(3) + v1(2) * v2(4)

printf("Vetor04 = ")
for k = 7:4:31
  printf("%d ",k)
end

Vetor04 = 7:4:31

x=input(" Qual é o elemento do Vetor04, que deseja ver? ")
printf("O elemento solicitado : %d",Vetor04( evstr(x) ))
