library(tidyverse)

flavors_df <-read_csv("flavors_of_cacao.csv")

colnames(flavors_df)

flavors_df %>%
  rename(Company = `Company
(Maker-if known)`)

trimmed_flavors_df <- flavors_df %>%
  select(Rating, `Cocoa
Percent`, `Company
Location`)
view(trimmed_flavors_df)

trimmed_flavors_df %>%
  summarize(mean_rating = mean(Rating))

best_trimmed_flavors_df <- trimmed_flavors_df %>% 
  filter(`Cocoa
Percent` >= 70 & Rating >= 3.5)
view(best_trimmed_flavors_df)

ggplot(data = best_trimmed_flavors_df) +
  geom_bar(mapping = aes(x = Rating))

ggplot(data = best_trimmed_flavors_df) +
  geom_bar(mapping = aes(x = Rating)) +
  facet_wrap(~Rating)

ggplot(data = trimmed_flavors_df) +
  geom_point(mapping = aes(x = `Cocoa
Percent`, y = Rating)) +
  labs(title = 'Suggested Chocolate') 

ggplot(data = trimmed_flavors_df) +
  geom_point(mapping = aes(x = `Cocoa
Percent`, y = Rating)) +
  ggsave('chocolate.png')


