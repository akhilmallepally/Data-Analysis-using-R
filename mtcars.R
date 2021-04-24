library(tidyverse)
library("ggplot2")
data("mtcars")
head(mtcars)          #previews first 6 rows
str(mtcars)
colnames(mtcars)
mutate(mtcars, mpg_2 = mpg * 10) #creates a new column names mpg_2 in the data frame
rename(mtcars, cyl_new = cyl)

ggplot(data = mtcars, aes(x = cyl, y = carb))+
  geom_point()

as_tibble(mtcars)

data()
