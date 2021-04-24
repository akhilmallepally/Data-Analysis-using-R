data('ToothGrowth')
View(ToothGrowth)

filtered_tg <- filter(ToothGrowth,len > 10)  #filter
View(filtered_tg)
arrange(filtered_tg, len)                    #sort

arrange(filter(ToothGrowth, dose==0.5),len)  #nested function

filtered_toothgrowth <-ToothGrowth %>%      #using pipes
  filter(dose ==0.5) %>% 
  group_by(supp) %>% 
  #arrange(len)
  summarize(mean_len = mean(len, na.rm = T),.group = "drop")

View(filtered_toothgrowth)
