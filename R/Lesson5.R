library("tidyverse")

penguins %>% arrange(bill_length_mm)

penguins %>% 
  arrange(-bill_length_mm)

penguins2 <- penguins %>% arrange(-bill_length_mm)
view(penguins2)

penguins %>%  group_by(island) %>% drop_na() %>%
  summarise(mean_bill_lengh_mm = mean(bill_length_mm))

penguins %>% group_by(island) %>% drop_na() %>%  
  summarise(max_bill_length_mm = max(bill_length_mm))
  
penguins %>% group_by(species, island) %>% drop_na() %>% 
  summarise(max-bl = max(bill_length_mm), mean-bl = mean(bill_length_mm))

penguins %>% filter(species =="Adelie")
