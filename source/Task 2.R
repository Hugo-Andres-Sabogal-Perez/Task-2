# Elaborado por: Tania Reina,Hugo Sabogal
# Fecha de elaboracion: 1/10/2021
# Ultima modificacion: 3/10/2021
# Version de R: 4.1.1



rm(list = ls())
if(!require(pacman)) install.packages(pacman) 
if(!require(pacman)) install.packages(pacman)
require(pacman)
p_load(tidyverse,rio,skimr,readxl,haven,WriteXLS)
Sys.setlocale("LC_CTYPE", "en_US.UTF-8")

#=========#
# Punto 1 #
#=========#



chip=list()
archivos=0
ruta_excel= lapply(2017:2020, function(ano) list.files(poste0("data/imput/",ano), full.names=TRUE) %>% unlist()
                   while (archivos<=80) {
                     read_excel(ruta_excel)}
                   
                   