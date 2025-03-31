# Aula 6

## FAZER GRAFICO

install.packages("tidyverse")
library(tidyverse)

# DADOS EM PAINEL

grafpainel <- ggplot(dadospib,
                     mapping = aes(y = NY.GDP.MKTP.CD,
                                   x = year)) +
  geom_point()

print(grafpainel)

# CORTE TRANSVERSAL

grafcorte <- ggplot(dadospib2023,
                     mapping = aes(y = NY.GDP.MKTP.CD,
                                   x = year)) +
  geom_point()

print(grafcorte)

# SERIE TEMPORAL 

grafserie <- ggplot(dadospibbr,
                    mapping = aes(y = NY.GDP.MKTP.CD,
                                  x = year)) +
  geom_line()

print(grafserie)




# FAZER O MESMO POREM AGORA COM MEUS DADOS #


# DADOS EM PAINEL
Acessoenergia <- WDI(country = 'all',
                     indicator = 'EG.ELC.ACCS.ZS')


grafAcessoenergia <- ggplot(Acessoenergia,
                     mapping = aes(y = EG.ELC.ACCS.ZS,
                                   x = year)) +
  geom_point()

print(grafAcessoenergia)


# CORTE TRANSVERSAL
Acessoenergia2023 <- WDI(country = 'all',
                         indicator = 'EG.ELC.ACCS.ZS',
                         start = 2023, end = 2023)


grafAcessoenergia2023 <- ggplot(Acessoenergia2023,
                    mapping = aes(y = EG.ELC.ACCS.ZS,
                                  x = year)) +
  geom_point()

print(grafAcessoenergia2023)


# SERIE TEMPORAL 
AcessoenergiaBR <- WDI(country = 'BR',
                       indicator = 'EG.ELC.ACCS.ZS')


grafAcessoenergiaBR <- ggplot(AcessoenergiaBR,
                    mapping = aes(y = EG.ELC.ACCS.ZS,
                                  x = year)) +
  geom_line()

print(grafAcessoenergiaBR)
