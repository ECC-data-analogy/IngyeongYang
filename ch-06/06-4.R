exam %>% arrange(math) #sort by math score ascending
exam %>% arrange(des(math)) #sort by math score descending
exam %>% arrange(class, math)