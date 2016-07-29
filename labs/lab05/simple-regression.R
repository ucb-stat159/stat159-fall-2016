# ===========================================================
# Stat 159: RCSDS - Lab
# Title: Simple Linear Regression Analysis
# Author: Gaston Sanchez
# Description: 
#   The main purpose of this script is to carry out a
#   simple linear regression analysis to obtain the results
#   displayed in Section 3.1 (chapter 3) of the book
#   "An Introduction to Statistical Learning"
# Data: 
#   Advertising.csv
#   http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv
# Book: 
#   An Introduction to Statistical Learning
#   (by G. James, D. Witten, T. Hastie and R. Tibshirani)
#   http://www-bcf.usc.edu/~gareth/ISL/data.html
# ===========================================================

# read data set in R as a "data.frame"
# (assuming that the data file is in your working directory)
dat <- read.csv('Advertising.csv', row.names = 1)

# inspecting data frame
head(dat)  # first rows
str(dat)   # structure
summary(dat)  # descriptive stats

# because the simple regression model involves 'TV' and 'Sales'
# we'll do a bit of exploration of these variables
hist(dat$TV)
boxplot(dat$TV)

hist(dat$Sales)
boxplot(dat$Sales)

# Scatterplot and correlation between 'TV' and 'Sales'
# to make sure that fitting a regression line "makes sense"
plot(dat$TV, dat$Sales)
cor(dat$TV, dat$Sales)

# simple linear regression with function 'lm()'
# (i.e. linear model)
reg <- lm(Sales ~ TV, data = dat)
reg

# 'lm()' returns an object of class "lm"
class(reg)

# the object 'reg' contains many results
names(reg)

# likewise, an object of class "lm" has some default plots
plot(reg)

# an object of class "lm" has a 'summary()' method
regsum <- summary(reg)
regsum

# the object 'regsum' also contains more results
names(regsum)

# 95% confidence intervals of regression coefficients
confint(reg, level = 0.95)

# scatter plot with regression line
plot(dat$TV, dat$Sales, pch = 19, col = "#8e8f94")
abline(reg, col = "#5679DF", lwd = 2)


