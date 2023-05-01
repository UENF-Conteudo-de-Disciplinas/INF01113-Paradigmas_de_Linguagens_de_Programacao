// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         28/out/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      13-graficos3D.sce                  %
// %--------------------------------------------------%
// Para executar desde o editor SciNotes:   < Ctrl >< E >
clc; clear;      // limpa a Janela de comandos // remove (limpa) as variaveis do ambiente (memoria)
mprintf('\n UENF-CCT-LCMAT-Ciencia da Computacao\n');
printf(" Aluno: João Vítor Fernandes Dias - Campos %s\n\n", date());


// ======> Assunto:  Programacao: GRAFICOS III ==================

// propriedades da figura: NÃO alterar !!
dt=getdate(); dd= ' ('+string(dt(7)) + ':'+string(dt(8))+')' ;

// propriedades da figura
Aluno = "João Vítor Fernandes Dias"
f=gcf();
f.figure_name='UENF CCT LCMAT CC - 2021 - '+ Aluno;

h=get("hdl");

x = 0:0.1:2*%pi;    // mudar o intervalo para  0.01, 0.2
y = 0:0.1:2*%pi;    //            " 
z = sin(x')*cos(y);

plot3d(x,y, z);     // graficos 3D

f=get("current_figure");         // get the handle of the parent figure 
f.color_map=hotcolormap(10);      // muda o colormap   5, 7, 9
 
xtitle('z = sin(x'')*cos(y)');   // titulo do grafico
