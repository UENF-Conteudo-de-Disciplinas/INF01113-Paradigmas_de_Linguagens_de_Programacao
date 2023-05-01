// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         28/out/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      10-funcoes_Q9.sce                  %
// %--------------------------------------------------%
// Para executar desde o editor SciNotes:   < Ctrl >< E >
clc; clear;      // limpa a Janela de comandos // remove (limpa) as variaveis do ambiente (memoria)
mprintf('\n UENF-CCT-LCMAT-Ciencia da Computacao\n');
printf(" Aluno: João Vítor Fernandes Dias - Campos %s\n\n", date());


// ======> Assunto:  Programacao: FUNCOES ==================

// Escreva uma função que retorne a sequência de Fibonacci para um número N qualquer. A sequência de Fibonacci  0,1,1,2,3,5,8,13,21, ... começa com 0 e 1 e tem a propriedade de que cada número subsequente de Fibonacci é a soma dos dois números de Fibonacci anteriores.

function fiboV = fibonacci(n)
    select n
      case 0 then
            fiboV = []; break;
        case 1 then
            fiboV = [0]; break;
        else
            fiboV = [0 1]; break;    
    end
    pos = 3
    while pos <= n    
        fiboV(pos) = fiboV(pos-1) + fiboV(pos-2)
        pos = pos + 1
    end
endfunction
N = 9
disp (fibonacci(N))

