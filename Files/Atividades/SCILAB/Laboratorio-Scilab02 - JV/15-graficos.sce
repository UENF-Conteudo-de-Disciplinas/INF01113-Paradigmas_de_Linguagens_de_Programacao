// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         28/out/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      15-graficos.sce                    %
// %--------------------------------------------------%
// Para executar desde o editor SciNotes:   < Ctrl >< E >
clc; clear;      // limpa a Janela de comandos // remove (limpa) as variaveis do ambiente (memoria)
mprintf('\n UENF-CCT-LCMAT-Ciencia da Computacao\n');
printf(" Aluno: João Vítor Fernandes Dias - Campos %s\n\n", date());


// ======> Assunto: GRAFICOS V ==================

// propriedades da figura: NÃO alterar !!
dt=getdate(); dd= ' ('+string(dt(7)) + ':'+string(dt(8))+')' ;

// propriedades da figura
a=gcf();
a.figure_name='UENF - 2021 - '+ Aluno + dd;  ;

t=[0:0.05:4*%pi]';
f=3+sin(t);
g=2+cos(t+%pi/2);

plot2d(t , [f g]);
legends(['f = 6+sin(t)';'g=4+cos(t)'],[1 2],opt="ur"); // ul, ll,lr

da=gca();
da.title.font_size = 5;
da.title.font_foreground = 5;    // 5=vermelho
da.title.text="Gráficos de f = 6+sin(t)  e   g = 4+cos(t)";
da.x_label.text="Tempo"; 
da.data_bounds=[0,0; 13,4.2] // valores Max-min permitidos na visualização do grafico
