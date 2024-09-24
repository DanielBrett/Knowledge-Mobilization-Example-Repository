install.packages("ggplot2")
library(ggplot2)

data <- read.csv("data.csv")

plot <- ggplot(data, aes(x=Pets)) + 
  geom_bar() +
  labs(x = "Entries", y = "Count", title = "Count of Entries in the First Column") +
  theme(panel.background = element_rect(fill = 'white'), plot.title = element_text(hjust = 0.5)) + labs(x="Types of Pets", y="Number of People with that Pet", title="Pet Survey Results")

ggsave("Pet_Data_Viz.jpg", plot = plot, width = 8, height = 6, dpi = 300, device = "jpeg")

