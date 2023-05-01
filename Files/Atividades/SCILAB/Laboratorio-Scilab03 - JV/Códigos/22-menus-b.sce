// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % frutaslina:   Paradigmas de Ling. de Programacao %
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

frutas  = [ ...
'Abacaxi', ...
'Banana', ...
'Carambola', ...
'Damasco'];
cores     = ['Azul','Bronze','Caramelo','Dourado'];
animais   = ['Avestruz','Baleia','Caracol','Dromedário'];

//      titulo,     Numero opção default, lista-opcoes
L1=list('frutas',  1, frutas );
L2=list('cores'   ,1, cores  ); 
L3=list('animais' ,1, animais); 

OpMatr=x_choices( ...
  [ ...
    Aluno;
    ' Escolha os seus preferidos:'
  ], ...
  list(L1,L2,L3) ...
); 

messagebox([...
    Aluno + ', você escolheu como preferidos: ';
    '  '; 
    'frutas : '  + string(frutas(OpMatr(1)));
    'cores : '   + string(cores(OpMatr(2))); 
    'animais : ' + string(animais(OpMatr(3))) ...
  ]);
