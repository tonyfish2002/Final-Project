library(lme4)
library(gtsummary)

here::i_am('code/01_make_table.R')

dat_f <- readRDS(
  file = here::here('clean_data', 'data_clean.rds')
)

model_f <-
  glm(
    data = dat_f,
    Wins ~ Club + offset(log(Appearances)),
    family = quasipoisson
  ) 

tbl_f <- tbl_regression(model_f, exponentiate = TRUE) |>
  modify_table_styling(
    columns = c(estimate, conf.low, conf.high),
    rows = p.value < 0.05,
    text_format = "bold"
  )

saveRDS(
  tbl_f,
  file = here::here('output', 'table.rds')
)