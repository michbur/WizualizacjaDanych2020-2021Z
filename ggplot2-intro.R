# https://ggplot2-book.org/

x <- sample(1L:10, size = 20, replace = TRUE)
df <- data.frame(x = sample(1L:10, size = 20, replace = TRUE),
                 y = sample(1L:10, size = 20, replace = TRUE),
                 gr = sample(letters[1L:2], size = 20, replace = TRUE))


plot(x)
title(main = "Tytul")


par(mfrow = c(1, 2))
plot(x = df[df["gr"] == "a", "x"], df[df["gr"] == "a", "y"])
plot(x = df[df["gr"] == "b", "x"], df[df["gr"] == "b", "y"])

library(ggplot2)

p <- ggplot(df, aes(x = x, y = y)) +
  geom_point() 

p

p + facet_wrap(~ gr)

p + ggtitle("Tytul")
