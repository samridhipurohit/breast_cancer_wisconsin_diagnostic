here::i_am("code/03_render_report.R")

library(rmarkdown)
library(here)

#Render the report from R Markdown to HTML
render(
  input = here("report.Rmd"),
  output_file = "report.html",                 #filename only
  output_dir  = here("report")                 #directory where it should go
)

message("Report rendered successfully: report/report.html")
