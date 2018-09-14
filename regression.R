#how y depends on x
#women
women
str(women)
cor(women$height, women$weight)#a positive correlation means there's some sort of positive reln b/w data.
cov(women$height, women$weight)
plot(women$height, women$weight)

#create linear model
fit1 = lm(weight~ height, data=women)
summary(fit1)
#EXPLANATION OF OUTPUT IN CONSOLE FOR THE COMMAND summary(fit1)::::::::::::::::::
#F-statistic:  1433 on 1 and 13 DF,  p-value: 1.091e-14 (output on console) when the p-value is <0.05, a linear model can be created otherwise not.
#Multiple R-squared(used in simple linear regr.):  0.991,	Adjusted R-squared(used in multiple linear regr.):  0.9903 .....here, we are using SLR therefore 0.991 is to be considered
#Multiple R-squared:0.991:This means that 99% of the variations in y is explained by x. Higher the variation, better the model.
   #         Estimate Std. Error   t value Pr(>|t|)    
#(Intercept) -87.51667    5.93694  -14.74 1.71e-09 
 # height      3.45000    0.09114   37.85 1.09e-14
#here, 3.45 is the slope and -87.51667 is the intercept. therefore the formula becomes: (weight=-87.51667+3.45*height)......the intercept value is to be taken for that particular data set only.
#Residuals are the difference between the predicted values and the actual values
fitted(fit1)   #predicts weight for the corresponding heights according to our model
cbind(women, fitted(fit1), residuals(fit1))
names(fit1)
(ndata1 = data.frame(height=c(62.5,63.5))) #to predict for a value, first create a data frame. 
predict(fit1, newdata=ndata1)
cbind(ndata1, predictwt=predict(fit1, newdata=ndata1))

#area vs sales

#Multiple Linear Regression
#mtcars : mpg vs wt, hp
names(mtcars)
fit2 = lm(mpg ~ wt + hp, data=mtcars)
summary(fit2)
range(mtcars$wt) ; range(mtcars$hp)
ndata2 = data.frame(wt=c(2,3), hp=c(57, 250))
predict(fit2, newdata=ndata2)
cbind(ndata2, predictMPG=predict(fit2, newdata=ndata2))
