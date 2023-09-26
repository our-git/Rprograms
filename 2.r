quad <- function(a, b, c) {
  disc <- b * b - 4 * a * c
  if (disc == 0) {
    print("Roots are equal and real.")
    root1 <- -b %/% (2 * a)
    print(paste("Root:", root1))
  } else if (disc > 0) {
    print("Roots are real and distinct.")
    root1 <- (-b + sqrt(disc)) %/% (2 * a)
    root2 <- (-b - sqrt(disc)) %/% (2 * a)
    print(paste("Root 1:", root1))
    print(paste("Root 2:", root2))
  } else {
    print("Roots are complex numbers.")
    real <- -b / (2 * a)
    imag <- sqrt(-disc) %/% (2 * a)
    print(paste("Root 1:", real, "+i", imag))
    print(paste("Root 2:", real, "-i", imag))
  }
}

a <- as.integer(readline(prompt="Enter coefficient of a: "))
b <- as.integer(readline(prompt="Enter coefficient of b: "))
c <- as.integer(readline(prompt="Enter coefficient of c: "))

if (a == 0 && b == 0) {
  print("Invalid input.")
} else {
  quad(a, b, c)
}
