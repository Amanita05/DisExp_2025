# Tamara Martinez Martinez
# 2067694
# 09/04/2025

# Prueba de t dependiente

semillas <-read.csv("Prod.csv", header = T)
semillas$Tiempo <- as.factor(semillas$Tiempo)

boxplot(semillas$Kgsem ~ semillas$Tiempo,
        xlab = "Periodo colecta",
        ylab = "Peso semillas (kg)",
        col = "orange")

tapply(semillas$Kgsem, semillas$Tiempo, mean)
10.1066-10.8954

t.test(semillas$Kgsem ~ semillas$Tiempo, paired = T)
