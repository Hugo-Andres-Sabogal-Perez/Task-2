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

ruta = lapply(2017:2020 , function(a) list.files(paste0("data/imput/", a),full.names=T)) %>% unlist()
                
chip = list()
for (i in 1:length(ruta)){
  chip[[i]] = import(file = ruta[i])
}
                   
View(chip)

#=========#
# Punto 2 #
#=========#


extraer = function(n,lista,tipo_rubro){
  df = data.frame(pagos=NA,cod_dane=NA,periodo=NA)
  
  lista_n = lista[[n]]
  
  
  df$cod_dane = colnames(lista_n)[1]
  
  df$periodo = lista_n[2,1]
  
  colnames(lista_n) = lista_n[7,]
  
  df$pagos= lista_n %>% subset(NOMBRE==tipo_rubro) %>% select(`PAGOS(Pesos)`)
  
  
  
  return(df)
  
}

extraer(n=10 , lista = chip , tipo_rubro = "EDUCACIÓN" )

#=========#
# Punto 3 #
#=========#


lapply(chip, FUN=function(n) extraer(n=1,lista=chip,tipo_rubro = "EDUCACIÓN"))


