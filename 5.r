countVowelsAndConsonants <- function(text) {
  text <- tolower(text)

  vowels <- c("a", "e", "i", "o", "u")
  vowel_count <- 0
  consonant_count <- 0

  for (char in strsplit(text, "")[[1]]) {
    if (char %in% vowels) {
      vowel_count <- vowel_count + 1
    } else if (char >= "a" && char <= "z") {
      consonant_count <- consonant_count + 1
    }
  }

  cat("Number of vowels:", vowel_count, "\n")
  cat("Number of consonants:", consonant_count, "\n")
}

text <- readline(prompt = "Enter a word or sentence: ")

countVowelsAndConsonants(text)
