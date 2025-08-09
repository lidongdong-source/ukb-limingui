setwd("~/GitHub/ukb-limingui")

df <- data.frame(id = 1:5, value = c(10, 20, 30, 40, 50))


library(ggplot2)

p <- ggplot(df, aes(x = id, y = value)) +
    geom_point(size = 3) +
    theme_minimal() +
    labs(title = "Scatter Plot of id vs value", x = "id", y = "value")

ggsave("./output/scatter_plot.png", plot = p, dpi = 300, width = 6, height = 4)

write.table(df, file = "./data/df.txt", sep = "\t", row.names = FALSE, quote = FALSE)
