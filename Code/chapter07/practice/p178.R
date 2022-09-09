mpg <- as.data.frame(ggplot2::mpg)
mpg[c(10, 14, 58, 93), "drv"] <- "k"
mpg[c(29, 43, 129, 203), "cty"] <- c(3, 4, 39, 42)

# Q1.
mpg$drv <- ifelse(mpg$drv %in% c("4", "f", "r"), mpg$drv, NA)
table(is.na(mpg$drv))
table(mpg$drv)

# Q2.
boxplot(mpg$cty)
boxplot(mpg$cty)$stats

mpg$cty <- ifelse(mpg$cty < 9 | mpg$cty > 26, NA, mpg$cty)
boxplot(mpg$cty)

mpg %>%
  filter(!is.na(drv) & !is.na(cty)) %>%
  group_by(drv) %>%
  summarise(mean_cty = mean(cty))
  