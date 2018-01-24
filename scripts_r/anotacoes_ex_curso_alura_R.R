#Anexa o banco de dados AUla
attach(aulas)
#Exibe todas as entradas da coluna section_id
section_id
#altera o limite de exibições do R
options(max.print = 40000)
#exibe as primeiras informações do dataset
head(section_id)
#ordena uma coluna na copia feita em memória
sort(section_id)
#alterando valor incorreto diretamente no dataset
aulas[33137, 3] <- 3255
#ordena o dataset
sort(aulas$section_id)
unique(aulas$section_id)
#faz a contagem do numero total de videos
length(unique(aulas$section_id))
#cria uma tabela através do codigo de sessao dos videos
table(aulas$section_id)
#cria uma tabela ordenada através do codigo de sessao dos videos
sort(table(aulas$section_id))
#cria uma tabela ordenada através do codigo dos cursos
sort(table(aulas$course_id))

#Peça para o R mostrar os valores da variável que traz quantas vezes um vídeo foi assistido.
sort(table(aulas$course_id))
#instala packages/libs em R
install.packages("plyr")

#chamada de uma lib/biblioteca
library(plyr)
#armazena a contagem
auxiliar <- count(aulas, vars = "course_id")


write.csv(auxiliar, "popularidade.csv")
