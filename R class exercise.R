x<-3
x[1]
x<-c(2,0,0,4)
y<-c(1,9,9,9)
x+y
x[-1]
x[-2]
x[1]<-3
x[2]=1
y<9
y[y<9]=2
x[1]<-3;x
x[-1]=5;x


df<-data.frame(x=1:3,y=c("a","b","c"))

df_new<-data.frame(height = c(150,160),weight=c(65,72))

df[1,1]    #print value 1


df[1,c(1,2)]    #print value 1,a

df[c(1,3),2]     #print value a,c

df[c(1,3),1]    #print value 1,3

df[c(1,3),c(1,2)]      #print value 1,a,3,c

airquality <- datasets::airquality

airquality[,c(1,2)] # print all rows and just 2 columns

df<- airquality[,-6]
df

summary(airquality)

summary(airquality[,1])

summary(airquality$Wind)

#plot graph-----------
plot(airquality$Wind)

plot(airquality$Temp,airquality$wind,type="p")

# For all graph

plot(airquality)

#points & lines

plot(airquality$Wind,main ='ozone levels',
     xlab = 'concentration',ylab = 'no of instances',
   col =' red') 

#
plot(airquality$Wind,type = 'l',col ='blue')

#Horizontal bar plot

barplot(airquality$Wind,horiz = TRUE)


barplot(airquality$Wind,main = 'ozone concentration',
        xlab = 'ozone concentration',ylab = 'ozone levels', col =' magenta' )

# ylab and xlab commands are used to label x and y axes in R
# R is case sensitive

#Histogram
Temperature <- airquality$Temp
hist(Temperature)

hist(airquality$Temp,main = 'solar radiation levels in air',
     ylab = 'solar.rad',col = 'brown')

# Single boxplot

boxplot(airquality$Ozone,main ='boxplot')

#Multiple boxplot

boxplot(airquality[,1:4],main = 'multiple')

#for setting up to view many charts at once
par(mfrow =c(3,3),mar = c(2,5,2,1),las = 0)

plot(airquality$Wind)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Wind,type = 'l',col ='blue')
barplot(airquality$Wind,main = 'ozone concentration',
  xlab = 'ozone concentration',ylab = 'ozone levels', col =' magenta' )
hist(airquality$Temp)
hist(airquality$Wind)
hist(airquality$Solar.R)
hist(airquality$Month)
hist(airquality$Day)

hist(airquality$Temp,border = 'dark blue',col = 'light blu')

#skewness and kurtosis

var(airquality$Ozone,na.rm = TRUE)
skewness(airquality$Ozone,na.rm = TRUE)
