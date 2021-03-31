library(dplyr)
library(psych)

#Las bases de datos y documentacion se descargaron de la página https://ensanut.insp.mx/encuestas/ensanut2018/descargas.php

adultos <- read.csv("CS_ADULTOS.csv", header = TRUE, sep = ",")

#Recodificación de las preguntas de Sx Depresiva (2.1.a a 2.1.g)
adultos <- adultos %>% rename(cesd1 = P2_1_1) %>% rename(cesd2 = P2_1_2) %>% rename(cesd3 = P2_1_3) %>% rename(cesd4 = P2_1_4) %>% rename(cesd5 = P2_1_5) %>% rename(cesd6 = P2_1_6) %>% rename(cesd7 = P2_1_7)


se

alpha(cesd, check.keys=TRUE)
#Alfa de Cronbach de la escala 0.85, el item 6 necesita ser revertido

cesd <- adultos %>% select("EDAD") %>% cbind()