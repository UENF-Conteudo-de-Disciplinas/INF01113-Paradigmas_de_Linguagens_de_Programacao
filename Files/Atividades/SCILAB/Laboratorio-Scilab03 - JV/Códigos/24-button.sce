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

//--------------- coisas de Futebol --------------------------------------------
time=messagebox("Qual é o melhor time do Brasil?","modal", "info", ...
['Atetico-MG' 'Fortaleza' 'Flamengo' 'Internacional']);

select (time) // time é um string
  case 1 then
    messagebox([Aluno; 'Atletico-MG 2 - 1 Cuiabá!'],"UENF");
  case 2  then
    messagebox([Aluno; 'Fortaleza 3 - 0 CAParanaense'],"UENF");       
  case 3  then
    messagebox([Aluno; 'Flamengo  1 - 3 Fluminense'],"UENF");
  case 4  then
    messagebox([Aluno; 'O Campeão Mundial 2006...'; ' ';'Inter 2 - 2 Corinthians'],"UENF");          
end;   //   select
