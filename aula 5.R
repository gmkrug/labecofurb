# API FORMA DE ACESSO (FORMA DE ACESSO)
# DADOS DO BANCO MUNDIAL(WORD BANK)
# WORD DEVELOPMENT INDICATORS (BASE DE DADOS)

# NA AULA PASSADA, ACESSAMOS O DADOS DO PIB 
# PRODUTO INTERNO BRUTO

library(WDI)

options(scipen = 999)

basepib <- WDI(country = "all" , 
               indicator = 'NY.GDP.MKTP.CD' )
# wdi função do pacote dwi, que acessa a base de dados wdi 
# dadospib - nome do objeto 
# country - escolher o pais 
# indicator, variavel que queremos acessar (seu código)
# programação orientada a objetos 
# ctrl enter linha, ctrl shift enter todo o arquivo
# dados em painel - vários locais, vários períodos 
basepib2023<- WDI(country = "all",
                  indicator = 'NY.GDP.MKTP.CD', 
                  start = 2023, end = 2023)
# corte transversal - são varios locais em um único período de tempo

# o que é mais usada em ecõnomia é - série temporal - um local, vários períodos 
basepibbr <- WDI (country = "BR" ,
                  indicator = 'NY.GDP.MKTP.CD' )
 
# TAREFA
# Domestic credit to private sector by banks
# SÉRIE TEMPORAL
creddombancDEU <- WDI (country = "DEU" ,
                  indicator = 'FD.AST.PRVT.GD.ZS' )
# CORTE TRANSVERSAL
creddombancaALL2006 <- WDI (country = "all",
                    indicator = 'FD.AST.PRVT.GD.ZS', 
                    start = 2006, 
                    end = 2006)
# DADOS EM PAINEL
creddombancALL <- WDI (country = "all" ,
                       indicator = 'FD.AST.PRVT.GD.ZS')



