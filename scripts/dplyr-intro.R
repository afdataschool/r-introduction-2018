library(tidyverse)

gapminder <- read_csv("data/gapminder-FiveYearData.csv")
class(gapminder)
gapminder

## Select

year_country_gdp <- select(gapminder, year, country, gdpPercap)
year_country_gdp

year_country_gdp <- gapminder %>% 
  select(year, country, gdpPercap)

gapminder %>% 
  select(1:3)

gapminder %>% 
  select(starts_with("co"))

gapminder %>% 
  select(contains("p"), starts_with("co"))

## Filter

year_country_gdp_euro <- gapminder %>% 
  filter(continent == "Europe") %>% 
  select(year, country, gdpPercap)
year_country_gdp_euro

gapminder %>% 
  filter(continent == "Africa") %>% 
  select(lifeExp, country, year)

gapminder %>% 
  filter(year > 1975, lifeExp < 50)

## Arrange

gapminder %>% 
  arrange(pop)

gapminder %>% 
  arrange(desc(pop))

gapminder %>% 
  arrange(desc(country))

gapminder %>% 
  arrange(year, desc(country))

gapminder %>% 
  filter(lifeExp > 70, year > 1982) %>% 
  arrange(pop)

## group_by

gapminder

gapminder %>% 
  group_by(continent)

## Summarise

gdp_bycontinent <- gapminder %>% 
  group_by(continent) %>% 
  summarise(mean_gdpPercap = mean(gdpPercap))

gapminder %>% 
  group_by(country) %>% 
  summarise(mean_lifeExp = mean(lifeExp)) %>% 
  arrange(mean_lifeExp)

gapminder %>% 
  group_by(country) %>% 
  summarise(mean_lifeExp = mean(lifeExp)) %>% 
  arrange(desc(mean_lifeExp))

gapminder %>% 
  group_by(continent, year) %>% 
  summarise(mean_gdpPercap = mean(gdpPercap))

gapminder %>% 
  group_by(continent, year) %>% 
  summarise(mean_gdpPercap = mean(gdpPercap),
            sd_gdpPercap = sd(gdpPercap),
            mean_pop = mean(pop),
            sd_pop = sd(pop),
            max_pop = max(pop),
            min_pop = min(pop))

## count() n()

gapminder %>% 
  filter(year == 2002) %>% 
  count(continent)

gapminder %>% 
  count(continent, year)

gapminder %>% 
  group_by(continent) %>% 
  summarise(n = n())

gapminder %>% 
  group_by(continent) %>% 
  summarise(se_lifeExp = sd(lifeExp) / sqrt(n()))

## Mutate
gapminder %>% 
  mutate(gdpPercap_lifeExp = gdpPercap / lifeExp)

gdp_pop_bycontinents_byyear <- gapminder %>% 
  mutate(gdp_billion = gdpPercap * pop / 10^9) %>% 
  group_by(continent, year) %>% 
  summarise(mean_gdp_billion = mean(gdp_billion))
gdp_pop_bycontinents_byyear

## case_when

lifeExp_categories <- gapminder %>% 
  mutate(exp_cat = case_when(
    lifeExp < 40 ~ "less than 40",
    lifeExp >= 40 & lifeExp < 65 ~ "between 40 and 65"#,
    lifeExp >= 65 ~ "above 65",
    TRUE ~ "something weird happened"
  ))
lifeExp_categories %>% 
  filter(lifeExp >= 65)

## Joins

df1 <- data_frame(sample = c(1, 2, 3),
                  measure1 = c(4.2, 5.3, 6.1))
df2 <- data_frame(sample = c(1, 3, 4),
                  measure2 = c(7.8, 6.4, 9.0))
df1
df2

left_join(df1, df2)
right_join(df1, df2)

inner_join(df1, df2)

full_join(df1, df2)

anti_join(df1, df2)
anti_join(df2, df1)

left_join()

gapminder_sr <- read_csv("data/gapminder_sex_ratios.csv")
gapminder_sr

gapminder_left_join <- left_join(gapminder, gapminder_sr)
gapminder_left_join

anti_join(gapminder, gapminder_sr)

gapminder_sr %>% 
  filter(country == "Bolivia", year == 1952)

left_join(df1, df2, by = c("sample" = "sample"))