precioAlta = 200
precioMedia = 100
precioBaja = 101

clientes <- data.frame(
  "nombre" = c("sofia", "victoria", "macarena", "javiera"), 
  "cantidad" = c(55, 501, 200, 600),
  "variedad" = c(1,2,2,3),
  "calidad" = as.character(c("baja", "baja", "media", "alta")),
  "suma" = c(0,0,0,0),
  "precioBruto"= c(0,0,0,0),
  "precioFinal" = c(0,0,0,0)
)

for(i in 1:nrow(clientes)){
  if(clientes[i, 2]<=100){
    clientes[i,5] = clientes[i,5]+0
  }else if(clientes[i, 2]<=500){
    clientes[i,5] = clientes[i,5]+2
  }else if(clientes[i, 2]>500){
    clientes[i,5] = clientes[i,5]+5
  }
}
for(i in 1:nrow(clientes)){
  if(clientes[i, 3]==1){
    clientes[i,5] = clientes[i,5]+0
  }else if(clientes[i, 3]==2){
    clientes[i,5] = clientes[i,5]+2
  }else if(clientes[i, 3]>=3){
    clientes[i,5] = clientes[i,5]+5
  }
}
for(i in 1:nrow(clientes)){
  if(clientes[i, 4]=="baja"){
    clientes[i,5] = clientes[i,5]+0
  }else if(clientes[i, 4]=="media"){
    clientes[i,5] = clientes[i,5]+2
  }else if(clientes[i, 4]=="alta"){
    clientes[i,5] = clientes[i,5]+5
  }
}

for(i in 1:nrow(clientes)){
  if(clientes[i, 5]>=7){
    print(clientes[i,1])
    print("Obtiene descuento 25%")
    descuento = 0.25
    print(paste("Unidades compradas : ",clientes[i, 2]))
    print(paste("Variedades compradas : ",clientes[i, 3]))
    print(paste("Tipo de calidad : ",clientes[i, 4]))
    if(clientes[i, 4]=="alta"){
      print(paste("Precio de compra (Unidad) : $",precioAlta))
      clientes[i, 6] = clientes[i, 2]* precioAlta
      print(paste("Precio bruto : $",clientes[i, 6]))
      print(paste("Descuento : $",clientes[i, 6]*descuento))
      clientes[i, 7] = clientes[i, 6]-(clientes[i, 6]*descuento)
      print(paste("Precio final : $",clientes[i, 6]-(clientes[i, 6]*descuento)))
    }else if(clientes[i, 4]=="media"){
      print(paste("Precio de compra (Unidad) : $",precioMedia))
      clientes[i, 6] = clientes[i, 2]* precioMedia
      print(paste("Precio bruto : $",clientes[i, 6]))
      print(paste("Descuento : $",clientes[i, 6]*descuento))
      clientes[i, 7] = clientes[i, 6]-(clientes[i, 6]*descuento)
      print(paste("Precio final : $",clientes[i, 6]-(clientes[i, 6]*descuento)))
    }else{
      print(paste("Precio de compra (Unidad) : $",precioBaja))
      clientes[i, 6] = clientes[i, 2]* precioBaja
      print(paste("Precio bruto : $",clientes[i, 6]))
      print(paste("Descuento : $",clientes[i, 6]*descuento))
      clientes[i, 7] = clientes[i, 6]-(clientes[i, 6]*descuento)
      print(paste("Precio final : $",clientes[i, 6]-(clientes[i, 6]*descuento)))
    }
    print("----- Siguiente ------")
  }else if(clientes[i, 5]>=2){
    print(clientes[i,1])
    print("obtiene descuento 10%")
    descuento = 0.10
    print(paste("Unidades compradas : ",clientes[i, 2]))
    print(paste("Variedades compradas : ",clientes[i, 3]))
    print(paste("Tipo de calidad : ",clientes[i, 4]))
    if(clientes[i, 4]=="alta"){
      print(paste("Precio de compra (Unidad) : $",precioAlta))
      clientes[i, 6] = clientes[i, 2]* precioAlta
      print(paste("Precio bruto : $",clientes[i, 6]))
      print(paste("Descuento : $",clientes[i, 6]*descuento))
      clientes[i, 7] = clientes[i, 6]-(clientes[i, 6]*descuento)
      print(paste("Precio final : $",clientes[i, 6]-(clientes[i, 6]*descuento)))
    }else if(clientes[i, 4]=="media"){
      print(paste("Precio de compra (Unidad) : $",precioMedia))
      clientes[i, 6] = clientes[i, 2]* precioMedia
      print(paste("Precio bruto : $",clientes[i, 6]))
      print(paste("Descuento : $",clientes[i, 6]*descuento))
      clientes[i, 7] = clientes[i, 6]-(clientes[i, 6]*descuento)
      print(paste("Precio final : $",clientes[i, 6]-(clientes[i, 6]*descuento)))
    }else{
      print(paste("Precio de compra (Unidad) : $",precioBaja))
      clientes[i, 6] = clientes[i, 2]* precioBaja
      print(paste("Precio bruto : $",clientes[i, 6]))
      print(paste("Descuento : $",clientes[i, 6]*descuento))
      clientes[i, 7] = clientes[i, 6]-(clientes[i, 6]*descuento)
      print(paste("Precio final : $",clientes[i, 6]-(clientes[i, 6]*descuento)))
    }
    print("----- Siguiente ------")
  }else{
    print(clientes[i,1])
    print("No obtiene descuento")
    descuento = 0
    print(paste("Unidades compradas : ",clientes[i, 2]))
    print(paste("Variedades compradas : ",clientes[i, 3]))
    print(paste("Tipo de calidad : ",clientes[i, 4]))
    if(clientes[i, 4]=="alta"){
      print(paste("Precio de compra (Unidad) : $",precioAlta))
      clientes[i, 6] = clientes[i, 2]* precioAlta
      print(paste("Precio bruto : $",clientes[i, 6]))
      print(paste("Descuento : $",clientes[i, 6]*descuento))
      clientes[i, 7] = clientes[i, 6]-(clientes[i, 6]*descuento)
      print(paste("Precio final : $",clientes[i, 6]-(clientes[i, 6]*descuento)))
    }else if(clientes[i, 4]=="media"){
      print(paste("Precio de compra (Unidad) : $",precioMedia))
      clientes[i, 6] = clientes[i, 2]* precioMedia
      print(paste("Precio bruto : $",clientes[i, 6]))
      print(paste("Descuento : $",clientes[i, 6]*descuento))
      clientes[i, 7] = clientes[i, 6]-(clientes[i, 6]*descuento)
      print(paste("Precio final : $",clientes[i, 6]-(clientes[i, 6]*descuento)))
    }else{
      print(paste("Precio de compra (Unidad) : $",precioBaja))
      clientes[i, 6] = clientes[i, 2]* precioBaja
      print(paste("Precio bruto : $",clientes[i, 6]))
      print(paste("Descuento : $",clientes[i, 6]*descuento))
      clientes[i, 7] = clientes[i, 6]-(clientes[i, 6]*descuento)
      print(paste("Precio final : $",clientes[i, 6]-(clientes[i, 6]*descuento)))
    }
    print("----- Siguiente ------")
  }
}
