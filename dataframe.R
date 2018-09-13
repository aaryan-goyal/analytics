#data frame

#rollno, name, batch, gender, marks1, marks2

(rollno = 1:30)  #vector
(name = paste('student',1:30,sep='-'))   #'paste' function allows you to concatenate stuff together. here, student-1, student-2.... can be created using '-' as a separator
(batch = sample(c(2016, 2017, 2018), size=30, replace=T))   #equal probab
table(batch)
(gender = sample(c('M', 'F'), size=30, replace=T))
table(gender)
(marks1 = rnorm(30, mean=65, sd=7))
(marks2 = rnorm(30, mean=60, sd=10))

df = data.frame(rollno, name, batch, gender, marks1, marks2, stringsAsFactors = F)  #create excel like structure
df
summary(df)
str(df)
df$gender = factor(df$gender)
str(df)
df$batch = factor(df$batch, ordered=T, levels=c('2016','2017','2018'))
str(df)
df

df$rollno = as.character(df$rollno) #converts rollnos to charcters
summary(df)

str(df)    #structure command
head(df)    #first 6 rows(default)
tail(df)    #last 6 rows(default)
head(df, n=2) #first 2 rows
dim(df)   #dimensions 30 rows 6 cols
nrow(df)  #no of rows
names(df) #names of cols

df[1,1:4] #1st row and 1-4 cols
df[1:2,1:4]
df[ c(1,3), c(1,4,5,6)]    #displaying selective rows and cols
df[ df$gender=='M', ]   #display all the males. the blank space after the comma after male says that display all the cols
df[ df$gender=='M', 3:5 ]  #Males; display cols 3 to 5
df[ df$gender=='M' & df$marks1 > 70, 3:5]

length(df)  #no of cols
nrow(df[df$gender=="M",]) #no of rows with gender=Male

#sort
sort(df$marks1)
order(df$marks1)  #tells the row which should have been first
df[ order(df$marks1), ]    #sorted according to marks 1. ascending order
rev(sort(df$marks1))
df[order(df$gender, df$batch), ]   #df[order(gender, batch)] will also work
df[order(gender, - batch), ]    #reverse order


#summary/aggregating
aggregate(df$marks1, by=list(df$batch), FUN=mean)   #find mean of each batch of marks 1
aggregate(marks1 ~ batch, data=df, FUN=mean)    #same thing as above. but better represented
aggregate(cbind(marks1, marks2) ~ batch, data=df, FUN=mean)  #cbind allows to ask for 2 subjects here
aggregate(cbind(marks1, marks2) ~ batch + gender, data=df, FUN=mean)


df
write.csv(df, "./data/bitsgoa.csv")   #writing data into a csv file in folder "data"

df3 = read.csv("./data/bitsgoa.csv")  #reading that csv file into another dataframe
head(df3)
df3 = df3[,-1]  #removing extra col
head(df3)
