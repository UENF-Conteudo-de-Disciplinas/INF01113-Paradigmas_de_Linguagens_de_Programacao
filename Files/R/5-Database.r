#Link de acesso:
#https://datatofish.com/create-dataframe-in-r/
#Autor: Data To Fish, 16/07/2021
#Acesso em: 29/11/2021
#Código modificado por João Vítor Fernandes Dias, em 29/11/2021


#Para se trabalhar com dados em R, primeiro
#precisamos das informações. Podemos inserí-las
#manualmente em dataframes que são tabelas
#contendo dados A forma apresentada abaixo
#lida com a formação de colunas manualmente
#Primeiro é criada uma variável chamada "Nomes"
#e que contém cinco nomes inseridos manualmente
Nomes <- c("Ana", "Bia", "Carla", "Diana", "Elisa")

#Em seguida é criada uma variável chamada
#"Idades" e que contém cinco idades
#inseridas manualmente.
Idades <- c(12, 34, 56, 78, 90)

#Para se criar um dataframe, é utilizada a
#função data.frame() contendo entre
#os parênteses os vetores que contém os dados.
#OBS.: O nome das variáveis é usado por padrão
#como sendo o título da coluna que
#representa os dados

DadosManuais <- data.frame(Nomes, Idades)

#Então, basta imprimir os dados
print (DadosManuais)


#Entretanto, quando se trabalha com dados,
#eles geralmente se apresentam de duas formas:
  #Dados estruturados:
    #quando estão "soltos" e não organizados.
  #Dados não estruturados:
    #quando estão organizados em bancos de dados e/ou tabelas.
#Aqui trabalharemos com dados estruturados encontrados em
#Link de acesso:
#https://www.kaggle.com/brandonconrady/us-minimum-wage-1938-2020
#Autor: Brandon Conrady, 29/11/2021
#Acesso em: 29/11/2021
DadosCSV = read.csv("E:\\R\\MinimumWage.csv")
print(DadosCSV)
