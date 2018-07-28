cats <- read.csv("data/feline-data.csv")
cats
cats$weight
cats$coat
cats$weight + 2
paste("My cat is", cats$coat)
cats$weight + cats$coat

typeof(3.14)
typeof(1L)
typeof(TRUE)
typeof("banana")

cats <- read.csv("data/feline-data2.csv")
typeof(cats$weight)
cats$weight + 2

my_vector <- vector(length = 3)
my_vector
another_vector <- vector(mode = 'character',
                         length = 3)
another_vector
str(another_vector)

combined_vector <- c(2, 3, 6)
combined_vector
str(combined_vector)
combined_vector2 <- c(2,3, '6', "red")
str(combined_vector2)
combined_vector2_num <- as.numeric(combined_vector2)

str(cats)
as.numeric(cats$weight)

my_series <- 1:10
my_series
my_seq <- seq(from = 3, to = 12, by = 0.1)
my_seq
my_seq2 <- seq(from = 3, to = 12, length.out = 16)
my_seq2
head(my_seq, 3)
tail(my_seq)
length(my_seq2)
typeof(my_seq)
class(my_seq)
class(my_seq) <- "green"
class(my_seq)
typeof(my_seq) <- "integer"
class(cats)
typeof(cats)

names(my_seq)

short_seq <- 1:3
names(short_seq)
names(short_seq) <- c('a', 'b', 'c')
names(short_seq)
short_seq
class(short_seq)
typeof(short_seq)

vec <- 1:26
vec <- vec * 2
names(vec) <- LETTERS
vec

str(cats)
cats <- read.csv("data/feline-data.csv")
str(cats)

str(cats$coat)
typeof(cats$coat)

coats <- c("tabby", "tortoiseshell", "tortoiseshell",
           "black", "tabby")
coats
str(coats)

CATegories <- factor(coats)
class(CATegories)
str(CATegories)

typeof(coats)
typeof(CATegories)

cats_nofac <- read.csv("data/feline-data.csv", 
                       stringsAsFactors = FALSE)
str(cats_nofac)

as.character(cats$coat)

my_list <- list(1, 'a', TRUE)
my_list

my_list <- list(value = 1, name = 'a', data = TRUE)
my_list

my_list <- list(value = 1:10, names = LETTERS, data = TRUE)

my_list2 <- list(new_value = 1, old_list = my_list)
my_list2

cats[1]
typeof(cats[1])
class(cats[1])

cats[[1]]
typeof(cats[[1]])
class(cats[[1]])

cats$coat

cats["coat", drop = TRUE]
cats[1, 1]
cats[, 1]
cats[1, , drop = TRUE]

cats[1:2, ]
typeof(cats[1, ])

cats[, 1:2]

cats

cats[[c(1, 2)]]
cats[[2]]


cats
age <- c(2, 3, 5)
age

cbind(cats, age)
cats$age <- age

age <- c(2, 3, 6, 12)
cbind(cats, age)

age <- c(2, 3)
cbind(cats, age)

age <- c(2, 3, 6)
cbind(cats, age)

cats$age <- age

new_row <- list('tortoiseshell', 3.3, 1, 9)
new_row

rbind(cats, new_row)
cats$coat

levels(cats$coat) <- c(levels(cats$coat), 'tortoiseshell')
levels(cats$coat)
cats

rbind(cats, new_row)

cats$coat <- as.character(cats$coat)
cats
str(cats)

cats <- rbind(cats, new_row)
str(cats)
cats$coat <- as.factor(cats$coat)
str(cats)

human.age <- cats$age * 7
human.age
human.age <- as.factor(human.age)
human.age
as.character(human.age)
as.numeric(as.character(human.age))

cats
cats[-4,]

cats <- rbind(cats, cats)
cats

cats_nohead <- read.csv("data/feline-data-nohead",
                        header = FALSE)
cats_nohead

rbind(cats, cats_nohead)

df <- data.frame(first = c('Alex'),
                 last = c('Whan'),
                 lucky_number = c(pi),
                 stringsAsFactors = FALSE)
df
df <- rbind(df, list('Marie', 'Curie', 238) )
df
df <- cbind(df, coffeetime = c(TRUE,TRUE))
df
1:5
