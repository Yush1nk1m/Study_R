library(ggplot2)
# 1.
install.packages("dygraphs")
library(dygraphs)

# 2.
economics <- ggplot2::economics
head(economics)

# 3.
library(xts)
eco <- xts(economics$unemploy, order.by = economics$date)
head(eco)

# 4.
dygraph(eco)

# 5.
dygraph(eco) %>% dyRangeSelector()

# 6.
eco_a <- xts(economics$psavert, order.by = economics$date)

eco_b <- xts(economics$unemploy/1000, order.by = economics$date)

# 7.
eco2 <- cbind(eco_a, eco_b)
colnames(eco2) <- c("psavert", "unemploy")
head(eco2)

# 8.
dygraph(eco2) %>% dyRangeSelector()
