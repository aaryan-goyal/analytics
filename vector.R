#Vector

x = c(1,2,3)
x1 = 1:10000000
length(x1)

x2 = seq(10, 100, 2)
x2
?seq
x3 = seq(from=10, to=100, by=3)

#numeric vector----
marks = rnorm(30, mean=60, sd=10)   #normal distribution created n=30, stand. dev=10
marks
# (marks = rnorm(30, mean=60, sd=10)) will directly print. no need to write 'marks' again

mean(marks)
median(marks)
sd(marks)
mode(marks) #no mode
var(marks)
summary(marks)
range(marks)
#properties of DS
length(marks)
str(marks) #structure
class(marks)
hist(marks)
plot(density(marks)) #looks like normal dist curve but its not!



#character vector----

(names = c('Ram','Shyam','Robin'))
length(names)
mean(names)  #invalid 
class(names)
summary(names)

gender = c('M','F','M')
summary(gender)
genderF = factor(gender)
summary(genderF)


(grades = c('A','B','C','D','A','D','A'))
gradesF = factor(grades, ordered=T)
summary(gradesF)
gradesF

gradesF1 = factor(grades, ordered=T, levels=c('D','B','A','C'))  #defining our own levels
summary(gradesF1)
gradesF1
table(gradesF1)
table(gender)

barplot(table(gradesF1))
pie(table(gradesF1))

#logical vector----

married = c(TRUE, FALSE, T, F, T, F)   #TRUE/FALSE/T/F mean the same thing
married
sum(married)
table(married)
class(married)
summary(married)


#subset of marks
marks
trunc(marks); round(marks,1); floor(marks); ceiling(marks) #(;)is used for giving commands in a single line

marks1 = trunc(marks)
marks1
marks1[1]
marks1[18]
marks1[1:5]   #values from 1 to 5
marks1[-2]   #all values except 2nd value
marks1[c(1,5,10,30)]  #particular vlaues at the listed posns.
marks1[-c(10:15)]
mean(marks1[c(1,5,10,30)])
marks1[marks1 > 60]    #conditions
marks1 > 60   #after this only the TRUE values are printed
marks1[marks1 > 60 & marks1 <80]



gender2 = sample(c('M','F'), size=2)
gender2

gender2 = sample(c('M','F'), size=30, replace=T)
gender2

set.seed(1234)   #helps to show the same pattern when started from set.seed. 
                  #the value inside set.seed is arbitrary
gender2 = sample(c('M','F'), size=30, replace=T, prob=c(.6,.4))
gender2
table(gender2)
prop.table(table(gender2))   #as data becomes larger, probab figure matches.

