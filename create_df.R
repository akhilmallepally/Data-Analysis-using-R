fruits <- c("mango","banana","apple","kiwi", "avacado")
ran_fruits<- c(1,2,3,4,5)
fruits_rank <- data.frame(fruits, ran_fruits)
fruits_rank
head(fruits_rank)
glimpse(fruits_rank)
colnames(fruits_rank)
as_tibble(fruits_rank)
mutate(fruits_rank, ran_fruits = ran_fruits *10)
