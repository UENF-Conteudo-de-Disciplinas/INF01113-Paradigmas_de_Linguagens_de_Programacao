// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Loja:   Paradigmas de Ling. de Programacao       %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         28/out/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      17-entrada_Q22.sce                 %
// %--------------------------------------------------%
// Para executar desde o editor SciNotes:   < Ctrl >< E >
clc; clear;      // limpa a Janela de comandos // remove (limpa) as variaveis do ambiente (memoria)
mprintf('\n UENF-CCT-LCMAT-Ciencia da Computacao\n');
printf(" Aluno: João Vítor Fernandes Dias - Campos %s\n\n", date());


// ======> Assunto: Programacao: Formulario de Entrada de dados ==================


Aluno = "João Vítor Fernandes Dias"
Loja = "Loja Jota"

b = "    ";

itens=["Produto"];

[ok,Produto]=getvalue([Loja;'Ingresse as Notas Parciais :'], itens, list("str",1), ["0.0"]);

mensagem ="Produto cadastrado!";

messagebox([Loja;'O produto cadastrado é: '+string([Produto]); b; mensagem], "UENF - "+Aluno);



