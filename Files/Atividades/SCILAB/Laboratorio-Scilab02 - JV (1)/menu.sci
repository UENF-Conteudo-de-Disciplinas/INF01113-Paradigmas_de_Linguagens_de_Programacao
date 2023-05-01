// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         28/out/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      menu.sci                           %
// %--------------------------------------------------%
// Para executar desde o editor SciNotes:   < Ctrl >< E >
clc; clear;      // limpa a Janela de comandos // remove (limpa) as variaveis do ambiente (memoria)
mprintf('\n UENF-CCT-LCMAT-Ciencia da Computacao\n');
printf(" Aluno: João Vítor Fernandes Dias - Campos %s\n\n", date());


// ======> Assunto:  SELECT-CASE ==================
resultado = 0

X = input('Digite um número: ');
Y = input('Digite outro número: ');
Op = input ("Digite a operação\n(+, -, /, *): ", 's')
  
select Op
  case '+' then
    resultado = X + Y
  case '-' then
    resultado = X - Y
  case '/' then
    resultado = X / Y
  case '*' then
    resultado = X * Y
  else
    break
end;   //   select


printf("Resultado Final: %d", resultado)
