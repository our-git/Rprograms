original_data <- read.table("C:\RlabPrgs\newtext.txt", header = TRUE)
cat("Original Data:\n")
print(original_data)

modified_data <- data.frame(apply(original_data, 2, function(column)
  ifelse(column < 0, 0, column)))

cat("\nData after replacing negative values with zero:\n")
print(modified_data)

calculate_stats <- function(column) {
  stats <- c(
    mean = mean(column),
    variance = var(column),
    std_dev = sd(column)
  )
  return(stats)
}

column_stats <- lapply(modified_data, calculate_stats)

stats_df <- do.call(rbind, column_stats)
rownames(stats_df) <- c("Mean", "Variance", "Standard Deviation")

cat("\nColumn Statistics:\n")
print(stats_df)