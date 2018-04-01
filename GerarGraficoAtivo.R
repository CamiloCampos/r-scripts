#script para gerar gráfico das patentes abandonadas e ativas.

patentTable <- read.csv("Patentes_da_UFAL_EXCEL.csv",stringsAsFactors = F)

#plot(patentTable)
#assintotas <- c(2,5,6,3,7,9)
#ordenadas <- c(9,8,6,3,7,5)
#plot(assintotas,ordenadas,"n")
#plot(tan,-10,100)


pdf("output.pdf")
x=rnorm(100,40,3)
y=rnorm(100,100,5)
fit=lm(y~x)
summary(fit)
plot(fit)
dev.off()
