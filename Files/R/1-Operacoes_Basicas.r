#Link de acesso: Nenhum
#Autor: João Vítor Fernandes Dias, 29/11/2021
#Acesso em: 29/11/2021

#1) Comentários
  #O comentário de uma linha é feito com a cerquilha (#)
  #Não existe comentário em bloco na linguagem R

#2) Imprimir informações
  print("a função print() mostra um texto na tela")

#3) Fazer operações com variáveis
  a=3
  b=5
  c=a+b
  print("Imprime o valor de c:")
  print(c)

#4) Obter dados pela entrada padrão
  print("Digite um valor a ser mostrado na tela:")
  #Pode-se adicionar vários valores de uma vez.
  #Para encerrar a obtenção de valores,
  #deve-se pressionar enter.
  #d=scan()
  print("Imprime o valor de d:")
  #print(d)

#5) Operações Lógicas
  #TRUE e FALSE são palavras reservadas
  #da linguagem para representarem os
  #valores lógicos booleanos de verdadeiro e falso.
  e1=TRUE
  f1=FALSE
  
  #& representa a operação lógica E
  print(e1&f1)
  #| representa a operação lógica OU
  print(e1|f1)
  #! representa a operação lógica NÃO
  print(!e1)
  print(!f1)
  
  #O valor 0 é considerado falso.
  #Valores diferentes de zero são considerados verdadeiros.
  e2=1
  f2=0
  g2=-1
  
  print(e2&f2)
  print(e2&g2)
  print(f2&g2)
  
  #No caso de comparações entre vetores de igual tamanho:
  e3=c(0,1,0,1)
  f3=c(0,0,1,1)
  
  #O uso de apenas um operador lógico, faz a
  #comparação entre todos os elementos
  print(e3&f3)
  print(e3|f3)
  
  #O uso de dois operadores lógico, faz a
  #comparação apenas entre os primeiros elementos
  print(e3&&f3)
  print(e3||f3)

#6) Estruturas de controle de fluxo
  condiçãoV=TRUE
  condiçãoF=FALSE
  
  #IF ELSE
  #Estrutura If Else normal, onde a condição,
  #caso verdadeira, executa as instruções da
  #primeira parte, senão, executa as instruções
  #da segunda parte.
  if(condiçãoV) {print("Cond V1")} else {print("Cond F1")}
  if(condiçãoF) {print("Cond V2")} else {print("Cond F2")}
  
  #A estrutura IF ELSE em R permite o retorno de um valor:
  r1 = if(condiçãoV) {"Cond V3"} else {"Cond F3"}
  print(r1)
  
  r2 = if(condiçãoF) {"Cond V4"} else {"Cond F4"}
  print(r2)
  
  #SWITCH
  #A estrutura SWITCH (de forma simplificada)
  #serve para retornar um valor dentre uma lista 
  switch(2,"Numero 1", "Numero 2", "Numero 3")
  switch(3,"Numero 1", "Numero 2", "Numero 3")
  
  #Ou buscar algum valor que seja igual e
  #retornar o valor indicado por ele
  switch("A","A"=9,"B"=8,"C"=7)
  switch("C","A"=9,"B"=8,"C"=7)
  
  #FOR
  #O FOR utiliza uma variável para percorrer
  #os elementos de uma lista
  #a estrutura numeroA:numeroB representa
  #um vetor que vai do número A ao número B um a um
  lista1 = 1:5
  for (g1 in lista1) {cat(g1," ")}
  cat("\n")
  
  lista2 = 8:4
  for (g2 in lista2) {cat(g2," ")}
  cat("\n")
  #WHILE
  #O WHILE permanece executando enquanto
  #a sua condição for verdadeira
  h=0
  while(h<3) {
    h = h + 1
    cat(h," ")
  }
  cat("\n")

#7) Funções
  #As funções servem para você encapsular
  #um conjunto de instruções em uma única
  #instrução, podendo receber parâmetros e
  #retornar valores
  
  #Definição de uma função:
  
    soma = function(i,j) {return(i+j)}
  
  #chamada da função
    print(soma(3,9))
    print(soma(4,6))
