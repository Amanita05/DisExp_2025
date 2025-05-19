# Tamara Martinez Martinez 
# 2067604
# 12/ 05 / 2025

# Experimento 
crec <- read.csv("Experimento.csv", header = T)
crec$sustrato <- as.factor(crec$sustrato)
boxplot(crec$Altura.inicial..cm. ~ crec$sustrato,
        xlab= "sustrato",
        ylab= "Altura inicial (cm)")
tapply(crec$Altura.inicial..cm., crec$sustrato, mean)
tapply(crec$Altura.inicial..cm., crec$sustrato, var)
shapiro.test(crec$Altura.inicial..cm.)
bartlett.test(crec$Altura.inicial..cm. ~ crec$sustrato)
crec.aov <- aov(crec$Altura.inicial..cm. ~ crec$sustrato)

summary(crec.aov)
TukeyHSD(crec.aov)
plot(TurkeyHSD(crec.aov))

