# Ejercicio 2

#Script cajero

saldo = 15000
giro = 100001
billetes = 5000
eval = giro/billetes

if(giro <= 100000){
  if (giro > 0){
    if(round(eval) != eval){
      print("Solo se puede extraer montos multiplos de $5000")
    }else{
      saldo = saldo-giro
      print(paste("Su monto de giro es : $", giro, " Su nuevo saldo es : $", saldo))
    }
  }
}else{
  print("El monto de giro excede el maximo")
}



