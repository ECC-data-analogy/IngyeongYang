df <- data.frame(var1 = c(4,3,8), var2 = c(2,6,1))
df$var_sum <- df$var1 + df$var2 #create der-var
df$var_mean <- (df$var1 + df$var2)/2

mpg$total <- (mpg$cty + mpg$hwy)/2
mean(mpg$total)
summary(mpg$total)
hist(mpg$total) #histogram of total
mpg$test <- ifelse(mpg$total >= 20, "pass", "fail")
table(mpg$test)

library(ggplot2)
qplot(mpg$test) #bar graph

mpg$grade <- ifelse(mpg$total >= 30, "A", ifelse(mpg$total >= 20, "B", "C"))
head(mpg, 20)
table(mpg$grade)
qplot(mpg$grade)

mpg$grade2 <- ifelse(mpg$total >= 30, "A", ifelse(mpg$total >= 25, "B", ifelse(mpg$total >= 20, "C", "D"))