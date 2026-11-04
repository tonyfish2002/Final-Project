here::i_am("code/04_render_report.R")

rmarkdown::render(
  here::here("final_project.Rmd"),
  output_file = here::here("final_project.html")
)