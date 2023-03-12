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
coefVariacion_na <- sd(numArtefactos)/mean(numArtefactos)
 coefVariacion_na
 #[1] 0.6684602
 coefVariacion_v3 <- sd(vector3)/mean(vector3)
 coefVariacion_v3
 #[1] 0.6359067
 
 coefVariacion_na2 <- IQR(numArtefactos)/mean(numArtefactos)
 coefVariacion_na2
 #[1] 0.8781559
 
 coefVariacion_v32 <- IQR(vector3)/mean(vector3)
  coefVariacion_v32
 #[1] 0.917481
  
  #Función 1
  #Calculando coeficiente de variación para numArtefactos_int
  coefVariacion_na <- sd(numArtefactos)/mean(numArtefactos)
  coefVariacion_na

    #Calculando coeficiente de variación para vector3
    coefVariacion_v3 <- sd(vector3)/mean(vector3)
  coefVariacion_v3

    #Función 2
    #Calculando coeficiente de variación para numArtefactos_int
    coefVariacion_na2 <- IQR(numArtefactos)/mean(numArtefactos)
  coefVariacion_na2
  #Calculando coeficiente de variación para vector3
  coefVariacion_v32 <- IQR(vector3)/mean(vector3)
  coefVariacion_v32
#EJERCICIO 15
  
#EJERCICIO 16
  
coeficiente_asimetria <- (mean(vector3) - median(vector3)) / sd(vector3)
coeficiente_asimetria
#[1] 0.1553776

#Parte 2: 
  #Distribucioon de Asimetria Positiva 
vector1 <- c(2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,150)
coeficiente_asimetria <- (mean(vector1) - median(vector1)) / sd(vector1)
coeficiente_asimetria
#[1] 0.2043709

#Distribución con asimetría negativa:
vector2 <- c(150,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2)
coeficiente_asimetria <- (mean(vector2) - median(vector2)) / sd(vector2)
coeficiente_asimetria
#[1] 0.2043709

#Distribución simétrica:
 vector4 <- c(2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,20)
 coeficiente_asimetria <- (mean(vector4) - median(vector4)) / sd(vector4)
coeficiente_asimetria
#[1] -0.008568631

#EJERCICIO 17

library(e1071)
skewness(vector3)
#[1] 0.3138528