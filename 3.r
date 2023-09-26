findmin <- function(x) {
  if (length(x) == 0) {
    print("Error: Empty vector!")
    return(NA)
  }
  
  x.min <- x[1]
  
  for (i in 2:length(x)) {
    if (x[i] < x.min) {
      x.min <- x[i]
    }
  }
  
  return(x.min)
}

vector <- c(7, 2, 9, 4, 1, 6)
minterm <- findmin(vector)
print(paste("Minimum value:", minterm))
