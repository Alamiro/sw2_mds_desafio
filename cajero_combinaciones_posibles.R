#cajero automatico
#combinaciones posibles para un giro de dinero

coins <- c(1000,2000,5000,10000,20000)
target <- 15000

X <- data.frame(matrix(1, nrow=target, ncol=length(coins)))

for (row in 1:nrow(X)) {
  for (col in 2:ncol(X)) {
    if (row > coins[col]) {
      # Deals with the cases row - coins[col] > 0
      X[row, col] <- X[row, col-1] + X[row - coins[col], col]
    } else if (row == coins[col]) {
      # Special case
      X[row, col] <- X[row, col-1] + 1
    } else {
      # Impossible cases
      X[row, col] <- X[row, col-1]
    }
  }   
}

print(X[nrow(X), ncol(X)])
