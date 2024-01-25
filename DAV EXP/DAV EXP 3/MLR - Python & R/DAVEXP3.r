# -*- coding: utf-8 -*-

# -- Sheet --

data(mtcars)
model <- lm(mpg ~ wt + hp, data = mtcars)
summary(model)

install.packages("scatterplot3d")
library(scatterplot3d)
scatterplot3d(mtcars$wt, mtcars$hp, mtcars$mpg, main = "Multiple Linear Regression Example",
              xlab = "Weight", ylab = "Horsepower", zlab = "MPG", color = "blue")
fit_plane <- lm(mpg ~ wt + hp, data = mtcars)
scatterplot3d(mtcars$wt, mtcars$hp, predict(fit_plane), add = TRUE, color = "red")

