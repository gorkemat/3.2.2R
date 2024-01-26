make_art <- function(seed = NULL) {
  if (!is.null(seed)) {
    set.seed(seed)
  }
  group <- 45
  group_names <- paste("GA", 3:group, sep = "")
  resim <- data.frame()
  for (i in 1:45) {
    group_data <- data.frame(Year = i, Group = sample(group_names, group, replace = TRUE),
                             Value = prop.table(sample(c(rep(0, 100), 3:group), group)))
    resim <- rbind(resim, group_data)
  }
  resim <- resim[order(resim$Year, resim$Group),]
  palette <- colorRampPalette(brewer.pal(3, "Paired"))(group)
  palette <- palette[sample(length(palette))]
  ggplot(resim, aes(x = Year, y = Value, fill = Group)) + 
    geom_area() +
    theme_minimal() +
    scale_fill_manual(values = palette) +
    theme(
      text = element_blank(),
      line = element_blank(),
      title = element_blank(),
      panel.border = element_blank(),
      panel.background = element_blank()
    )
}