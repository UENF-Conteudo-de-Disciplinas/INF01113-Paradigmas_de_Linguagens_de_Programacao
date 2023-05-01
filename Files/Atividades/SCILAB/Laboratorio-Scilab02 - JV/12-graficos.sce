// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         28/out/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      12-graficos.sce                    %
// %--------------------------------------------------%
// Para executar desde o editor SciNotes:   < Ctrl >< E >
clc; clear;      // limpa a Janela de comandos // remove (limpa) as variaveis do ambiente (memoria)
mprintf('\n UENF-CCT-LCMAT-Ciencia da Computacao\n');
printf(" Aluno: João Vítor Fernandes Dias - Campos %s\n\n", date());


// ======> Assunto:  Programacao: GRAFICOS II ==================
clf();

x = 1:0.1:50;  // 
y = x.*cos(x);
plot(x, y);

xtitle('y = xcos(x)');   // titulo do grafico

// propriedades da figura
f=gcf();
f.figure_name='UENF - Paradigmas Scilab - 2021  - João Vítor Fernandes Dias';

// propriedades dos eixos
da=gca(); // 
da.title.font_size = 5;
da.title.font_foreground = 5;    // 5=vermelho
da.title.text="Titulo do Grafico";
da.x_label.text="Tempo"; 
da.x_location='middle'; 
da.y_label.text="Valor de y  =  xcos(x)"; 
