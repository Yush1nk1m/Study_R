library(ggplot2)
mpg <- as.data.frame(ggplot2::mpg)
midwest <- as.data.frame(ggplot2::midwest)

# Q1.
ggplot(data = mpg, aes(x = cty, y = hwy)) +
  geom_point()

# Q2.
ggplot(data = midwest, aes(x = poptotal, y = popasian)) +
  geom_point() +
  xlim(0, 500000) +
  ylim(0, 10000)
  