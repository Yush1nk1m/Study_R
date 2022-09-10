# 1.
age_income <- welfare %>%
  filter(!is.na(income)) %>%
  group_by(age) %>%
  summarise(mean_income = mean(income))

head(age_income)

# 2.
ggplot(data = age_income, aes(x = age, y = mean_income)) + geom_line()
