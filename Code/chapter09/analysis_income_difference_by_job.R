# 1.
job_income <- welfare %>%
  filter(!is.na(job) & !is.na(income)) %>%
  group_by(job) %>%
  summarise(mean_income = mean(income))

head(job_income)

# 2.
top10 <- job_income %>%
  arrange(desc(mean_income)) %>%
  head(10)

top10

# 3.
ggplot(data = top10, aes(x = reorder(job, mean_income), y = mean_income)) +
  geom_col() +
  coord_flip()

# 4.
bottom10 <- job_income %>%
  arrange(mean_income) %>%
  head(10)

bottom10

ggplot(data = bottom10, aes(x = reorder(job, -mean_income),
                            y = mean_income)) +
  geom_col() +
  coord_flip() +
  ylim(0, 850)
