# Mostrar intervalos de tiempo de 30 en 30 minutos hasta completar 10 horas y 31 minutos.

# Metodo 1
# hi = hora inicial
# mi = minutos inicial
# hf = 10 horas transcurridas 

hi = 12
mi = 19
hf = 10 + hi
mf = 30

if (mi <= 30){
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
if (mi > 30){
  print(paste("Iniciamos en : ", hi, ":", mi,"hrs"))
  print(paste("Terminamos en : ", hf, ":", mi+1,"hrs"))
  hff = hf-1
  for (i in hi:hff) {
    print(paste("hora ", i, ":", mi))
    print(paste("hora ", i+1, ":", mi-mf))
    if(i == hff){
      print(paste("Se acabo el tiempo : ", hf, ":", mi-mf+31,"hrs"))
    }
  }
}

