# Create a numeric coin 
Coin <- c("heads", "tails")

# Define the number of times you want to toss the coin and the probabilities, for example:
n <- 50
p <- c(0.5, 0.5)

# Tossing the coin multiple times by take samples with replacement 
coin_toss <- sample(Coin, size=n, replace=TRUE, prob=p)

# Create Frequency table 
frequency_table <- table(coin_toss) 

# Convert frequency table into dataframe
data_frame <- as.data.frame(frequency_table)

# The numbers of heads and tails can be accessed like this
data_frame$Freq[1]
data_frame$Freq[2]

# Laplace succession: (s+1)/(n+2), s being the number of "heads" 
p_dach <- (data_frame$Freq[1]+1)/(n+2)
p_dach