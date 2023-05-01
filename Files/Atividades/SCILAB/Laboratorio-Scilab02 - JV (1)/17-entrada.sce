// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         28/out/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      17-entrada.sce.sce                 %
// %--------------------------------------------------%
// Para executar desde o editor SciNotes:   < Ctrl >< E >
clc; clear;      // limpa a Janela de comandos // remove (limpa) as variaveis do ambiente (memoria)
mprintf('\n UENF-CCT-LCMAT-Ciencia da Computacao\n');
printf(" Aluno: João Vítor Fernandes Dias - Campos %s\n\n", date());


// ======> Assunto: Programacao: Formulario de Entrada de dados ==================

b = "    ";

itens=["Provas";"Praticas";"Pesquisa"];

[ok,Provas,Praticas,Pesquisa]=getvalue([Disciplina;'Ingresse as Notas Parciais :'], itens, list("vec",1,"vec",1,"vec",1), ["0.0";"0.0";"0.0"]);
media=mean([Provas,Praticas,Pesquisa]);

if media > 5 then 
  mensagem ="Parabens! APROVADO!" ;
  else mensagem = "Infelizmente, voce foi REPROVADO";
end

messagebox([Disciplina;'A MEDIA FINAL É: '+string(media); b; mensagem], "UENF - "+Aluno);


