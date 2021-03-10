#Introduction to R
##Consider data analysis on Cars
#Loading The data
cars=read.csv("C:\\Users\\adrit\\Desktop\\exploratory-data-analysis-dataset-cars-master\\exploratory-data-analysis-dataset-cars-master\\cars_multi.csv",header=TRUE)
prices=read.csv("C:\\Users\\adrit\\Desktop\\exploratory-data-analysis-dataset-cars-master\\exploratory-data-analysis-dataset-cars-master\\cars_price.csv",header=TRUE)
z=c(cars,prices) ##joining the data
##Importing the libraries
library(ggplot2)
##Descriptive Statistics
str(cars)    #strings of cars
str(z)
head(cars)  # shows the first elements
aa=data.frame(z)    #shows the data frame
aa
g=aa[,c(1,2,3,4,5,6,7,8,9,12)]
summary(g)          #shows the summary of numerical elememts of the columns
b=aa[1,]          #shows the first row only
b
c=aa[,c(9,10)]    #shows the ninth and columns and its elements
head(c,30)        #shows the first 30 elements of the ninth and 10 th columns
d=head(aa[,c(10,12)],30) #shows the first 30 elements of the 10 and 12 th columns
d
e=head(aa[,c(5,6)],30) #shows the first 30 elements of the fifth and 6 th columns
e
f=head(aa[,c(5,7,10)],30)  #shows the first 30 elements of the fifth,seventh and 10 th columns
f
table(cars$cylinders)  #shows the frequency of the cyclinders
#Visualisation of the data
##In this section I will take a look at the distribution of values for each variable in the dataset by creating histograms 
#using ggplot2's qplot function. I am trying to find out if there is more data to clean up, including outliers or extraneous values. 
#This also might help me begin to identify any relationships between variables that are worth investigating further.
qplot(cars$mpg,main='Frequency Histogram: Miles per Gallon', xlab = 'Miles Per Gallon', ylab = 'Count', binwidth = 2)  # Miles Per Gallon
#no of cyclinders
qplot(cars$cylinders, xlab = 'Cylinders', ylab = 'Count',main='Frequency Histogram: Number of Cylinders',bins=7) 
cars = cars[!cars$cylinders %in% c(3, 5),]    #Based on the relatively tiny counts of three- and five-cylinder cars (4 and 3, respectively), I am removing those completely because they end up being a distraction in later plots
qplot(cars$cylinders, ylab = 'Count', xlab = 'Cylinders',bins=7)
#displacement
qplot(cars$displacement, xlab = 'Displacement', ylab = 'Count', bins = 20,main='Frequency Histogram: Displacement')
#horsepower
qplot(cars$horsepower, xlab = 'Horsepower', ylab = 'Count', bins = 10,main='Frequency Histogram: Horsepower')
#weight
qplot(cars$weight, xlab = 'Weight', ylab = 'Count', bins = 20, main='Frequency Histogram: Weight')
#accelaration
qplot(cars$acceleration, xlab = 'Acceleration', ylab = 'Count', binwidth = 1,main='Frequency Histogram: Acceleration')
# Model Year
qplot(cars$model, xlab = 'Model Year', ylab = 'Count',main='Frequency Histogram: Model Year')
# Price
qplot(price,ID,data=aa,main='Frequency plot: Price')
#finding the correlation among the numeric values
cor(aa[, c(2,4,7,12)], use='complete')

#showing regression and its fits
fit = lm(mpg ~ weight, data=cars)
summary(fit)


fit = lm(price ~ acceleration, data=z)
summary(fit)






