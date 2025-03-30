df_raw <- data.frame(var1 = c(1,2,1), var2 = c(2,3,2))

#install and load package dplyr to use rename() from dplyr
install.packages("dplyr") 
library(dplyr)

df_raw <- rename(df_raw, v2 = var2)