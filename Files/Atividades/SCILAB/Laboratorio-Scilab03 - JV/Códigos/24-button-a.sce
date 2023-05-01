// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         02/set/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      24-button.sce                      %
// %--------------------------------------------------%
clc; clear;
mprintf("\n UENF-CCT-LCMAT-Ciencia da Computacao\n");
Aluno = "João Vítor Fernandes Dias";
printf("Aluno: %s - Campos %s\n\n", Aluno, date());


// ======> Assunto:  buttons ==================
function caixa_de_texto(texto)
  output = messagebox(...
  texto,...
  "UENF"...
  );
endfunction


function output = pergunta(texto, options)
  output = messagebox(...
  texto,...
  "PERGUNTA", "question",...
  options, ...
  "modal");
endfunction

cores = ['Azul','Bronze','Caramelo','Dourado'];
msg1  = "Qual a melhor cor?";

resposta = pergunta(msg1, cores)
msg2 = "Então você deve gostar da letra "
select (resposta) // time é um string
  case 1 then
    msg3 = msg2 + "A"
  case 2  then
    msg3 = msg2 + "B"
  case 3  then
    msg3 = msg2 + "C"
  case 4  then
    msg3 = msg2 + "D"
end;   //   select

caixa_de_texto (msg3)
