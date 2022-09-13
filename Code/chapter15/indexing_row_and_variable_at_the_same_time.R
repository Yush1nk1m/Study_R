exam[1, 3]

exam[5, "english"]

exam[exam$math >= 50, "english"]

exam[exam$math >= 50, c("english", "science")]

# 문제) 수학 점수 50 이상, 영어 점수 80 이상인 학생들을 대상으로 각 반의 전 과목 총평균을 구하라.

exam$tot <- (exam$math + exam$english + exam$science) / 3
aggregate(data = exam[exam$math >= 50 & exam$english >= 80,], tot ~ class, mean)

library(dplyr)
exam %>%
  filter(math >= 50 & english >= 80) %>%
  mutate(tot = (math + english + science) / 3) %>%
  group_by(class) %>%
  summarise(mean = mean(tot))
