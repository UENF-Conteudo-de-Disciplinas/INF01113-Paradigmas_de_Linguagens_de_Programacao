// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         28/out/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      14-graficos_Q19.sce                %
// %--------------------------------------------------%
// Para executar desde o editor SciNotes:   < Ctrl >< E >
clc; clear;      // limpa a Janela de comandos // remove (limpa) as variaveis do ambiente (memoria)
mprintf('\n UENF-CCT-LCMAT-Ciencia da Computacao\n');
printf(" Aluno: João Vítor Fernandes Dias - Campos %s\n\n", date());


// ======> Assunto: GRAFICOS IV ==================

// propriedades da figura: NÃO alterar !!
dt=getdate(); dd= ' ('+string(dt(7)) + ':'+string(dt(8))+')' ;
// propriedades da figura
f=gcf();
Aluno = "João Vítor Fernandes Dias"
f.figure_name='UENF - CCT - LCMAT - CC - 2021 - '+ Aluno;  

x = -2*%pi:0.1:2*%pi;   
y1 = 2*(x**2) + 5*x -3
y2 = x**3 +3*x +1
y3 = (x-2).*(x+2).*(x-5) 
 
subplot(221)  // 221 =matriz 2x2 sub-grafico 1
plot(x,y1,'r');
// propriedades dos eixos
da1=gca(); // 
da1.title.font_size = 5;
da1.title.font_foreground = 5;    // 5=vermelho
da1.title.text="2*(x**2) + 5*x -3";
da1.x_label.text="Tempo"; 
da1.x_location='middle'; 
da1.y_label.text="2*(x**2) + 5*x -3"; 

subplot(222)  // 222 =matriz 2x2 sub-grafico 2
plot(x,y2);
// propriedades dos eixos
da2=gca(); // 
da2.title.font_size = 5;
da2.title.font_foreground = 3;    // 3=verde
da2.title.text="x**3 +3*x +1";
da2.x_label.text="Tempo"; 
da2.x_location='middle'; 
da2.y_label.text="x**3 +3*x +1"; 

subplot(223)  // 223 =matriz 2x2 sub-grafico 3
plot(x,y3,'g');
// propriedades dos eixos
da3=gca(); // 
da3.title.font_size = 5;
da3.title.font_foreground = 12;    // 12=azul
da3.title.text="(x-2).*(x+2).*(x-5) ";
da3.x_label.text="Tempo"; 
da3.x_location='middle'; 
da3.y_label.text="(x-2).*(x+2).*(x-5) "; 
