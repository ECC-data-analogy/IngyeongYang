exam <- read.csv("csv_exam.csv")
head(exam) #return first 6rows
head(exam, 10) #return first 10rows
tail(exam) #return last 6rows
tail(exam, 10) #return last 10rows
View(exam) #print exam data in data viewer screen
dim(exam) #return # of rows and cols of exam data
str(exam)  #return attributes of exam
summary(exam) #return info of exam such as min, 1st qu, median, mean, 3rd qu, max

install.packages("ggplot2")
mpg <- as.data.frame(ggplot2::mpg) #get mpg data from package ggplot2
head(mpg)
tail(mpg)
dim(mpg)
str(mpg)
summary(mpg)