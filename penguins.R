library(tidyverse)
library(dplyr)
library(palmerpenguins)
library(here)
library(skimr)
library(janitor)

skim_without_charts(penguins)
glimpse(penguins)
head(penguins)

penguins %>% 
  select(species)

penguins %>% 
  select(-species)

penguins %>% 
  rename(island_new = island)
rename_with(penguins, tolower)
clean_names(penguins)



#organising data
penguins %>% 
  arrange(bill_length_mm)

penguins2 <- penguins %>%       #making a copy with a conditiion
  arrange(bill_length_mm)
View(penguins2)

penguins %>% group_by(island) %>%
  drop_na() %>% 
  summarize(mean_bill_length_mm=mean(bill_length_mm))
  
penguins %>% group_by(island) %>%
  drop_na() %>% 
  summarize(max_bill_length_mm=max(bill_length_mm))

penguins %>% group_by(island) %>%
  drop_na() %>% 
  summarize(min_bill_length_mm=min(bill_length_mm))

penguins %>% group_by(species, island) %>% 
  drop_na() %>% summarize(max_bl=max(bill_length_mm), mean_bl=mean(bill_length_mm)) %>% filter(species=="Adelie")


