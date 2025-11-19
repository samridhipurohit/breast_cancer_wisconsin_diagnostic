here::i_am("code/01_make_table.R")

library(readr)
library(dplyr)
library(here)

#Load data (CSV version)
data <- read_csv(here("data", "breast_cancer_wisconsin.csv"), show_col_types = FALSE)

#Create a summary table by diagnosis
summary_table <- data |>
  group_by(Diagnosis = diagnosis) |>
  summarise(
    Radius = round(mean(radius_mean, na.rm = TRUE), 3),
    Texture = round(mean(texture_mean, na.rm = TRUE), 3),
    Perimeter = round(mean(perimeter_mean, na.rm = TRUE), 3),
    Area = round(mean(area_mean, na.rm = TRUE), 3),
    Smoothness = round(mean(smoothness_mean, na.rm = TRUE), 3),
  )

#Save the summary table as CSV
write_csv(summary_table, here("output", "summary_table.csv"))

message("Summary table saved: output/summary_table.csv")