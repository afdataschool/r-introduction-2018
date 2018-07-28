library(tidyverse)

cows <- data_frame(id = c(1, 2, 3),
                   weight1 = c(203, 227, 193),
                   weight2 = c(365, 344, 329))
cows

cows %>% 
  gather(measurement, weight, weight1, weight2)

cows_tidy <- cows %>% 
  gather(key = measurement, value = weight, -id)

cows_tidy %>% 
  spread(key = measurement, value = weight)

cows_tidy %>% 
  spread(key = id, value = weight)

gapminder <- read_csv("data/gapminder-FiveYearData.csv")
gapminder

gap_wide <- read_csv("data/gapminder_wide.csv")

gap_long <- gap_wide %>% 
  gather(obstype_year, obs_values, 
         starts_with("gdpPercap"),
         starts_with("pop"),
         starts_with("lifeExp"))
gap_long

gap_long_sep <- gap_long %>% 
  separate(col = obstype_year, into = c("obstype", "year"), sep = "_")

gap_normal <- gap_long_sep %>% 
  spread(obstype, obs_values)

gap_normal

gap_normal %>% 
  gather(key = obs_type, value = obs_value, 4:6) %>% 
  unite(obstype_year, obs_type, year, sep = "_") %>% 
  spread(obstype_year, obs_value)

write_csv(gap_long, "data/output/gap_long.csv")

gap_long %>% 
  filter(country == "Angola") %>% 
  write_csv("data/output/Angola_long.csv")
