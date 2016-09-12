require(ggplot2)
require(ggplotly)
data_source <- "https://raw.githubusercontent.com/pandafulmanda/grammars-of-visualization/master/assets/data/rsvps.csv";

library(RCurl)
data_string <- getURL(data_source)
data <- read.csv(text = data_string)

plt <- ggplot(data, aes(x=Month, y=RSVPCounts)) +
  geom_point() +
  facet_grid( Location ~ .)

ggplotly(plt)
