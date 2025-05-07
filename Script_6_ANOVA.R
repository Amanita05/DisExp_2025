# Tamara Martinez Martinez
# 2067694
# 07/05/2025

# Importar datos de internet 

url <- "https://raw.githubusercontent.com/mgtagle/Exp_Met_Est_AD2023/refs/heads/main/Scripts/localidades.csv"
datos <- read.csv(url, header = T)
datos$Paraje <- as.factor(datos$Paraje)

# H0 = No hay diferentes en el diametro de las localidades.
# H1 = Hay diferencias en los diametros de las localidades.

shapiro.test(datos$DAP)

boxplot(datos$DAP ~ datos$Paraje,
        col ="brown",
        xlab = "Localidades",
        ylab= "DAP (cm)")

tapply(datos$DAP, datos$Paraje, mean)
tapply(datos$DAP, datos$Paraje, var)

bartlett.test(datos$DAP ~ datos$Paraje)

# Transformacion de datos para analisis de capacidad 
datos$tlog <- log10(datos$DAP + 1)

shapiro.test(datos$tlog)

datos$tsqrt <- sqrt(datos$DAP)
shapiro.test(datos$tsqrt)
bartlett.test(datos$tsqrt ~ datos$Paraje)

boxplot(datos$tsqrt ~ datos$Paraje,
        col= "orange",
        xlab = "Localidades",
        ylab= "DAP (cm)")

bartlett.test(datos$tsqrt, datos$Paraje)

# Indicar con el AOV
par.aov <- aov(datos$tsqrt ~ datos $Paraje)
summary(par.aov)

# Identificar diferencias significativas prueba de Tukey
TukeyHSD(par.aov)
plot(TukeyHSD(par.aov))

