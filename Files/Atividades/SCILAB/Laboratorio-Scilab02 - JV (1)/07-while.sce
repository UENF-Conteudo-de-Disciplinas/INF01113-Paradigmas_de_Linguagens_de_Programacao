// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         28/out/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      07-while.sce                       %
// %--------------------------------------------------%
// Para executar desde o editor SciNotes:   < Ctrl >< E >
clc; clear;      // limpa a Janela de comandos // remove (limpa) as variaveis do ambiente (memoria)
mprintf('\n UENF-CCT-LCMAT-Ciencia da Computacao\n');
printf(" Aluno: João Vítor Fernandes Dias - Campos %s\n\n", date());


// ======> Assunto:  Programacao: WHILE 

mm=[];
m = 100; 
while  m > 0
  a  = m *3;
  mm =[mm m]
  m = m-28;
end

k= 3;0
j=1;
while (k< 30)
   A(j) = k+0.3;
   j=j+1;
   k=k+5;
end;
A

printf("\n SOMA de varios numeros...:\n\n");
n=0;
x=1;
soma=0;
while (x > 0)
   x=input('Digite um numero entre 1 e 50 (0 para terminar): '); 
   soma=soma + x;
   n=n+1;
end;
printf("\n A soma dos %d valores ingressados  = %d\n",n-1,soma)
