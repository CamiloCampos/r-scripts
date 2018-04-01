install.packages("stringr")
library(stringr)

patentTable <- read.csv("Patentes_da_UFAL_EXCEL.csv",stringsAsFactors = F)

listaPalavras <- str_replace_all(patentTable$Technology.domains,"\n", ",")
palavrasSeparadas <- str_split(listaPalavras,",")
#tabela_frequencia_palavras <- table(palavrasSeparadas)
vetorPalavrasChave <- Reduce(c,palavrasSeparadas)
tabela_frequencia_palavras <- table(vetorPalavrasChave)
tabela_frequencia_palavras
pie(tabela_frequencia_palavras, main = "frequencia de domínio tecnológico")
#        , xlab="Number of Gears", row=c("darkblue","red"),
#        legend = colnames(tabela_frequencia_palavras))
#patentTable$Technology.domains