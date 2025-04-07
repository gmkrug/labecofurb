# AULA 7
library(WDI)
library(tidyverse)

# variável ultilizada: adolescents out of school
# SE.SEC.UNER.LO.ZS

# DADOS EM PAINEL 
AOS_DP <- WDI (country = "all" ,
               indicator = 'SE.SEC.UNER.LO.ZS')

# CORTE TRANSVERSAL 
AOS_CT <- WDI(country = "all", 
              indicator = 'SE.SEC.UNER.LO.ZS', 
              start = 2020,
              end = 2020)

# SÉRIE TEMPORAL 
AOS_ST <- WDI(country = "BR", 
              indicator = 'SE.SEC.UNER.LO.ZS')

# GRÁFICOS 

# DADOS EM PAINEL

GRAF_AOSDP <- ggplot(AOS_DP, aes(x = year, y = SE.SEC.UNER.LO.ZS, group = country)) +
  geom_line(color = "blue", alpha = 0.3) +  # linhas finas e transparentes para vários países
  labs(title = "Adolescentes fora da escola",
       x = "Ano",
       y = "Percentual fora da escola (%)") +
  theme_minimal()

# CORTE TRANSVERSAL 

GRAF_AOSCT <- ggplot(AOS_CT, aes(x = year, y = SE.SEC.UNER.LO.ZS)) +
  geom_point(color = "blue", alpha = 0.5) +
  labs(title = "Adolescentes fora da escola no ano de 2020",
       x = "Ano",
       y = "Percentual fora da escola (%)") +
  theme_minimal()

# SÉRIE TEMPORAL

GRAF_AOSST <- ggplot(AOS_ST, aes(x = year, y = SE.SEC.UNER.LO.ZS)) +
  geom_line(color = "blue", size = 1.2) +
  geom_point(color = "blue", size = 2) +
  labs(title = "Adolescentes fora da escola no ano de 2020",
       x = "Ano",
       y = "Percentual fora da escola (%)") +
  theme_minimal()

# :))

