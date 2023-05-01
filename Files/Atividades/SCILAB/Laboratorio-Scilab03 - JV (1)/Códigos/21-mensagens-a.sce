// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         02/set/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      21-mensagens.sce                   %
// %--------------------------------------------------%
clc; clear;
mprintf("\n UENF-CCT-LCMAT-Ciencia da Computacao\n");
Aluno = "João Vítor Fernandes Dias";
printf("Aluno: %s - Campos %s\n\n", Aluno, date());


// ======> Assunto: Programacao: GUI - Entrada de Dados ==================
// Mudar o programa para incorporar uma segunda pergunta, dependendo da resposta da primeira.

function output = pergunta2 (texto)
  output = messagebox(...
  texto,...
  "PERGUNTA 2", "question",...
  ["Sim", "Não"], ...
  "modal");
endfunction


function caixa_de_texto (texto)
  output = messagebox(...
  texto,...
  "Texto", "warning"...
  );
endfunction

r = messagebox(...
  [...
    Aluno + ', voce está com Notas muito baixas...';
    ' ';
    'Precisa de outra prova?'...
  ],...
  "Prof. Ausberto Castro - UENF", "info",...
  [...
    "Sim", "Não"...
  ], "modal");

if (r == 1)
  then
    msg1 = "Tem certeza?"
  else
    msg1 = "Você acha mesmo que vai passar sem outra prova?"
end;

s = pergunta2(msg1)

t =  (r + 2*s)-2

select (t)
  case 1 then
    msg2 = "Você terá outra chance de fazer a prova."
  case 2 then
    msg2 = "Boa sorte."
  case 3 then
    msg2 = "Tudo bem, então você não terá outra chance de fazer a prova."
  case 4 then
    msg2 = "Cuidado, você provavelmente repetirá."
end

caixa_de_texto (msg2)
