library(dplyr)
exam <- read.csv("csv_exam.csv")

exam %>% filter(class == 1) #return all rows which is class == 1
exam %>% filter(class == 2) #return all rows which is class == 2

exam %>% filter(class != 1) #return all rows which is not class == 1
exam %>% filter(class != 3) #return all rows which is not class == 

exam %>% filter(math > 50) #return all rows which is math score is over 50
exam %>% filter(math < 50) #return all rows which is math score is less than 50
exam %>% filter(english >= 80) #return all rows which is english score is over or same 80
exam %>% filter(english <= 80) #return all rows which is english score is less or same 80

exam %>% filter(class == 1 & math >= 50) #using & for and
exam %>% filter(class == 2 & english >= 80)

exam %>% filter(math >= 90 | english >= 90) #using | for or
exam %>% filter(english < 90 | science <50)
exam %>% filter(class == 1 | class == 3 | class == 5)
exam %>% filter(class %n% c(1,3,5)) #return class == 1,3,5

class1 <- exam %>% filter(class == 1) #create row class1 by return class == 1
class2 <- exam %>% filter(class == 2)
mean(class1$math)
mean(class2$math)

