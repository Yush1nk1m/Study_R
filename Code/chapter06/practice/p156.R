library(ggplot2)
fuel <- data.frame(fl = c("c", "d", "e", "p", "r"),
                   price_fl = c(2.35, 2.38, 2.11, 2.76, 2.22))
fuel

# Q1.
mpg <- left_join(mpg, fuel, by = "fl")

# Q2.
mpg %>%
  select(model, fl, price_fl) %>%
  head(5)
