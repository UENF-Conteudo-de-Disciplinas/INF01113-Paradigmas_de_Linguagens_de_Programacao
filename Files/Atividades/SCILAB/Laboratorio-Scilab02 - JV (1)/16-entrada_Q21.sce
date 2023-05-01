// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         28/out/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      16-entrada_Q21.sce                 %
// %--------------------------------------------------%
// Para executar desde o editor SciNotes:   < Ctrl >< E >
clc; clear;      // limpa a Janela de comandos // remove (limpa) as variaveis do ambiente (memoria)
mprintf('\n UENF-CCT-LCMAT-Ciencia da Computacao\n');
printf(" Aluno: João Vítor Fernandes Dias - Campos %s\n\n", date());


// ======> Assunto: Programacao: Formulario de Entrada de dados ==================

Aluno = "João Vítor Fernandes Dias"
txt=['Nota 1 (peso 1)';'Nota 2 (peso 2)';'Nota 3 (peso 3)' ;'Trabalho (peso 4)';'Pratica  (peso 5)']; 
notas=x_mdialog([Aluno;'Ingressar as notas corretas (0 a 10):'],txt,['0';'0';'0';'0';'0']); 

n1=evstr(notas(1));   // strings convertidos em numeros
n2=evstr(notas(2)); 
n3=evstr(notas(3)); 
n4=evstr(notas(4)); 
n5=evstr(notas(5)); 
p1=1
p2=2
p3=3
p4=4
p5=5
media = (n1*p1+n2*p2+n3*p3+n4*p4+n5*p5)/(p1+p2+p3+p4+p5);  // calcula a media

messagebox('A MEDIA FINAL é: '+string(media), "UENF - "+Aluno);
