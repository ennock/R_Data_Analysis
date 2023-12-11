##Suport vector regression
##importing the data

Position_Salaries = read.csv("C:/Users/wwaswa/Desktop/RData/Position_Salaries.csv")
Position_Salaries=Position_Salaries[,2:3]
install.packages("e1071")
library(e1071)

regressor = svm(formula = Salary ~.,
                data = dataset,
                type = "eps-regression")

##predicitng the results
y_pred = predict(regressor,data.frame(Level = 6.5))

