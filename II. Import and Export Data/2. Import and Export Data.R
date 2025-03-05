###GUIA 2

#install.packages("jsonlite")
#install.packages("tidyverse")
#install.packages("tidyquant")
#install.packages("data.table")
#install.packages("WDI")
#install.packages("dplyr")
library(jsonlite)
library(tidyverse)
library(tidyquant)
library(data.table)
library(WDI)
library(dplyr)

##Pregunta 1

#instalamos el comando para leer bases de otro tipo
library(readr)

sales = read_csv("/cloud/project/sales.csv")
sales

#get working directory
#getwd()

#set working directory
#setwd("C:/Users/asus/Desktop/Semestre Oto脙卤o 2019/T脙鲁picos en Econom脙璦 y Negocios Utilizando R/Gu脙璦 2")


##Pregunta 2

#Nos permite leer el archivo excel
library(readxl)

#Importamos la base excel, le indicamos que el formato es xls y luego indicamos la hoja
excel_sheets("/cloud/project/mortality_under_five.xls")

#Para asignar la data a una bbdd creada por nosotros ahora
mortality = read_excel("/cloud/project/mortality_under_five.xls",
                     sheet = "Data")

#usamos el gather para pasar de wide a long
mortalidad5 = mortality %>% gather(key = year, value = mortalidad, -country)


##Pregunta 3

library(haven)
wage = read_dta("/cloud/project/wage1.dta")
wage

#wage$e2=wage$exper**2

#para hacer una regresion lineal
#control alt 4 para ~
#model<-lm(log(wage)~educ+exper,data=wage)
#model

#model2<-lm(log(wage)~educ+exper,e2,data=wage)
#model2

#summary(model)


##Pregunta 4

#install.packages("tidyquant")
library(tidyquant)

fb=tq_get("FB", get="stock.prices",from="2015-01-01",to="2019-03-15")
#para ver las primeras 6 observaciones
head(fb)


##Pregunta 5

library(jsonlite)

url="http://farmanet.minsal.cl/index.php/ws/getLocales"
farmacias=fromJSON(url)
head(farmacias)


##Pregunta 6

#Vamos a hacer web scrapping. vamos a meter una tabla desde wikipedia a R
#Basicamente web scrapping quiere decir sacar datos desde una pagina web. Vamos a partir con tablas

#install.packages("stringr")
#install.packages("htmltab")
library(dplyr)
library(stringr)
library(htmltab)

url="https://es.wikipedia.org/wiki/Anexo:Comunas_de_Chile_por_poblaci贸n"

pob_comu = htmltab(url)

pop = pob_comu %>% rename(`Poblaci贸n (1992)` ="Poblacion (1992)",
                        `Poblaci贸n (2002)` ="Poblacion (2002)",
                        `Poblaci贸n (2017)` ="Poblacion (2017)")
popas_tibble(pop)
pop = pop %>% mutate(
  pop1992=str_replace_all(pop1992,"\\s+",""),
  pop2002=str_replace_all(pop2002,"\\s+",""),
  pop2017=str_replace_all(pop2017,"\\s+",""))

pop$pop1992=as.numeric(pop$pop1992)
pop$pop2002=as.numeric(pop$pop1992)
pop$pop2017=as.numeric(pop$pop1992)
glimpse(pop)


##Pregunta 7

#Desde ahora en adelante vamos a trabajar con World Development Indicators
library(dplyr)
library(WDI)

#Variables. Poblacion, Expectativa de vida al nacer y PIB per capita

wbData = WDI(indicator = c("SP.POP.TOTL","SP.DYN.LE00.IN","NY.GDP.PCAP.PP.CD")
           ,country = "all", extra = TRUE, start = 1960, end = 2016)

#glimpse(wbData)
saveRDS(wbData,"/cloud/project/wbData.rds")



