# Tamara Martinez Martinez
# 2067694
# 30/05/2025

# Examen

data("InsectSprays")

boxplot(InsectSprays$count ~ InsectSprays$spray,
        main = "Conteo de insectos por tipo de spray",
        xlab = "Spray",
        ylab= "Conteo de insectos",
        col= "Skyblue")
tapply(InsectSprays$count, InsectSprays$spray, mean)
tapply(InsectSprays$count, InsectSprays$spray, length)

bartlett.test(InsectSprays$count ~ InsectSprays$spray)
shapiro.test(InsectSprays$count)
InsectSprays$Coun.sqrt <- sqrt(InsectSprays$count)
 shapiro.test(InsectSprays$Coun.sqrt)
InsectSprays.aov <- aov(InsectSprays$Coun.sqrt ~ InsectSprays$spray)
summary(InsectSprays.aov)
