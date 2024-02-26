install.packages("tidyverse")

library(tidyverse)

names <- c("", "", "", "")

age <- c(23,45 ,90 ,120 )

people <- data.frame(names, age)

head(people)

str(people)

glimpse(people)

colnames(people)

mutate(people, age_in_20 = age + 20)

