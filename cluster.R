age = ceiling(rnorm(3000, mean=22, sd=2))
marks = ceiling(rnorm(3000, mean=65, sd=10))
df = data.frame(age, marks)
head(df)
km = kmeans(df, center=4)
km

km$withinss
km$tot.withinss
#between
km$betweenss
km$iter
km$centers
