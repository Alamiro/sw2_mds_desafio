# Mostrar intervalos de tiempo de 30 en 30 minutos hasta completar 10 horas y 31 minutos.

# Metodo 1
# hi = hora inicial
# mi = minutos inicial
# hf = 10 horas transcurridas 

hi = 10
mi = 44
hf = 10 + hi
mf = 30

if (mi < 30){
  print(paste("Iniciamos en : ", hi, ":", mi,"hrs"))
  print(paste("Terminamos en : ", hf, ":", mi+mf+1,"hrs"))
  for (i in hi:hf) {
    print(paste("hora ", i, ":", mi))
    print(paste("hora ", i, ":", mi+mf))
    if(i == hf){
      print(paste("Se acabo el tiempo : ", hf, ":", mi+mf+1,"hrs"))
    }
  } 
}
if (mi >= 30){
  print(paste("Iniciamos en : ", hi, ":", mi,"hrs"))
  print(paste("Terminamos en : ", hf+1, ":", mi-mf+1,"hrs"))
  for (i in hi:hf) {
    print(paste("hora ", i, ":", mi))
    print(paste("hora ", i+1, ":", mi-mf))
    if(i == hf){
      print(paste("Se acabo el tiempo : ", i+1, ":", mi-mf+1,"hrs"))
    }
  }
}
