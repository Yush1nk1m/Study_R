# 2.
install.packages("foreign")

library(foreign)
library(dplyr)
library(ggplot2)
library(readxl)

# 3.
raw_welfare <- read.spss(file = "Koweps_hpc10_2015_beta7.sav",
                         to.data.frame = T)
welfare <- raw_welfare

# 4.
head(welfare)
tail(welfare)
View(welfare)
dim(welfare)
str(welfare)
summary(welfare)

# 5.
welfare <- rename(welfare,
                  sex = h10_g3,
                  birth = h10_g4,
                  marriage = h10_g10,
                  religion = h10_g11,
                  income = p1002_8aq1,
                  code_job = h10_eco9,
                  code_region = h10_reg7)
