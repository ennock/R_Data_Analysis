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



  