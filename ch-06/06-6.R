exam %>% summarise(mean_math = mean(math)) #return mean of math
exam %>%
  group_by(class) %>%
  summarise(mean_math = mean(math)) #return mean of math by the class
exam %>%
  group_bu(class) %>%
  summaries(mean_math = mean(math),
            sum_math = sum(math),
            median_math = median(math),
            n = n())

mpg %>%
  group_by(manufacturer, drv) %>%
  summaries(mean_city = mean(cty)) %>%
  head(10)
mpg %>%
  group_by(manufacturer) %>%
  filter(class == "suv") %>%
  mutate(tot = (cty+hwy)/2) %>%
  summaries(mean_tot = mean(tot)) %>%
  arrange(desc(mean_tot)) %>%
  head(5)