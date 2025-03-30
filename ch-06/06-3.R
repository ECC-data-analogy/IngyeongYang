exam %>% select(math) #return col with is math
exam %>% select(english)
exam %>% select(class, math, english)

exam %>% select(-math) #return col except math
exam %>% select(-math, -english)

exam %>% filter(class == 1) %>% select(english) #get rows which is class == 1 then get col which col is english
exam %>%
  filter(class == 1) %>%
  select(english)
exam %>%
  select(id, math) %>%
  head
exam %>%
  select(id, math) %>%
  head(10)