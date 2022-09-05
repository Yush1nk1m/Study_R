# Q1.
df_midwest <- data.frame(ggplot2::midwest)

summary(df_midwest)
View(df_midwest)

# Q2.
df_midwest <- rename(df_midwest, total = poptotal, asian = popasian)
head(df_midwest)

# Q3.
df_midwest$asian_density <- df_midwest$asian / df_midwest$total
hist(df_midwest$asian_density)

# Q4.
mean_asian_density <- mean(df_midwest$asian_density)
df_midwest$over_asian_average <- ifelse(df_midwest$asian_density > mean_asian_density, "large", "small")
head(df_midwest)

# Q5.
table(df_midwest$over_asian_average)
qplot(df_midwest$over_asian_average)
