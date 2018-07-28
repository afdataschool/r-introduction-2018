gapminder <- read.csv("data/gapminder-FiveYearData.csv")
str(gapminder)
nrow(gapminder)
ncol(gapminder)
dim(gapminder)
typeof(gapminder$country)
range(gapminder$lifeExp)
min(gapminder$lifeExp)
mean(gapminder$lifeExp)

head(gapminder)
gapminder

tail(gapminder)

#I"m going to get some random rows
gapminder[1000:1005,]
sample(gapminder, 1)
gapminder[sample(1:nrow(gapminder), 6), ]
nrows <- 1:nrow(gapminder)
random_rows <- sample(1:nrow(gapminder), 6) #this gets the row numbers
gapminder[random_rows, ]

#This is a comment

## Subsetting Data
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- letters[1:5]
x
x[1]
x[4]
x[c(1, 3)]
x[c(1, 3, 1)]
x[6]
x[0]

x[-2]
x[c(-2, -5)]
x[-(1:3)]
x[4:5]

x
x["a"]
x[c("a", "c")]
names(x) <- NULL
x
names(x) <- letters[1:5]

logical_vec <- c(TRUE, TRUE, FALSE, TRUE, FALSE)
x[logical_vec]
x[c(TRUE, TRUE, FALSE, TRUE, FALSE)]

x > 7
x[x > 7]
!TRUE
!FALSE
x[!x > 7]
x[x <= 7]

names(x) == "c"
x[names(x) == "c"]
x[names(x) %in% c("a", "b", "c")]
x[!names(x) %in% c("a", "b", "c")]

x[x < 7 & x > 5]
x[(x < 7 & x > 6) | x < 5]

x[-"a"]
names(x) != "a"
x[names(x) != "a"]
x[!names(x) %in% c("a", "e")]

xlist <- list(a = "R is great", b = 1:10, data = gapminder)
xlist$a
xlist[1]
xlist[1:2]
xlist[[1]]
xlist$a
xlist[["a"]]
xlist[[-1]]
xlist[[1:2]]
xlist$b[5]
xlist[[2]][5]
xlist$b
xlist[[2]]
xlist[2][[1]][5]
xlist$b[-c(1:4, 6:10)]

mod <- aov(pop ~ lifeExp, data = gapminder)
attributes(mod)
mod$residuals

head(gapminder)
gapminder[[1]]
gapminder[1:10, 2:4]

#get data for 1957
gapminder[gapminder$year == 1957, ]
gapminder$year
gapminder$year == 1957

gapminder[gapminder$year == 2002 & 2007,]
gapminder[gapminder$year == 2002 | gapminder$year == 2007,]
gapminder[gapminder$year %in% c(2002, 2007),]
gapminder$year %in% c(2002, 2007)
gapminder$year[1:15] %in% c(2002, 2007)
gapminder$year[1:15]
gapminder[!gapminder$year %in% c(2002, 2007),]
