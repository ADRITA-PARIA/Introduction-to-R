Name-Adrita Paria
Reg. No=20msms09

Introduction to R
R is a programming language for data analysis and statistics.
 It is free, and very widely used by professional statisticians. 
It is also very popular in certain application areas, including bioinformatics. 
R is a dynamically typed interpreted language, and is typically used interactively. 
It has many built-in functions and libraries, and is extensible, allowing users to define their own functions and procedures using R, C or Fortran. 
It also has a simple object system.

Vectors
Vectors are a fundamental concept in R, as many functions operate on and return vectors, so it is best to master these as soon as possible. 
For the technically inclined, in R, a (numeric) vector is an object consisting of a one-dimensional array of scalars.

Plotting
R has lots of great functions for producing publication quality plots - running demo(graphics) will give an idea of some of the possibilities.
R helps in visualization of data through histogram,line plots,bar charts,pie charts,ggplot,boxplot,etc.

Analysis
R is designed specially for statistical analysis.




##Basics
set.seed(seed=123)  # setting default values
x=10 #assign the value 10 to x
x   #print x
y="hi"  #assign a character to the y variable
y   #print y
a=10      #assign 10 to the variable a
b=sqrt(25) #taking the square root of 25
z=a+b
z
q()   #used for quitting
x=1:9
x
x=seq(10,100,10)   #taking sequence
x
x=seq(-10,10,length=2)
x
x=20:30
x[1]
x[2]
x[6]
x[1]=10
x
x[2:6]=0   #from 2-6 all values are 0
x[-3]   #all values except the third value

y = c(1,8,6,9,20,78)   #Taking vectors
y
y[2]   
y[-3]
sort(y)
y[c(1,5,6)]
i = (1:4)
z = c(5,6,7,8)
y[i] = z
y
y = y^2
y
y = 5:20
y = log(y)
y
y = exp(y)
y
x = c(10,22,63,4,9,10,1,5,8,7,4,6,85,41,56,90)
z = x + y
z
length(x)
length(y)

##vectors 

x = 20
y = 2:22
x + y

x = 1:6
y = 2:7
x + y

x = 2:11
y = c(50,44,3,2,10,5,24,73,2,1)
x == 3                      ## This is a logical vector i.e if it is true or false
z = (x == 3)
z
z = (x<6); print(z)              ## You can put two commands # on a line if you use a semi-colon.

x[x<6] = y[x<6] 
x
sort(y)
rank(y)
order(y)
o = order(y)
y[o]


#Matrices and List


books=matrix(c(10, 12, 43, 4, 35, 5, 2, 16, 20, 11, 11, 20),nrow=3)
print(books)
x1 = matrix(books,ncol=3,byrow=T)
print(x1) #the rows and columns are transposed

dim(x1)
y = x1[,2] ### y is column 2 of x1
y
x = x1[1,] ### x is row 1 of x1
x
z = x1[3,2]
print(z)

z1 = t(z) ### take the transpose
z1
a = matrix(1:9,3,3)
print(a)
b = z + a
print(b)

x1[1,3]
m= x1[2:3, 2:4]
x1[1,]
x1[2,3] = 7
x1[,c(2,3)]
x1[-2,]


x1 = 1:5
x2 = c(17,26,36,45,1)
x3 = c(2,9,1,9,44)
A = cbind(x1,x2,x3) ### Bind vectors x1, x2, and x3 into a matrix. ### Treats each as a column.
A = rbind(x1,x2,x3) ### Bind vectors x1, x2, and x3 into a matrix. ### Treats each as a row.
A
x = 3:22
A = matrix(x,4,5) ### Change vector x ### into a 4 by 5 matrix.
dim(A)                              ## get the dimensions of a matrix
nrow(A)                             ## number of rows
ncol(A)                             ## number of columns
apply(A,1,sum)                      ## apply the sum function to the rows of A
apply(A,2,sum)                      ## apply the sum function to the columns of A
B = matrix(rnorm(60),5,6)
A %*% B       #multiply matrix A by B
t(A)

