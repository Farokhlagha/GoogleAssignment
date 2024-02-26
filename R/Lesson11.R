library(ggplot2)
library(palmerpenguins)

ggplot(data = penguins)+
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species, shape=species, size=species))

ggplot(data = penguins)+
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, alpha=species))

ggplot(data = penguins)+
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g), color='purple')

ggplot(data = penguins)+
  geom_smooth(mapping = aes(x=flipper_length_mm, y=body_mass_g))+
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g))

ggplot(data = penguins)+
  geom_smooth(mapping = aes(x=flipper_length_mm, y=body_mass_g, linetype=species))+
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g))

ggplot(data = penguins)+
  geom_jitter(mapping = aes(x=flipper_length_mm, y=body_mass_g))

ggplot(data = diamonds)+
  geom_bar(mapping = aes(x=cut))

ggplot(data = diamonds)+
  geom_bar(mapping = aes(x=cut, fill=clarity))

