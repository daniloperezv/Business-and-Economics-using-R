###GUIA 1

##Pregunta 1

#a)
a=seq(1,10,1)

#b)
b=seq(1,9,2)

#c)
c=seq(1,5,lenght=9)
#El lenght sirve para cuando tenga que graficar (mas puntos es mejor que menos, porque el grafico queda mas suave)

#d)
ceros=numeric(5)  #Creamos un vector que tiene 5 ceros
ceros  #Comando para mostrar el vector ceros
names(ceros)=c("A","B","C","D","E")  #Nombramos los distintos elementos del vector ceros
ceros  #Mostramos el vector ceros

#e) 2 formas alternativas de hacer lo mismo
z=rep(c("A","B"),c(5,2)) 
z
z=c(rep("A",5),rep("B",2))
z

#f)
paste0("year_",2015:2018)
#paste0 es porque le entrega 0 espacios a lo que se agrega
#Comando paste0 puede ser utilizado para presentar resultados
paste0("La media de esta muestra es ", mean(a))
paste0("year_",seq(2015,2030,5))
#Se puede ir combinando con otros comandos

#Borramos elementos de la Pregunta 1
rm(list = ls())


##Pregunta 2

#Los corchetes [] sirven para indicar la posicion dentro de un vector

x=c("Pedro"=17, "Ana"=NA, "Maya"=23, "Max"=NA, "Paula"=20)
x

#a)
x[1]  #Los corchetes hacen que me muestre el elemento del vector que esta en esa posicion
x[c(1,3,5)]

y=x[c(1,3,5)]
y
y=x[-c(2,4)]
y
y=x[c(-2,-4)]
y
y=x[!is.na(x)]
y
y=na.omit(x)
y

#b)
z=x[c(1,2)]
z

#c)
mean(x)  #No sirve, pues existen missing values
mean(x,na.rm = TRUE) #na.rm lo que hace es remover los missing values para hacer el calculo
sum(x[!is.na(x)])/length(x[!is.na(x)])

#d)
sum(x<=20, na.rm=TRUE)/length(x[!is.na(x)])
sum(x<=20, na.rm=TRUE)/5

#e)
mean(x[x<=20], na.rm=TRUE)

#f)
sum(x<=20, na.rm=TRUE)

#g)
sum(x[x<=20], na.rm=TRUE)

#h)
sum(x, na.rm=TRUE)

#Borramos elementos de la Pregunta 2
rm(list = ls())


##Pregunta 3

x=seq(1,10,1)
x

#a)
sum((1/x)^2)

#b)
cumsum(x)

#Borramos elementos de la Pregunta 3
rm(list = ls())


##Pregunta 4

sexo=c("Hombre", "Mujer", "Mujer", "Hombre", "Mujer")
class(sexo) #Para ver que clase de variable es esta
sexo #Variable de tipo character

sexo_factor=factor(sexo) #Para generar o cambiar una variable a tipo factor
class(sexo_factor)
sexo_factor #Variable de tipo factor. Sirve para generar variables categoricas. Estas son tomadas como dummies por el programa

#Borramos elementos de la Pregunta 4
rm(list = ls())


##Pregunta 5

ret=c(5, 7) #Retorno
pond=c(0.4, 0.6) #Ponderaciones

#Vamos a multiplicar los vectores generados elemento por elemento
retorno_portafolio<- sum(ret*pond)
retorno_portafolio
paste0("El retorno del portafolio es ", retorno_portafolio,"%") #Para presentar el resultado

#Borramos elementos de la Pregunta 5
rm(list = ls())


##Pregunta 6

r=0.1 #Tasa de descuento
flujo_efectivo=1000 #Flujo de cada periodo
periodo=1:10 #Periodos
periodo=seq(1,10,1)

valor_presente=sum(flujo_efectivo*(1+r)^-periodo)
paste0("Valor presente = ","$",round(valor_presente,0))

#Borramos elementos de la Pregunta 6
rm(list = ls())


##Pregunta 7

a=c(0,10,-5)
b=c(5,8,-4)
c=c(0,1,-1)

#a)
d=a<b
d

#b)
x=b[2]
x

#c)
e=a[c(2,3)]
e

#d)
names(a)=c("L1","L2","L3")
a

#e)
A=rbind(a,b,c) #Filas
A
#Para crear matrices

#f)
B=cbind(a,b,c) #Columnas
B

#Borramos elementos de la Pregunta 7
rm(list = ls())


##Pregunta 8

x=c(3,2)
y=c(1,0)

#a)
W=rbind(x,y)
W

Z=cbind(x,y)
Z

#b)
colnames(Z)=c("C1","C2")
rownames(Z)=c("F1","F2")
Z

#Borramos elementos de la Pregunta 8
rm(list = ls())


##Pregunta 9

#El default para llenar las matrices es por columna

e=c(-1,0,2,4,-2,3)

K=matrix(e,nrow=3,ncol=2)
K

#Con el byrow le digo que llene la matriz por filas
L=matrix(e,nrow=2,ncol=3,byrow=TRUE)
L

#Borramos elementos de la Pregunta 9
rm(list = ls())


##Pregunta 10

#a)
A=diag(4) #El default del comando diag es llenar con 1
A
A=diag(1, 4)
A

#b)
B=matrix(NA, 10, 2)
B

#Borramos elementos de la Pregunta 10
rm(list = ls())


##Pregunta 11

z=c(1,4,-1,3,-2)
z

Z=diag(z)
Z

#Borramos elementos de la Pregunta 11
rm(list = ls())


##Pregunta 12

x1=c(1,1,1)
x2=c(3,-2,1)
x3=c(2,1,-1)
X=rbind(x1,x2,x3)
X

