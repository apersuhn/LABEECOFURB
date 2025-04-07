# AULA 7 

# Carregar bibliotecas necessárias
library(WDI)
library(ggplot2)

# Coletando os dados
dadospib <- WDI(country = 'all',
                indicator = 'NY.GDP.MKTP.CD')

# Adicionando uma coluna de cor para o Brasil
dadospib$cor <- ifelse(dadospib$iso2c == 'BR', 'Brasil', 'Outros')

# Criar o gráfico
grafpainel <- ggplot(data = dadospib, 
                     aes(x = year, y = NY.GDP.MKTP.CD, color = cor)) +
  geom_point(alpha = 0.6, size = 1.5) +  # Adicionando pontos com transparência e tamanho personalizado
  scale_color_manual(values = c('Brasil' = 'red', 'Outros' = 'darkgrey')) +  # Definir as cores
  labs(title = "Produto Interno Bruto (PIB) dos Países ao Longo do Tempo", 
       x = "Ano", 
       y = "PIB (em USD)",
       color = "País") +  # Adicionar título e rótulos aos eixos
  theme_minimal() +  # Usar tema minimalista para um visual mais moderno
  theme(
    plot.title = element_text(hjust = 0.5, size = 16, face = "bold"),
    axis.title.x = element_text(size = 12),
    axis.title.y = element_text(size = 12),
    legend.position = "top",  # Colocar a legenda no topo
    legend.title = element_text(size = 12),
    legend.text = element_text(size = 10)
  )

# Exibir o gráfico
print(grafpainel)




### NÃO EXECUTAR ESTA PARTE
### PROMPT NO CHATGPT

Usando a biblioteca WDI, coletam-se estes dados (em painel):
  
  # DADOS EM PAINEL
  dadospib <- WDI(country = 'all',
                  indicator = 'NY.GDP.MKTP.CD')

Estruturou-se este gráfico simples:
  
  grafpainel <- ggplot(data = dadospib,
                       mapping = aes(y = NY.GDP.MKTP.CD,
                                     x = year)) +
  geom_point()

Como fazer um gráfico mais moderno, incluindo:
  
1) Adicione um título ao gráfico
2) Renomeie o eixo y como PIB
3) Renomeie o eixo x como Ano
4) Utilize cores modernas
5) Coloque os dados do Brasil em vermelho
