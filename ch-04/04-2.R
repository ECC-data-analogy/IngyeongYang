#create values
english <- c(90,80,60,70)
math <- c(50,60,100,20)

#make data frame with values
df_midterm <- data.frame(english, math)

#add class info
class <- c(1,1,2,2)
df_midterm <- data.frame(english, math, class)

#analyze
mean(df_midterm$english) #mean of english score
mean(df_midterm$math) #mean of math score

#make data frame without making values
df_midterm <- data.frame(english = c(90,80,60,70), math = c(50,60,100,20), class = c(1,1,2,2))
