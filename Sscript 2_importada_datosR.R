# Tamara Martinez Martinez 
# 2067694
# 31/03/2025

# La funcion read.cvs sirve para importar datos
trees <- read.cvs("Practica2.cvs", header = T)

# La funcion as.factor sirve para convertir caracteres a factores
trees$Especies <- as.factor(trees$Especies)
trees$Crown <- as.factor(trees$Crown) 

# Grafica
boxplot(trees$Diameter~ trees$Especies,
        xlab = "Especies", # etiqueta del eje x
        ylab = "Dbh (cm)", # etiqueta del eje y
        col = "blue", # color de las cajas 
        main = "Inventario", # Titulo de grafica 
        ylim = c(5,25)) # Ampliar limites eje 

# Grafica de altura 
boxplot(trees$Height..m. ~ trees$Especies,
        xlab = "Especies",
        ylab = "Height (m)",
        col= "yellow",
        main ="Inventario",
        ylim = c(5,25))



        

