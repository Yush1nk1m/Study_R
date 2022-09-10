# 1.
class(welfare$code_job)

table(welfare$code_job)

# 2.
library(readxl)
list_job <- read_excel("Koweps_Codebook.xlsx", col_names = T, sheet = 2)
head(list_job)

dim(list_job)

# 3.
welfare <- left_join(welfare, list_job, by = "code_job")

welfare %>%
  filter(!is.na(code_job)) %>%
  select(code_job, job) %>%
  head(10)