#a)
t(X)
solve(X)

#b)
a=X[3,1]
a

#c)
b=x2
b

#d)


#Borramos elementos de la Pregunta 12
rm(list = ls())


##Pregunta 13

#a)
fila1=c(1,1,1)
fila2=c(3,-2,1)
fila3=c(2,1,-1)
x=rbind(fila1,fila2,fila3)
k=c(6,2,1)
solve(x)%*%k

#b)
fil1=c(3,4,-5,1)
fil2=c(2,2,2,-1)
fil3=c(1,-1,5,-5)
fil4=c(5,0,0,1)
k1=c(10,5,7,4)
x1=rbind(fil1,fil2,fil3,fil4)
solve(x1)%*%k1

#Borramos elementos de la Pregunta 13
rm(list = ls())


##Pregunta 14

#Vimos vectores y matrices. Ahora veremos listas.
#La gracia de las listas es que podemos almacenar datos del mismo tipo

#a)
lista=list(A=seq(8,36,4),B="hola",C=diag(3))
lista

#b)
s=lista[[1]]
s
t=lista[[1]][2]
t
#Para recuperar un valor de una lista debo utilizar doble corchete [[]]
#Para recuperar un valor de un vector o matriz utilizamos un corchete []

#Borramos elementos de la Pregunta 14
rm(list = ls())


##Pregunta 15

#Instalamos 2 paquetes
#install.packages("tibble")
#install.packages("lubridate")

#Ahora lo llamamos
library(tibble)
library(lubridate)
#Tibble es una version moderna de los dataframe

fecha=seq(as.Date("2018-01-01"),as.Date("2018-12-01"), by="months")
fecha
class(fecha)
#as.numeric(fecha)

#Referencia que tiene como primera fecha es el 01/01/1970
#lubridate sirve para reconocer los dias que hay entre fechas
#as.numeric te asigna caracteres a tipo numerico. Numero de dias desde 01/01/1970
#as.Date le esta diciendo al programa que transforme la variable a tipo "fecha". Antes era de tipo "character"
tibble(fecha,dia=day(fecha),mes=month(fecha),ano=year(fecha))

#Diferencia de tibble con matrices, es que las matrices no te deja tener datos de distinto tipo

#Borramos elementos de la Pregunta 15
rm(list = ls())


##Pregunta 16

#a)
mes=c("Ene","Feb","Mar","Abr","May","Jun","Jul")
producto1=c("$1000","$3000","$6000","$9000","$7000","$8000","$10000")
producto2=c("$1000","$2000","$3000","$5000","$9000","$6000","$4000")
producto3=c("$2000","$4000","$4000","$2000","$3000","$2000","$5000")
ventas=data.frame(mes,producto1,producto2,producto3)
ventas
class(ventas)

#b)
#Instalamos el paquete tidyverse
#install.packages("tidyverse")
library(tidyverse)

#mutate es como el comando generate en Stata
#Quitamos el $ y lo reemplazamos por nada
ventas=ventas%>% mutate (
  producto1=str_replace_all(producto1,"[\\$\\,]",""),
  producto2=str_replace_all(producto2,"[\\$\\,]",""),
  producto3=str_replace_all(producto3,"[\\$\\,]","")
)
ventas
class(ventas$producto1)

#Cambiamos las variables a tipo numerico. Actualmente estan como string (character)
#Con $ decimos que producto1 pertenece al dataframe ventas
ventas$producto1=as.numeric(ventas$producto1)
ventas$producto2=as.numeric(ventas$producto2)
ventas$producto3=as.numeric(ventas$producto3)
ventas
class(ventas$producto1)

#c) 
summary(ventas)
#Como sum en Stata

#d)
#str para ver la estructura de los datos
str(ventas)
#Como describe en Stata
glimpse(ventas)

#e)
ventas%>%head(n=6)
head(ventas, n=6)
#Con head le digo que me muestre las primeras n observaciones (filas)/ primeros n elementos.
#Si no se especifica el n, R asume que es n=6

#f)
ventas%>%tail(n=6)
#Con tail le digo que me muestre las ultimas n observaciones (filas)/ ultimos n elementos.

#g)
sales=as_tibble(ventas)
class(sales)
sales

#h)
tablah=sales%>%select(mes, producto1)
tablah
#Select nos sirve para seleccionar columnas. Similar al keep de Stata

#i)
tablai=sales%>%select(-producto2)
tablai
#Con el signo - select pasa a ser como drop en Stata

#j)
tablaj=sales%>%filter(mes== "Ene" | mes== "Feb")
tablaj
#Con filter filtramos las observaciones que nosotros queramos mostrar.
#A diferencia del select que trabajaba con columnas, filter lo hace por observaciones y se usa con ==

#k)
tablak=sales%>%mutate(ventastot=producto1+producto2+producto3)
tablak

#l)
promedio_ventas=mean(tablak$ventastot, na.rm = TRUE)
tablal=tablak%>%mutate(mayor=ifelse(ventastot>promedio_ventas,"ALTO","BAJO"))
tablal
#na.rm hace que no se considere a los missing values (en este caso no era necesario, pero por disciplina lo haremos siempre)

#m)
nrow(subset(tablal,ventastot>15000)) #forma1
tablal%>%filter(ventastot>15000) %>%count() #forma2

#n)
write_csv(tablal, path ="C:/Users/asus/Desktop/Semestre OtoÃ±o 2019/TÃ³picos en EconomÃ�a y Negocios Utilizando R/GuÃ�a 1/sales.csv")

#Borramos elementos de la Pregunta 16
rm(list = ls())
