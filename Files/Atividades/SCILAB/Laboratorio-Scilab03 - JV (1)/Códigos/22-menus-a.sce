// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         02/set/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      22-menus.sce                       %
// %--------------------------------------------------%
clc; clear;
mprintf("\n UENF-CCT-LCMAT-Ciencia da Computacao\n");
Aluno = "João Vítor Fernandes Dias";
printf("Aluno: %s - Campos %s\n\n", Aluno, date());


// ======> Assunto: Programacao: GUI - Menus Interativos ==================

discip  = [ ...
'Paradigmas de Linguagens', ...
'Engenharia de Software', ...
'Computação Gráfica', ...
'Redes sem Fio'];
dia     = ['Segunda-feira','Quarta-feira','Quinta-feira','Sexta-feira'];
turno   = ['Manha','Tarde','Noite','Madrugada'];

//      titulo,     Numero opção default, lista-opcoes
L1=list('Disciplina',1, discip);
L2=list('Dia'       ,1, dia); 
L3=list('Horario'   ,1, turno); 

OpMatr=x_choices( ...
  [ ...
    Aluno;
    ' Escolha UMA disciplina para matricular:'
  ], ...
  list(L1,L2,L3) ...
); 

messagebox([...
    Aluno + ', você escolheu como matricula : ';
    '  '; 
    'Disciplina : ' + string(discip(OpMatr(1)));
    'Dia : '        + string(dia(OpMatr(2))); 
    'Turno : '      + string(turno(OpMatr(3))) ...
  ]);
