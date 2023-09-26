
names <- c("Adith", "Babloo", "Sanju", "Raj")
ages <- c(25, 30, 35, 40)
df <- data.frame(Name = names, Age = ages)

mean_age <- mean(df$Age)
print(mean_age)

median_age <- median(df$Age)
print(median_age)