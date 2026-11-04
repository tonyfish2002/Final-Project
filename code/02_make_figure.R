library(ggplot2)

here::i_am('code/02_make_figure.R')

dat_f <- readRDS(
  file = here::here('clean_data', 'data_clean.rds')
)

club_abbr <- c(
  "Arsenal" = "ARS", "Aston-Villa" = "AVL", "Brighton-and-Hove-Albion" = "BHA",
  "Burnley" = "BUR", "Chelsea" = "CHE", "Crystal-Palace" = "CRY",
  "Everton" = "EVE", "Fulham" = "FUL", "Leeds-United" = "LEE",
  "Leicester-City" = "LEI", "Liverpool" = "LIV", "Manchester-City" = "MCI",
  "Manchester-United" = "MUN", "Newcastle-United" = "NEW",
  "Sheffield-United" = "SHU", "Southampton" = "SOU",
  "Tottenham-Hotspur" = "TOT", "West-Bromwich-Albion" = "WBA",
  "West-Ham-United" = "WHU", "Wolverhampton-Wanderers" = "WOL"
)

fig_f <- ggplot(dat_f, aes(x = Club, y = Win.Rate, color = Club)) +
  geom_boxplot() +
  scale_x_discrete(labels = club_abbr)+
  labs(
    title = 'Win Rates Among Players on Different EPL Clubs',
    y = 'Win Rate'
  )

saveRDS(
  fig_f,
  file = here::here('output', 'fig_f.rds')
)