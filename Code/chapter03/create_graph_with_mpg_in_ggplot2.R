# 1.
qplot(data = mpg, x = hwy)

# 2.
qplot(data = mpg, x = cty)

qplot(data = mpg, x = drv, y = hwy)

qplot(data = mpg, x = drv, y = hwy, geom = "line")

qplot(data = mpg, x = drv, y = hwy, geom = "boxplot")

# express color by 'drv'
qplot(data = mpg, x = drv, y = hwy, geom = "boxplot", colour = drv)

# print a manual of function 'qplot'
?qplot
