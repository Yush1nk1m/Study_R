library(ggplot2)
df_mpg <- data.frame(mpg)

# Q1.
mean_of_low <- df_mpg %>% filter(displ <= 4)
mean_of_high <- df_mpg %>% filter(displ >= 5)
mean_of_low <- mean(mean_of_low$hwy)
mean_of_high <- mean(mean_of_high$hwy)

ifelse(mean_of_low > mean_of_high, print("class 1 is better"), print("class 2 is better"))

# Q2.
cty_of_audi <- df_mpg %>% filter(manufacturer == "audi")
cty_of_toyota <- df_mpg %>% filter(manufacturer == "toyota")
cty_of_audi <- mean(cty_of_audi$cty)
cty_of_toyota <- mean(cty_of_toyota$cty)

ifelse(cty_of_audi > cty_of_toyota, print("audi has better cty."), print("toyota has better cty."))

# Q3.
triple_data <- df_mpg %>% filter(manufacturer %in% c("chevrolet", "ford", "honda"))
hwy_of_triple <- mean(triple_data$hwy)
print(hwy_of_triple)
