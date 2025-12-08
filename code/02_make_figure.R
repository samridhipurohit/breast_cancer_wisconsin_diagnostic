here::i_am("code/02_make_figure.R")

library(ggplot2)
library(readr)
library(dplyr)
library(here)

#Load the dataset
data <- read_csv(here("data", "breast_cancer_wisconsin.csv"), show_col_types = FALSE)

#Make diagnosis for readability
data <- data |>
  mutate(diagnosis = ifelse(diagnosis == "M", "Malignant", "Benign"))

#Create boxplot
p <- ggplot(data, aes(x = diagnosis, y = radius_mean, fill = diagnosis)) +
  geom_boxplot() +
  labs(
    title = "Distribution of Radius Mean by Diagnosis",
    x = "Diagnosis",
    y = "Radius Mean",
    fill = "Diagnosis"     #legend title
  ) +
  theme_minimal()

#Save the figure
ggsave(
  filename = here("output", "figure_boxplot.png"), 
  plot = p, 
  width = 7, 
  height = 5, 
  dpi = 300
  )

message("Figure saved: output/figure_boxplot.png")
