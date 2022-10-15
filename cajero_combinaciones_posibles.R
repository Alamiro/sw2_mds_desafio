#cajero automatico
#combinaciones posibles para un giro de dinero

billetes <- c(1000,2000,5000,10000,20000)
giro <- 10000

X <- data.frame(matrix(1, nrow=giro, ncol=length(billetes)))

for (row in 1:nrow(X)) {
  for (col in 2:ncol(X)) {
    if (row > billetes[col]) {
      X[row, col] <- X[row, col-1] + X[row - billetes[col], col]
    } else if (row == billetes[col]) {
      # Special case
      X[row, col] <- X[row, col-1] + 1
    } else {
      X[row, col] <- X[row, col-1]
    }
  }   
}

print(X[nrow(X), ncol(X)])

