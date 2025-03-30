#install 'readxl' and load
install.packages("readxl")
library(readxl)

#get excel file
df_exam <- read_excel("excel_exam.xlsx")

#analyze
mean(df_exam$english)
mean(df_exam$science)

df_exam_novar <- read_excel("excel_exam.novar.xlsx") #take first row as val name
df_exam_novar <- read_excel("excel_exam.novar.xlsx", col_names=F) #set first row as data using col_names = F

df_exam_sheet <- read_excel("excel_exam_sheet.xlsx", sheet = 3) #if there is more than two sheets in file, use parameter sheet to choose which sheet num to take

#get csv file
df_csv_exam <- read.csv("csv_exam.csv")

#save data frame as csv file
df_midterm <- data.frame(english = c(90,80,60,70), math = c(50,60,100,20), class = c(1,1,2,2))
write.csv(df_midterm, file = "df_midterm.csv")

#using RDS file
saveRDS(df_midterm, file = "df_midterm.rds") #save data frame as RDS file
rm(df_midterm) #delete data
df_midterm <- readRDS("df_midterm.rds") #read RDS file