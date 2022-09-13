# 1.
head(mtcars)

car_cor <- cor(mtcars)
round(car_cor, 2)

# 2.
install.packages("corrplot")
library(corrplot)

corrplot(car_cor)

# 3.
corrplot(car_cor, method = "number")

# 4.
col <- colorRampPalette(c("#BB4444", "#EE9988", "#FFFFFF", "#77AADD", "#4477AA"))

corrplot(car_cor,
         method = "color",
         col = col(200),
         type = "lower",
         order = "hclust",
         addCoef.col = "black",
         tl.col = "black",
         tl.srt = 45,
         diag = F)
