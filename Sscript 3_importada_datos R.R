# Tamara Martinez Martinez
# 2067694 
# 02/04/2025

# Comparación de medias

# Ejercicio 1
# H0 = Los niveles de ansiedad del grupo 1 (tarantula) y del grupo 2 (foto) tienen el mismo nivel de ansiedad.
# H1 = Los niveles de ansiedad del grupo 1 son diferentes a los del grupo 2.

# Ingresar datos
grupo <- gl(2, 12, labels = c("Fotografia", "Araña"))
            
ansiedad <- c(30, 35, 45, 40, 50, 35, 55, 25,30, 45, 
              40, 50, 40, 35, 50, 55, 65, 55,
              50, 35, 30, 50,
              60, 39)
datos <- data.frame(grupo, ansiedad)
head(datos)

# Revisar datos mediante un boxplot
png("ansiedad.png", width = 6, height = 8, units = "in", res =300)
boxplot(datos$ansiedad ~ datos$grupo, 
        col= "purple",
        xlab= "grupo",
        ylab= "Nivel ansiedad")
dev.off()
boxplot(datos$ansiedad ~ datos$grupo,
        col= "purple",
        xlab ="grupo",
        ylab = "Nivel de ansiedad")

# Revisar normalidad de datos

shapiro.test(datos$ansiedad)
# El valor de p de la p de la prueba es 0.4977 por lo tanto los datos 
# se comportan de manera normal.

mean(datos$ansiedad)

# Codificar datos, sacar media.
tapply(datos$ansiedad, datos$grupo, mean)
tapply(datos$ansiedad, datos$grupo, var)

# Revisar la homogenidad de varianzas utilizamos la sig. función 
bartlett.test(datos$ansiedad, datos$grupo)
# La prueba de barlett arroja que las varianzas son iguales
# el pvalue es 0.5795

# Realizar la prueba de t
t.test(datos$ansiedad ~ datos$grupo, var.equal = T)
# No hay diferencias ente los 2 grupos. 

# Probar si grupo araña es mayor que grupo fotografia
# alternative ="greater"

t.test(datos$ansiedad ~ datos$grupo, var.equal = T, 
       alternative = "greater")
t.test(datos$ansiedad ~ datos$grupo, var.equal = T,
       alternative = "less")

