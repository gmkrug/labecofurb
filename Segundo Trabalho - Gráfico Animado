# INSTALAR O PACOTE

install.packages("GetBCBData")

# CARREGAR A BIBLIOTECA
library(GetBCBData)
library(tidyverse) # TAMBÉM É NECESSÁRIO

# INSTRUÇÕES DO PACOTE (VIGNETTE)
# https://cran.r-project.org/web/packages/GetBCBData/vignettes/GetBCBData-vignette.html

# OS CÓDIGOS DAS VARIÁVEIS VÊM DIRETO DA PLATAFORMA
# ACESSAR O SGS
# http://www.bcb.gov.br/?sgs

# EXEMPLO COM CDI
# METADADOS
# Taxa média de juros tendo como base as operações de emissão de Depósitos 
# Interfinanceiros pré-fixados, pactuadas por um dia útil, registradas e 
# liquidadas pelo sistema Cetip, considerando apenas operações do mercado 
#interbancário realizadas entre instituições de conglomerados diferentes 
# (Extra-grupo), desprezando-se as demais (Intra-Grupo).

library(tidyverse)
library(GetBCBData)
library(scales)
library(gganimate)
library(gifski)
library(magick)

my.id <- c(capp = 242)

df.bcb <- gbcbd_get_series(
  id = my.id,
  first.date = '2000-01-01',
  last.date = Sys.Date(),
  format.data = 'long',
  use.memoise = TRUE,
  cache.path = tempdir(),
  do.parallel = FALSE
)


p_anim <- ggplot(df.bcb, aes(x = ref.date, y = value)) +
  geom_line(color = "#1b7837", linewidth = 1) +
  labs(
    title = "Captação Líquida da Poupança Rural",
    subtitle = "De {format(frame_along, '%b/%Y')}",
    x = "Data", y = "Captação (R$)",
    caption = "Fonte: BCB - Série 242"
  ) +
  theme_minimal() +
  transition_reveal(ref.date)

print(p_anim)

anim_path <- "poupanca.gif"

anim <- animate(
  p_anim,
  width = 800, height = 400,
  fps = 20, duration = 10,
  renderer = gifski_renderer(anim_path)
)

anim_save(anim_path, animation = anim)
