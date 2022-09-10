# 1.
sex_income <- welfare %>%
  filter(!is.na(income)) %>%
  group_by(sex) %>%
  summarise(mean_income = mean(income))

sex_income

# 2.
ggplot(data = sex_income, aes(x = sex, y = mean_income)) + geom_col()
