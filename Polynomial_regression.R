##Polynomial regression
##importing data

dataset = read.csv("C:/Users/wwaswa/Desktop/RData/Position_Salaries.csv")
dataset = dataset[2:3]

##fitting the linerar regression model
dataset$level2  =dataset$Level^2
dataset$level3  =dataset$Level^3
dataset$level4  =dataset$Level^3
poly_reg = lm(formula =Salary ~.,
              data = dataset)

##visualizing the polynomial result
library(ggplot2)
ggplot() +
  geom_point(aes(x = dataset$Level, y=dataset$Salary),
             color = "red")+
  geom_line(aes(x = dataset$Level, y=predict(poly_reg, newdata = dataset)),
            color = "blue")+
  ggtitle("Truth or bluff")+
  xlab("Levels")+
  ylab("Salary")

##predicting with polynomial regression
y_pred = predict(poly_reg, data.frame(Level = 6.5,
                 level2 =6.5^2,
                 level3 = 6.5^3,
                 level4 = 6.5^4))