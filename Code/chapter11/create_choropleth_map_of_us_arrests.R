# 1.
install.packages(c("mapproj", "ggiraphExtra"))
library(ggiraphExtra)

# 2.
str(USArrests)

head(USArrests)

# 3.
library(tibble)

crime <- rownames_to_column(USArrests, var = "state")
crime$state <- tolower(crime$state)

str(crime)

# 4.
install.packages("maps")
library(ggplot2)
states_map <- map_data("state")
str(states_map)

# 5.
ggChoropleth(data = crime,
             aes(fill = Murder,
                 map_id = state),
             map = states_map)

# 6.
ggChoropleth(data = crime,
             aes(fill = Murder,
                 map_id = state),
             map = states_map,
             interactive = T)
