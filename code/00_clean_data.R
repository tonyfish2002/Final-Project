library(tidyverse)

here::i_am('code/00_clean_data.R')

data<-read_csv(
  here::here('raw_data/final_proj_ds.csv'))
  
dat_f <- data |>
  filter(Appearances>0
  ) |> 
  mutate(Club = factor(Club), Win.Rate = Wins/Appearances)

saveRDS(
  dat_f,
  file = here::here('clean_data', 'data_clean.rds')
)