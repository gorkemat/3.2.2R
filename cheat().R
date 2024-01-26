cheat <- function(exercise) {
  if (exercise == "#Q.3.1.7.") {
    solution <- cat('cars <- cars',
                    'carsplot <- ggplot(cars, aes(x = speed, y = dist)) +',
                    '  geom_point() +',
                    '  geom_smooth(method = \'loess\', formula = \'y ~ x\')',
                    'print(carsplot)', sep = "\n")
  } else if (exercise == "#Q.3.1.9.") {
    solution <- cat('install.packages("ggstatsplot")',
                    'library(ggstatsplot)',
                    'ToothGrowth <- ToothGrowth',
                    '?ggstatsplot',
                    'ToothGrowthplot <- ggbetweenstats(ToothGrowth,',
                    '  x = supp,',
                    '  y = len,',
                    'print(ToothGrowthplot)', sep = "\n")
  } else if (exercise == "#Q.3.1.10.") {
    solution <- cat('install.packages("plotly")',
                    'library(plotly)',
                    'body_measurements <- read.csv("https://shorturl.at/nouyJ")',
                    'ShouldertoWaist <- c(body_measurements$ShoulderToWaist)',
                    'HeadCircumference <- c(body_measurements$HeadCircumference)',
                    'TotalHeight <- c(body_measurements$TotalHeight)',
                    'body_measurement_plot <- plot_ly(body_measurements,',
                    '  x = ~TotalHeight,',
                    '  y = ~HeadCircumference,',
                    '  z = ~ShouldertoWaist,',
                    '  opacity = 0.5)',
                    'print(body_measurement_plot)', sep = "\n")
  } else {
    solution <- cat("Exercise not found", sep = "\n")
  }
  return(solution)
}