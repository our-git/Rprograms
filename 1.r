num <- as.integer(readline(prompt="Enter the number of terms to be printed: "))
if(num<= 0){
 print("Invalid input")
}else if(num == 1){
 print("Fibonacci series: 0")
}else if(num == 2){
 print("Fibonacci series: 0, 1")
}else{
 fib_seq <- c(0,1)
 for(i in 3:num){
 next_num <- fib_seq[i-1]+fib_seq[i-2]
 fib_seq <- c(fib_seq,next_num)
 }
 cat("Fibonacci Sequence: ", fib_seq)
}