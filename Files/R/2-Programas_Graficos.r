#Link de acesso:
#https://cran.r-project.org/web/packages/Ternary/vignettes/Ternary.html
#Autor: Martin R. Smith, 08/10/2021 - Create Ternary Plots in R
#Acesso em: 29/11/2021
#Código modificado por João Vítor Fernandes Dias, em 29/11/2021

# install.packages('Ternary')
# Ternary::TernaryApp()
# if (!require('devtools')) install.packages('devtools')
# install_github('ms609/Ternary')

library('Ternary')

par(mfrow = c(1, 2), mar = rep(0.3, 4))
TernaryPlot(
  alab      = "Redder \u2192",
  blab      = "\u2190 Greener",
  clab      = "Bluer \u2192",
  lab.col   = c('red', 'darkgreen', 'blue'),
  point     = 'right',
  lab.cex   = 0.8,
  grid.minor.lines = 0,
  grid.lty  = 'solid',
  col       = rgb(0.9, 0.6, 0.9),
  grid.col  = 'white', 
  axis.col  = rgb(0.6, 0.6, 0.6),
  ticks.col = rgb(0.6, 0.6, 0.6),
  axis.rotate = FALSE,
  padding   = 0.08
)
# Colour the background:
cols <- TernaryPointValues(rgb)
ColourTernary(cols, spectrum = NULL)
