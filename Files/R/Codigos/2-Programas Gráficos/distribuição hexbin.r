#https://www.r-graph-gallery.com/100-high-density-scatterplot-with-binning.html#LogoMenu
# Packages
library(hexbin)
library(RColorBrewer)

# Create data
x <- rnorm(mean=1.5, 5000)
y <- rnorm(mean=1.6, 5000)

# Make the plot
bin<-hexbin(x, y, xbins=40)
my_colors=colorRampPalette(rev(brewer.pal(11,'Spectral')))
plot(bin, main="" , colramp=my_colors , legend=F ) 