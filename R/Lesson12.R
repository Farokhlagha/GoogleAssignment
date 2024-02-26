library(ggplot2)
library(palmerpenguins)

ggplot(data = penguins, aes(x=flipper_length_mm, y=body_mass_g))+
  geom_point(aes(color=species))+
  facet_wrap(~species)

ggplot(data = diamonds)+
  geom_bar(mapping = aes(x=color, fill=cut))+
  facet_wrap(~cut)

ggplot(data = penguins)+
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species))+
  facet_grid(sex~species)

ggplot(data = penguins)+
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species))+
  labs(title = 'Palmer Penguins: Body mass vs. Flipper Length',
       subtitle = 'sample of Three Penguin Species',
       caption = 'data collected by Dr.Kristen Gorman')+ 
   annotate('text', x=220, y=3500, label='the Gentoos are the largest', color='purple',
            fontface='bold', size=4.5, angle=25)
  
p <- ggplot(data = penguins)+
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species))+
  labs(title = 'Palmer Penguins: Body mass vs. Flipper Length',
       subtitle = 'sample of Three Penguin Species',
       caption = 'data collected by Dr.Kristen Gorman')

p+annotate('text', x=220, y=3500, label='the Gentoos are the largest')



