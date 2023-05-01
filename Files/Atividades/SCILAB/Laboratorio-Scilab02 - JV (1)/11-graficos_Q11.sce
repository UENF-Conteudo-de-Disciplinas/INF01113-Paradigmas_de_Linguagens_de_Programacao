// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         28/out/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      11-graficos.sce                    %
// %--------------------------------------------------%
// Para executar desde o editor SciNotes:   < Ctrl >< E >
clc; clear;      // limpa a Janela de comandos // remove (limpa) as variaveis do ambiente (memoria)
mprintf('\n UENF-CCT-LCMAT-Ciencia da Computacao\n');
printf(" Aluno: João Vítor Fernandes Dias - Campos %s\n\n", date());

//
// ======> Assunto:  Programacao: GRAFICOS I ==================

// propriedades da figura
f=gcf();
f.figure_name='UENF - Paradigmas Scilab - 2021 - João Vítor Fernandes Dias';

// propriedades dos eixos
da=gca(); // 
da.title.font_foreground = 5;    // 5=vermelho
da.title.font_size = 5;

// substituido por xtitle acima
da.title.text="Titulo do Grafico: y = 7sen(x) + sen(7x)";
da.x_label.text="Eixo X"; 
da.y_label.text="valor de y = f(x) "; 

x = -%pi:0.1:%pi;  // Desde -Pi ate Pi com intervalo de 0.1
f = 7*sin(x) + sin(7.*x);

//da.x_location='middle';
//da.y_location='middle';

plot(x,f)

// Obs. Capture somente a janela gráfica, para o arquivo da prática
