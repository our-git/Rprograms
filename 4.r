random_number <- sample(1:10, 1)
guess <- as.integer(readline("Guess a number between 1 and 10: "))
while (guess != random_number) {
 if (guess > random_number) {
 print("Too high!")
 } else {
 print("Too low!")
 }
 guess <- as.integer(readline("Guess again: "))
}
print("Congratulations!")
