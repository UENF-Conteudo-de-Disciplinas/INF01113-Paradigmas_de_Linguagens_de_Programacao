// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         28/out/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      07-while_Q6.sce                    %
// %--------------------------------------------------%
// Para executar desde o editor SciNotes:   < Ctrl >< E >
clc; clear;      // limpa a Janela de comandos // remove (limpa) as variaveis do ambiente (memoria)
mprintf('\n UENF-CCT-LCMAT-Ciencia da Computacao\n');
printf(" Aluno: João Vítor Fernandes Dias - Campos %s\n\n", date());


// ======> Assunto:  Programacao: WHILE 
//Implementar a solução deste problema: Encontrar o maior número inteiro positivo N para o qual a soma 1+2+3+ ...+N é menor ou igual ao limite K.
k = 10

soma = 0
n = 0
while soma <= k
    n = n + 1
    soma = soma + n
end
soma = soma - n
n = n-1
