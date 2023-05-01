#https://cran.r-project.org/web/packages/Ternary/vignettes/Ternary.html

library('Ternary')
TernaryPlot('Steam', 'Ice', 'Water', 
            grid.lines = 5, grid.lty = 'dotted',
            grid.minor.lines = 1, grid.minor.lty = 'dotted',
            point = 'West')
HorizontalGrid()
middle_triangle <- matrix(c(
  30, 40, 30,
  30, 30, 40,
  55, 20, 25
), ncol = 3, byrow = TRUE)
TernaryPolygon(middle_triangle, col = '#aaddfa', border = 'grey')
TernaryLines(list(c(0, 100, 0), middle_triangle[1, ]), col = 'grey')
TernaryLines(list(c(0, 0, 100), middle_triangle[2, ]), col = 'grey')
TernaryLines(list(c(100, 0, 0), middle_triangle[3, ]), col = 'grey')
TernaryArrows(c(20, 20, 60), c(30, 30, 40), length = 0.2, col = 'darkblue')