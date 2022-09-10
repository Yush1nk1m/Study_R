sex_age <- welfare %>%
  filter(!is.na(income)) %>%
  group_by(age, sex) %>%
  summarise(mean_income = mean(income))

head(sex_age)

ggplot(data = sex_age, aes(x = age, y = mean_income, col = sex)) + geom_line()
