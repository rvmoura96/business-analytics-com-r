#Renomeando as colunas do banco de dados duracao.
duracao <- rename(duracao, replace = c("user_id"="aluno", "course_id"="curso", "timeToFinish" = "dias"))

plot(duracao$dias)


hist(duracao$dias, breaks = 20)
