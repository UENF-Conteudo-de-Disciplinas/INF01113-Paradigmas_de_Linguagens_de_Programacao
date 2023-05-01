// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         28/out/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      16-entrada.sce                     %
// %--------------------------------------------------%
// Para executar desde o editor SciNotes:   < Ctrl >< E >
clc; clear;      // limpa a Janela de comandos // remove (limpa) as variaveis do ambiente (memoria)
mprintf('\n UENF-CCT-LCMAT-Ciencia da Computacao\n');
printf(" Aluno: João Vítor Fernandes Dias - Campos %s\n\n", date());


// ======> Assunto: Programacao: Formulario de Entrada de dados ==================

txt=['Nota 1';'Nota 2';'Nota 3 ' ;'Trabalho ';'Pratica ']; 
notas=x_mdialog([Aluno;'Ingressar as notas corretas (0 a 10):'],txt,['1';'1';'0';'0';'8']); 

n1=evstr(notas(1));   // strings convertidos em numeros
n2=evstr(notas(2)); 
n3=evstr(notas(3)); 
n4=evstr(notas(4)); 
n5=evstr(notas(5)); 

media = mean([n1,n2,n3,n4,n5]);  // calcula a media

messagebox('A MEDIA FINAL é: '+string(media), "UENF - "+Aluno);