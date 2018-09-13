#subset
#subset() function is the earliest  way to select variables and observations.

mtcars
#using subset function
newdata <- subset(mtcars, mpg >=20 & mpg < 30, select=c(mpg, disp))
newdata
#we select cars with mpg>=20 and mpg<10
#we keep variables mpg and disp

#using subset function (part 2)
names(mtcars)
head(mtcars)
newdata = subset(mtcars, cyl == 6 & disp > 150, select=mpg:wt)
newdata

newdata2 = mtcars[ order(mtcars$mpg), c('mpg','wt')]
head(newdata2)

subset(airquality, select = Ozone:Wind)
