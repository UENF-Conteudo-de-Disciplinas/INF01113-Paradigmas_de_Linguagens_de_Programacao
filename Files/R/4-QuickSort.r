#Link de acesso:
#https://rpubs.com/kalipradeep/quicksort-recursion
#Autor: immidi kali pradeep
#Acesso em: 29/11/2021
#Código modificado por João Vítor Fernandes Dias, em 29/11/2021

quick_sort<-function(x) {
  if(length(x)<=1) return(x)
  pivô<-x[1]
  resto<-x[-1]
  menor_que_pivô<-quick_sort(resto[resto< pivô])
  maior_que_pivô<-quick_sort(resto[resto>=pivô])
  return(c(menor_que_pivô,pivô,maior_que_pivô))
}

l1 = c(5,4,12,13,3,8,88)
l2 = rnorm(10)

print(l1)
cat("\n")
print(quick_sort(l1))
cat("\n\n")
print(l2)
cat("\n")
print(quick_sort(l2))