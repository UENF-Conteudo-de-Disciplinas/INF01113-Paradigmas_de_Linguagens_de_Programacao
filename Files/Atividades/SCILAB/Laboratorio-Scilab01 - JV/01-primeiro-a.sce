// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         21/out/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      01-primeiro-a.sce                  %
// %--------------------------------------------------%
// Para executar desde o editor SciNotes:   < Ctrl >< L >
clc; clear;      // limpa a Janela de comandos // remove (limpa) as variaveis do ambiente (memoria)
mprintf('\n UENF-CCT-LCMAT-Ciencia da Computacao\n');
printf(" Aluno: João Vítor Fernandes Dias - Campos %s\n\n", date());


// ======> Assunto:  Primeiro programa - Comandos Basicos

// Atribuicao
a = 1                       // SEM ponto e virgula: mostrar o resultado
b = 2;                      // COM ponto e vírgula, NAO mostrar o resultado
c = [ 3 4 5]                // vetor
d = [ 9 8 7; 6 5 4; 3 2 1]  // matriz
e = 'UENF'                  // string

// Vetores
v1 = 1:2
v2 = 3:4:5
v3 = 1.2:3.4:5.6

Telefone=input("Qual e o numero de seu telefone? ","string")
printf('O numero de telefone digitado: %s',Telefone);
