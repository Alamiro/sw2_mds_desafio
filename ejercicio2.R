# Ejercicio 2


#Variables de entrada
# Monto de Saldo en la cuenta
# Monto de giro (extracción)
#Variables de Salida
# Un letrero que diga el saldo
# Un letrero que diga según el caso
# Saldo Insuficiente
# Solo se puede extraer montón con múltiplos de $ 5000
# No se puede extraer montos mayores a $ 100.000

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



