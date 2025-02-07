library(tidyverse)
library(dplyr)
library(ggplot2)
library(dslabs)
data(murders)


murders %>% 
  mutate(rate = total / population * 10^6) %>%  
  mutate(abb = reorder(abb, rate)) %>%  
  ggplot(aes(abb, rate)) +
  geom_bar(width = 0.5, stat = "identity", color = "black") +
  coord_flip()

ggsave("C:/Users/spenc/projects/murders/figs/barplot.png")



