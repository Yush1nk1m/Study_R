options(encoding = "CP949")

library(ggiraphExtra)
library(ggplot2)

# 1.
install.packages(c("stringi", "devtools"))
devtools::install_github("cardiomoon/kormaps2014")

library(kormaps2014)

# 2.
str(korpop1)
str(changeCode(korpop1))

# 3.
library(dplyr)
korpop1 <- rename(korpop1, pop = 총인구_명, name = 행정구역별_읍면동)
korpop1$name <- iconv(korpop1$name, "UTF-8", "CP949")

# 4.
str(changeCode(kormap1))

# 5.
ggChoropleth(data = korpop1,
             aes(fill = pop,
                 map_id = code,
                 tooltip = name),
             map = kormap1,
             interactive = T)
