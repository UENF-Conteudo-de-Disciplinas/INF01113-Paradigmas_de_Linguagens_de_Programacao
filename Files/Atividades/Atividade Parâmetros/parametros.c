#include <stdio.h>
#include <stdlib.h>

void cabecalho () {
  char texto[]="\
  --------------------------------------------------\n\
  UENF-CCT-LCMAT-CC                                 \n\
  Disciplina:   Paradigmas de Ling. de Programacao  \n\
  Prof.:        Ausberto S. Castro Vera             \n\
  Date:         05/out/2021                         \n\
  Aluno:        Joao Vitor Fernandes Dias           \n\
  Arquivo:      parametros.c                        \n\
  --------------------------------------------------\n";
  printf("%s", texto);
}

/*
  Quatro Tipos de Parâmetros Formais em Linguagens de Programação
    Defina completamente e mostre pelo menos 2 exemplos de:
      Parâmetros de Valor
      Parâmetros de Referência
      Parâmetros Procedimento
      Parâmetros Função
*/

void triplicaVariavel (int variavelInterna) {
  printf("Variavel Interna (antes de triplicar):\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelInterna, &variavelInterna);
  variavelInterna = 3*variavelInterna;
  printf("Variavel Interna (depois de triplicar):\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelInterna, &variavelInterna);
}

void exemplo1_parValor1 () {
  int variavelExterna = 1;
  printf("Variavel externa (antes da funcao):\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelExterna, &variavelExterna);
  triplicaVariavel(variavelExterna);
  printf("Variavel externa (depois da funcao):\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelExterna, &variavelExterna);
  printf("\n\n\n");
}

void soma3 (int variavelInterna) {
  printf("Variavel Interna (antes de somar 3):\t\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelInterna, &variavelInterna);
  variavelInterna = 3+variavelInterna;
  printf("Variavel Interna (depois de somar 3):\t\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelInterna, &variavelInterna);
}

void exemplo2_parValor2 () {
  int variavelExterna = 2;
  printf("Variavel externa (antes da funcao):\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelExterna, &variavelExterna);
  triplicaVariavel(variavelExterna);
  printf("Variavel externa (depois da funcao):\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelExterna, &variavelExterna);
  printf("\n\n\n");
}


void quadriplicaVariavel (int* variavelInterna) {
  printf("Variavel Interna (antes de quadriplicar):\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", *variavelInterna, variavelInterna);
  *variavelInterna = 4*(*variavelInterna);
  printf("Variavel Interna (depois de quadriplicar):\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", *variavelInterna, variavelInterna);
}

void exemplo3_parRef1 () {
  int variavelExterna = 3;
  printf("Variavel externa (antes da funcao):\t\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelExterna, &variavelExterna);
  quadriplicaVariavel(&variavelExterna);
  printf("Variavel externa (depois da funcao):\t\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelExterna, &variavelExterna);
  printf("\n\n\n");
}

void soma4 (int* variavelInterna) {
  printf("Variavel Interna (antes de somar 4):\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", *variavelInterna, variavelInterna);
  *variavelInterna = 4+(*variavelInterna);
  printf("Variavel Interna (depois de somar 4):\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", *variavelInterna, variavelInterna);
}

void exemplo4_parRef2 () {
  int variavelExterna = 4;
  printf("Variavel externa (antes da funcao):\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelExterna, &variavelExterna);
  soma4(&variavelExterna);
  printf("Variavel externa (depois da funcao):\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelExterna, &variavelExterna);
  printf("\n\n\n");
}


void quintuplicaVariavel (int variavelInterna) {
  printf("Variavel Interna (antes de quadriplicar):\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelInterna, &variavelInterna);
  variavelInterna = 5*variavelInterna;
  printf("Variavel Interna (depois de quadriplicar):\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelInterna, &variavelInterna);
}

void exemplo5_parProc1 () {
  char texto_exemplo5_parProc1[]="\
  Nesse exemplo eh utilizado um procedimento utilizando a passagem de parametro por valor. Assim, nao havendo como mudar\
  o valor externo da variavel\n";
  int variavelExterna = 5;
  printf("%s", texto_exemplo5_parProc1);
  printf("Variavel externa (antes da funcao):\t\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelExterna, &variavelExterna);
  quintuplicaVariavel(variavelExterna);
  printf("Variavel externa (depois da funcao):\t\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelExterna, &variavelExterna);
  printf("\n\n\n");
}

void soma5 (int* variavelInterna) {
  printf("Variavel Interna (antes de somar 4):\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", *variavelInterna, variavelInterna);
  *variavelInterna = 5+(*variavelInterna);
  printf("Variavel Interna (depois de somar 4):\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", *variavelInterna, variavelInterna);
}

void exemplo6_parProc2 () {
  char texto_exemplo6_parProc2[]="\
  Nesse exemplo eh utilizado um procedimento utilizando a passagem de parametro por referencia. Assim, havendo como mudar\
  o valor externo da variavel\n";
  int variavelExterna = 4;
  printf("Variavel externa (antes da funcao):\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelExterna, &variavelExterna);
  soma5(&variavelExterna);
  printf("Variavel externa (depois da funcao):\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelExterna, &variavelExterna);
  printf("\n\n\n");
}


int sextuplicaVariavel (int variavelInterna) {
  printf("Variavel Interna (antes de sextuplicar):\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelInterna, &variavelInterna);
  variavelInterna = 6*variavelInterna;
  printf("Variavel Interna (depois de sextuplicar):\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelInterna, &variavelInterna);
  return variavelInterna;
}

void exemplo7_parFunc1 () {
  char texto_exemplo5_parProc1[]="\
  Nesse exemplo eh utilizado uma funcao utilizando a passagem de parametro por valor. Assim, mesmo que a passagem por\
  valor nao permita que seu valor seja alterado diretamente, ela pode ter seu valor sobreposto pelo retorno da funcao\n";
  int variavelExterna = 7;
  printf("%s", texto_exemplo5_parProc1);
  printf("Variavel externa (antes da funcao):\t\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelExterna, &variavelExterna);
  variavelExterna = sextuplicaVariavel(variavelExterna);
  printf("Variavel externa (depois da funcao):\t\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelExterna, &variavelExterna);
  printf("\n\n\n");
}

int soma6 (int variavelInterna) {
  printf("Variavel Interna (antes de somar 4):\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelInterna, &variavelInterna);
  variavelInterna = 6+variavelInterna;
  printf("Variavel Interna (depois de somar 4):\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelInterna, &variavelInterna);
  return variavelInterna;
}

void exemplo8_parFunc2 () {
  char texto_exemplo8_parFunc2[]="\
  Nesse exemplo eh utilizado uma funcao utilizando a passagem de parametro por valor. Sendo assim, seu valor nao pode ser\
  alterado internamente na funcao chamada, mas pode-se obter um valor derivado dela da funcao com uma nova variavel\n";
  int variavelExterna = 8;
  int variavelExternaAuxiliar = 0;
  printf("%s", texto_exemplo8_parFunc2);
  printf("Variavel externa (antes da funcao):\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelExterna, &variavelExterna);
  printf("Variavel Retornada (antes da funcao):\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelExternaAuxiliar, &variavelExternaAuxiliar);
  variavelExternaAuxiliar = soma6(variavelExterna);
  printf("Variavel externa (depois da funcao):\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelExterna, &variavelExterna);
  printf("Variavel Retornada  (depois da funcao):\t");
  printf("Ponteiro: (%d)\t Valor: (%d)\n", variavelExternaAuxiliar, &variavelExternaAuxiliar);
  printf("\n\n\n");
}



void exemplificarParametros () {
  char parametros[]="\n\n\
  Parametros sao os valores que sao passados para metodos, procedimentos e funcoes.\
  Porem, esses valores sao passados de diferentes formas.\n\n";

  char paramValor[]="\
  Parametros de valor sao parametros onde os seus valores sao copiados e colados em novas variaveis locais.\
  Dessa forma, as mudancas efetuadas na variavel interna nao afetarao a Variavel externa.\
  Outro detalhe eh que essas duas variaveis inicialmente apresentam ponteiros diferentes, porem com o mesmo valor\
    quando a funcao chamada termina seu ciclo de acoes, a variavel interna e seu valor sao perdidas\n\n";
    
  char paramRef[]="\
  Os parametros de referencia sao parametros onde seus valores nao sao copiados, assim como eh feito nos\
  parametros de valor, ao inves disso, o que eh passado eh o ponteiro desse valor, sendo o ponteiro a\
  localizacao daquele valor na memoria do computador. Dessa forma, caso a funcao que foi chamada utilizando a passagem\
  de parametro por referencia modifique internamente a variavel, essa mudanca ocorre tambem na Variavel externa externa.\n\n";
  
  char paramProcFunc[]="\
  Embora as passagens de parametros por referencia e valor indiquem de que forma se comportam as variaveis recebidas por uma\
  funcao, os parametros de procedimento e funcao estao associados com a forma como os métodos retornam seus valores.\n\n";

  char paramProc[]="\
  Quanto aos parametros do procedimento: O procedimento pode receber os parametros por referencia e por valor, porem ele\
  nao retorna nenhuma informacao. Os procedimentos apenas executam instrucoes sem nada retornar. Caso deseje alterar\
  algum valor com essa estrutura, eh necessario que a variavel seja global (o que nao eh indicado, mas talvez\
  necessario em alguns casos), ou que a variavel seja enviada por referencia.\n\n";

  char paramFunc[]="\
  Quanto aos parametros da funcao: A funcao pode receber os parametros por referencia e por valor, e ela tambem retorna\
  informacao. As procedimentos executam instrucoes e tambem podem retornar informacoes. No caso da linguagem C, apenas\
  um valor de um único tipo pode ser retornado por funcao (a nao ser que se use estruturas de dados mais complexas\
  para poder retornar mais informacoes, mas ainda assim ainda seria retornado um unico ponteiro para esta estrutura\
  mais complexa).\n\n";

  cabecalho();
  printf("%s\n", parametros);
  printf("%s\n", paramValor);
  exemplo1_parValor1();
  exemplo2_parValor2();
  printf("%s\n", paramRef);
  exemplo3_parRef1();
  exemplo4_parRef2();

  printf("%s\n", paramProcFunc);
  printf("%s\n", paramProc);
  exemplo5_parProc1();
  exemplo6_parProc2();

  printf("%s\n", paramFunc);
  exemplo7_parFunc1();
  exemplo8_parFunc2();
}

int main () {
  exemplificarParametros();
}