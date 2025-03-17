# aula 3

# a <- 1+1 
# PACOTE tidyverse

#install.packages("tidyverse")
library(tidyverse) #carregar a biblioteca
#wdi word developer indicator - base de dados do banco mundial
#aula 4
# install.packages("WDI")
library(WDI)
#VIGNETTES
# GDP (current US$)(NY.GDP.MKTP.CD)

# baixar os dados do pib 
# tudo que é produzido em um pais/estado/municipio
# em um determinado periodo

# GDP (current US$)(NY.GDP.MKTP.CD)
# GROSS DOMESTIC PRODUCT (GDP) EM DOLARES NORTE AMERICANOS 
# CÓDIGO NY.GDP.MKTP.CD

COD_GDP <- WDIsearch('gdp')
# é importante procurar pelo próprio site d bannco mundial, é mais eficiante 

#com o código vamos baixar os dados
options(scipen = 999) #AJUSTAR NUMEROS NOT. CIENT
basepib <- WDI(country = "all",indicator = 'NY.GDP.MKTP.CD' )
basepib203<- WDI(country = "all",indicator = 'NY.GDP.MKTP.CD', start = 2023, end = 2023)

basepib2023
