mpg <- as.data.frame(ggplot2::mpg)

mpg %>%
  mutate(tot = (cty + hwy) / 2) %>%
  filter(class == "compact" | class == "suv") %>%
  group_by(class) %>%
  summarise(mean_tot = mean(tot))

mpg$mean_tot <- (mpg$cty + mpg$hwy) / 2
aggregate(data = mpg[mpg$class %in% c("suv", "compact"), ], mean_tot ~ class, mean)
