text <- "ACGTTGCATGTCGCATGATGCATGAGAGCT"

# define a function that will later count the frequency with which a certain pattern occurs
count_pattern <- function(text, pattern){ 
  k <- nchar(pattern) # define k as the number of characters that make up a pattern
  count <- 0
  for (i in 1:(nchar(text)-k)){
    if (substr(text,i,i+k-1) == pattern){
      count <- (count+1) # counts the patterns once they have been identified 
    }
  }
  return(count)
  }
# end of the definition of count_pattern



# How to find the most most frequent k-mers? -->  define a function frequent_words 
frequent_words <- function(text, k){
  frequent_patterns <- c() # create empty vector for frequent patterns
  Count <- c() # create an empty vector for counting the frequent patterns
  for (i in 1:(nchar(text)-k)) {
    pattern <- substr(text, i, i+k-1)
    Count <- c(Count, count_pattern(text, pattern)) 
    # in loop, fill the empty vector Count with values generated with the count_pattern function defined above
  }
  
  # to return the maximal value of Count
  maxCount <- max(Count) 
  for (i in 1:(nchar(text)-k)) {
    if (Count[i] == maxCount) {
      frequent_patterns <- c(frequent_patterns, substr(text, i, i+k-1))
# in loop, fill the empty vector frequent_patterns with the k-mers
      }
  }
  return(unique(frequent_patterns)) # unique() removes duplicate elements from the frequent_patterns vector 
} 
# end of the definition of frequent_patterns

# Test the function frequentWords(text, k) with different k values
frequent_words(text, 1)
frequent_words(text, 2)
frequent_words(text, 3)
frequent_words(text, 4)
frequent_words(text, 5)

