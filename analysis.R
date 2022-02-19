library(tidyverse)
data("rda/murders.rda")

murders %>% mutate(abb = reorder(abb, rate)) %>% 
  ggplot(aes(abb, rate)) + 
  geom_bar(width = 0.5, stat = "identity", color = "black") + 
  coord_flip()

#save the graph
ggsave("figs/barplot.png")