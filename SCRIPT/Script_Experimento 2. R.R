# Tamara Martinez Martinez 
# 2067694 
# 14/05/2025

# Experiment semillas de Ebanno
Experimento <- read.csv("Datos_ebano.csv", header = T)
Experimento$Tratamiento <- as.factor(Experimento$Tratamiento)
boxplot(Experimento$Crecimiento ~ Experimento$Tratamiento,
        )