x = 1:6
A = outer(x,x,FUN="*")        ## outer product
print(A)
sum(diag(A))              ## trace of A
A = diag(1:6)
print(A)
solve(A)                ## inverse of A
det(A)                  ## determinant of A


##Lists
who = list(name="Adrita", age=22, married=F)
print(who)
print(who$name)
print(who[[1]])
print(who$age)
print(who[[2]])
print(who$married)
print(who[[3]])
names(who)
who$name = c("Adrita","Alolika","Dharani")
who$age = c(21,22)
who$married = c(F,F,F)
who


###For Loops

for(i in 1:20){
  print(i+1)
}
x = 102:201
y = 1:100
z = rep(0,100) ### rep means repeat
help(rep)
for(i in 1:100){
  z[i] = x[i] + y[i]
}
w = x + y
print(w-z)

for(i in 1:10){
  for(j in 1:5){
    print(i+j)
  }
}


### if statements
for(i in 1:10){
  if( i == 5)print(i)
}
for(i in 1:10){
  if( i != 5)print(i)    ### != means ``not equal to''
}
for(i in 1:10){
  if( i < 5)print(i)
}
for(i in 1:10){
  if( i <= 5)print(i)
}
for(i in 1:10)
  if( i >= 5)print(i)

 ## You can also use while loops.
  i = 2
  while(i < 100){
    print(i)
    i = i + 2
  }
  
  
  
  
##Functions
  
my.fun = function(x,y){
 a = mean(x)-mean(y)
 return(a)
 }
 a = mean(x)-mean(y)           
 my.fun = function(x,y){
a = mean(x)-mean(y) ##### This function takes x and y as input. ##### It returns the mean of x minus the mean of y
return(a)
       }
x = runif(30,2,3)
y = runif(30,0,3)
output = my.fun(x,y)
print(output)

##Statistics
x = runif(50,0,1)  ### generate 50 numbers randomly between 0 and 1
y = rnorm(20,0,1)   ### 20 random Normals, mean 0, standard deviation 1
mean(y)
median(y)
range(y)
max(y)
min(y)
sqrt(var(y))
summary(y)

y = rpois(100,4)  ### 100 random Poisson(4)
pnorm(4,0,1)      ### P(Z < 4) where Z ~ N(0,1)
pnorm(5,1,4)      ### P(Z < 5) where Z ~ N(1,4^2)
qnorm(.5,0,1)     ### find x such that P(Z < x)=.5 where Z ~ N(0,1)
pchisq(3,6)       ### P(X < 3) where X ~ chi-squared with 6 degree  ### of freedom


x = 2:11
y = 1 + x + rnorm(10,0,1)
plot(x,y)
plot(x,y,type="h")
plot(x,y,type="l")
plot(x,y,type="l",lwd=3)
plot(x,y,type="l",lwd=3,col=6)
plot(x,y,type="l",lwd=3,col=6,xlab="x",ylab="y")
plot(1:20,1:20,pch=1:20)
plot(1:20,1:20,pch=20)
par(mfrow=c(3,2)) ### put 6 plots per page, in a 3 by 2 configuration
for(i in 1:6){
  plot(x,y+i,type="l",lwd=3,col=6,xlab="x",ylab="y")
}


postscript("plot.ps") ### put the plots into a postscript file
### you have to do this if you use BATCH
plot(x,y,type="l",lwd=3,col=6,xlab="x",ylab="y")
dev.off()               ### This turns the printing device off.
                                         ### This will close the postscript file so you

par(mfrow=c(1,1))               ### return to 1 plot per page
y = rpois(200,5)               ### 200 random Poisson(5)
hist(y)                      ### histogram
hist(y,nclass=50)
x = seq(-4,4,length=500)
f = dnorm(x,0,1)                ### normal density
plot(x,f,type="l",lwd=3,col=4)
x = rnorm(500)
boxplot(x)






















































