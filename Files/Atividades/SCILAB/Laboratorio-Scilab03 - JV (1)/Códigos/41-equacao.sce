// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         02/set/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      41-equacao.sce                     %
// %--------------------------------------------------%
clc; clear;
mprintf("\n UENF-CCT-LCMAT-Ciencia da Computacao\n");
Aluno = "João Vítor Fernandes Dias";
printf("Aluno: %s - Campos %s\n\n", Aluno, date());


// ======> Assunto:  Equacoes (Aplicacoes) ==================

Eq1 = "Ax + By = C";
Eq2 = "Dx + Ey = F";

itens=["A";"B";"C";"D";"E";"F"];

[ok,a,b,c,d,e,f]=getvalue(...
    [...
      'UENF - Prof. Ausberto S. Castro V. - 2021';
      'Sistema de Equações:';
      Eq1;
      Eq2
    ],...
    itens,...
    list("vec",1,"vec",1,"vec",1,"vec",1,"vec",1,"vec",1), ...
    ["2";"-3";"13";"1";"-1";"5"] ...
  );

matrizcoef = [a b; d e];               // matriz de coeficientes
vet = [c f]';                          // vetor coluna
k = det(matrizcoef);                   // determinante da matriz

if ( k == 0 )
  then
    messagebox('O sistema não tem solução...')
  else
    solucao = inv(matrizcoef)*vet;    // calcula a solucao do sistema
    messagebox(...
    [...
      'Solução:';
      'X = '+string(solucao(1)); ...
      'Y = '+string(solucao(2)) ...
    ],"UENF - ASCV", "info");
end;





