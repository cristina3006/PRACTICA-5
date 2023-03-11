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
frecuencias = table(numArtefactos_int)
frecuencias.ordenadas = frecuencias[order(frecuencias, decreasing=TRUE)]
frecuencias.ordenadas
#EJERCICIO 6
quantile(numArtefactos_int)
#EJERCICIO 7
IQR(numArtefactos_int) #El rango intercuartílico es 40
#EJERCICIO 8
rango_artefactos <- range(numArtefactos_int) #El rango de artefactos es 4 102
#EJERCICIO 9
var(numArtefactos_int) #La varianza es 927.1026.
#EJERCICIO 10
sd(numArtefactos_int)
sqrt(var(numArtefactos_int)) #La desviación estándar es 30.44836
#EJERCICIO 11
#La desviación estandar se usa más en Estadística que la varianza, ya que está expresada en las mismas unidades que la variable, mientras que la varianza está expressada en unidades cuadradas.
#EJERCICIO 12
numArtefactos<- c(17, 54, 10, 34, 90, 33, 49, 82, 12, 23, 56, 78, 44, 102, 10, 53, 4, 28, 37, 95)
numArtefactos_int <- as.integer(numArtefactos)

library(ggplot2)
ggplot(data.frame(numArtefactos_int), aes(x=numArtefactos_int, y=0)) + 
  geom_point(size=3, shape=21, fill="blue", color="black") +
  ylab("")
install.packages("ggplot2")
#EJERCICIO 13
vector3 = c(21, 45, 33, 98, 34, 90, 67, 87, 45, 11, 73, 38, 28, 15, 50, 57, 12, 87, 29, 1)
#EJERCICIO 14
