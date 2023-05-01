#https://www.r-graph-gallery.com/line-chart-ggplot2.html
#Holtz Yan 2018

# Libraries
library(ggplot2)

# create data
xValue <- 1:10
yValue <- cumsum(rnorm(10))
data <- data.frame(xValue,yValue)

# Plot
ggplot(data, aes(x=xValue, y=yValue)) + geom_line()