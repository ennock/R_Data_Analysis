#importing the datasets

dataset = read.csv("C:/Users/wwaswa/Desktop/RData/Data.csv")

#selecting specific columns
#dataset = dataset[,2:3]

View(dataset)

##checking for missing age data
dataset$Age = ifelse(is.na(dataset$Age),
                     ave(dataset$Age, FUN =function(x)mean(x, na.rm =TRUE)),
                     dataset$Age)

##checking for missing salary data
dataset$Salary = ifelse(is.na(dataset$Salary),
                     ave(dataset$Salary, FUN =function(x)mean(x, na.rm =TRUE)),
                     dataset$Salary)

##encoding categorical variable
dataset$Country = factor(dataset$Country,
                         levels = c("France", "Spain", "Germany"),
                         labels = c(1,2,3))

#purchased category
dataset$Purchased = factor(dataset$Purchased,
                         levels = c("No", "Yes"),
                         labels = c(0,1))
##splitting the dataset into training and test
#install.packages("caTools")
library(caTools)
set.seed(123)
split = sample.split(dataset$Purchased,SplitRatio = 0.8)

training_set = subset(dataset, split ==TRUE)
testing_set = subset(dataset, split ==FALSE)

##feature scaling by removing all the encoded variables
training_set[,2:3] = scale(training_set[,2:3])
testing_set[,2:3] = scale(testing_set[,2:3])




