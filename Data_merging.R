install.packages("tidyverse")
library(tidyverse)
library(ggplot2)
ggplot2::mpg

##Creating a plot
ggplot(data = mpg) + geom_point(mapping=aes(x= displ, y= hwy, color = class))

##Adding facets to my data
ggplot(data = mpg) + geom_point(mapping=aes(x= displ, y= hwy)) +
  facet_wrap(~class , nrow = 2)

# Initialize a Git repository
system("git init")

# Connect to the GitHub repository
system("git remote add origin https://github.com/ennock/R_Data_Analysis")

# Stage your changes
system("git add .")

# Commit your changes
system("git commit -m 'Initial commit'")

# Push your changes to GitHub
system("git push -u origin master")

## Checking diamonds data
ggplot2::diamonds

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = cut))

##Working on the nyc flights
library(nycflights13)
nycflights13::flights

library(tidyr)
filter(flights, month ==1, day ==1)

filter(flights, month == 1, day == 1)

library(tidyverse)

nycflights13::flights
filter(flights, month == 1, day == 1)
Dec <- filter(flights, month == 12, day == 25)
view(Dec)

arrange(flights, desc(arr_delay))
select(flights, year, month, day)

##mutate
flights_sml <- select(flights,year:day,
                      ends_with("delay"),
                      distance,
                      air_time
                      )
mutate(flights_sml,
       gain = arr_delay - dep_delay,
       speed= distance/air_time*60)

summarize(flights, delay =mean(dep_delay,na.rm = TRUE))


##creating tibbles with the iris data
as_tibble (iris)

##reading data into r studio
gold <- read_csv("C//Users//wwasw//Desktop//LOIMA ASSIGNMENT//Gold.csv")

file.path()< - file.choose()
print(file_path)


# Use file.choose() to interactively choose a file
file_path <- file.choose()
print(file_path)
view(Gender_inequality)
data <- read.csv("C://Users//wwaswa//Desktop//ALX DS//Gender_inequality.csv")
head(data) %>%
  select(data$Year)