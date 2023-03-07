#EJERCICIO 1
numArtefactos = c(17, 54, 10, 34, 90, 33, 49, 82, 12, 23, 56, 78, 44, 102, 10, 53, 4, 28, 37, 95)
#EJERCICIO 2
numArtefactos_int = as.integer(numArtefactos)
mean(numArtefactos_int)
#EJERCICIO 3
median(numArtefactos_int)
#es el número medio en el conjunto (después de ser ordenados los numeros de mayor a menor), 
#EJERCICIO 4
mode(numArtefactos_int) #No devuelve la moda
tabulate(numArtefactos_int, nbins = 102)
match(10, numArtefactos_int)
vector1 = c(5,2,4,3,1)
vector2 = c(1,2,3,4,5)
match(vector2, vector1)

moda <-function(x){
  u = unique(x)
  tab = tabulate(match(x, u))
  u[tab == max(tab)]
}
moda(numArtefactos_int)
#EJERCICIO 5
table(numArtefactos_int)
