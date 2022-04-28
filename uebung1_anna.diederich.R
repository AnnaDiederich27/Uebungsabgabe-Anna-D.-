#Assessment Section 1
#Question 1
a <-2
b <--1
c <--4
#Solve quadratic formula for variables defined above
(-b-sqrt(b^2-4*a*c))/(2*a)
(-b+sqrt(b^2-4*a*c))/(2*a)

#Question 2
log(1024,4)

#Question 3
install.packages("dslabs")
library(dslabs)
data(movielens)
#Explore structure of the data set (3a+b)
str(movielens)
#Explore variable types (3c+d)
class(movielens$title)
class(movielens$genres)

#Question 4
nlevels(movielens$genres)

#Assessment Section 2
#Question 1
x <- c(2, 43, 27, 96, 18)
order(x)
rank(x)
sort(x)

#Question 2
min(x)
which.min(x)
max(x)
which.max(x)

#Question 3
name <- c("Mandi", "Amy", "Nicole", "Olivia")
distance <- c(0.8, 3.1, 2.8, 4.0)
time <- c(10, 30, 40, 50)
#Convert time in minutes into time in hours
time_in_hours <- time/60
#Access Olivia's time 
time_in_hours[4]
#Define speed
speed <- distance/time_in_hours
#Accessing Mandi's time
speed[1]
#Finding runner with maximal speed
i_max <- which.max(speed)
name[i_max]

#Assessment Section 3
data(heights)
options(digits=3)

#Question 1
#determine mean height in data set heights
mean_height <- mean(heights$height)
mean_height
#create logical vector for individuals with height above mean height
ind <- which(heights$height > mean_height)
#determine the number of entries in ind
length(ind)

#Question 2
#use logical vectors to set the 2 conditions 
females <- heights$sex == "Female"
above_average_height <- heights$height > mean_height
females_above_average_height <- females & above_average_height
sum(females_above_average_height)

#Question 3
mean(heights$sex == "Female")

#Question 4
#determine min height (a)
min(heights$height)
#determine index of first individual with min height (b)
i_min <- match(min(heights$height), heights$height)
i_min
#determine the sex of the individual with the previously determined index (c)
heights$sex[i_min]

#Question 5
#determine max height (a)
max(heights$height)
#which integer values lie between min and max heights?
x <- 50:82
x
#how many integers in x are not heights in the heights data set? (c)
sum(!x %in% heights$height)

#Question 6
install.packages("dplyr")
library(dplyr)
#height of 18th individual (a)
heights2 <- mutate(heights, height_cm = height*2.54)
heights2$height_cm[18]
#mean height in cm (b)
mean(heights2$height_cm)

#Question 7
#create data frame with females (a)
females_in_heights2 <- filter(heights2, sex=="Female")
nrow(females_in_heights2)
#mean height of females (b)
mean(females_in_heights2$height_cm)

#Question 8
data(olive)
head(olive)
plot(olive$palmitoleic, olive$palmitic)

#Question 0
hist(olive$eicosenoic)

#Question 10
boxplot(palmitic ~ region, data=olive)



