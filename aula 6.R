library(WDI)

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

# AULA 6
# fazer gráficos 
# ggplot2 (faz parte do pacote tidyverse)

library(tidyverse)

# DADOS EM PAINEL 
grafpainel <- ggplot(creddombancALL, 
                     mapping = aes(y = FD.AST.PRVT.GD.ZS, x = year)) + 
  geom_point()

print(grafpainel)

# CORTE TRANSVERSAL
grafcorte <- ggplot(creddombancaALL2006, 
                    mapping = aes(y = FD.AST.PRVT.GD.ZS, 
                                  x = year)) +
  geom_point()
print(grafcorte)

# SERIE TEMPORAL 

grafserie <- ggplot(creddombancDEU, 
                    mapping = aes(y = FD.AST.PRVT.GD.ZS, 
                                  x = year)) +
  geom_line()
print(grafserie)

