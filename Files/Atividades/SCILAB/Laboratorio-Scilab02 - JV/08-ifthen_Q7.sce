// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         28/out/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      08-ifthen_Q7.sce                   %
// %--------------------------------------------------%
// Para executar desde o editor SciNotes:   < Ctrl >< E >
clc; clear;      // limpa a Janela de comandos // remove (limpa) as variaveis do ambiente (memoria)
mprintf('\n UENF-CCT-LCMAT-Ciencia da Computacao\n');
printf(" Aluno: João Vítor Fernandes Dias - Campos %s\n\n", date());


// ======> Assunto:  Programacao:  IF-THEN-ELSE ================

//Fazer um programa que diga se o número digitado é par ou ímpar. Utilize a função modulo(n,m) 
testarNumero = input ("Digite um número inteiro positivo para testar se é impar ou par: ")
printf("O número %d é ", testarNumero);
if modulo(testarNumero, 2) == 1 then
    printf("ÍM")
end
printf("PAR.")

