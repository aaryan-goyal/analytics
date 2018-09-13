#matrices

?matrix
(m1 = matrix(1:12, nrow=4))
marks3 = floor(runif(30, 50, 90))   #uniform distribution. n=30. numbers in between 50 and 90
marks3
m2 = matrix(marks3, nrow=6)
m2
(x = 1:5) # (x <- 1:5) is the same thing
m3 = matrix(marks3, nrow=6, byrow = T)   #filling data row wise
m3
(m3 = matrix(marks3, nrow=6, byrow = T))
(m4 = matrix(marks3, ncol=5, byrow = T))
#summary
colSums(m4)
rowSums(m4)
colMeans(m4)
rowMeans(m4)
sum(m4)
m4 [ m4 > 70]
m4[1,]   #first row of the matrix
m4[,2]   #second col of the matrix
m4[1:2, 3:5]   #subsetting a matrix
