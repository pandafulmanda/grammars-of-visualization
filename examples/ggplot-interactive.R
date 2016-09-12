require(ggplot2)
require(ggplotly)
data_source <- "https://gist.githubusercontent.com/neerajt/6f0ff957e7ff3adab63471460cade5d5/raw/55e3b7691aefe8e1c1dca7543dd4d41c8b5bee09/members.json"

members <- jsonlite::fromJSON(readLines(data_source))
plt <- ggplot(members, aes(x=Date, y=TotalMembers)) +
  geom_point() + geom_point(aes(y = ActiveMembers), color="red") + 
  geom_point(aes(y = TotalMembers - ActiveMembers), color="blue")

ggplotly(plt)