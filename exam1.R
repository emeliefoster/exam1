#testing github
#processing eggs_CUFES
e=read.csv("eggs_CUFES.csv")
head(e)
library(stringr)
year=str_sub(string=e$cruise, start=1,end=4)
e$year=year
View(e)
colnames(e)
eggs_corrected1= e[, -c(2:5,8:20,23:28)]
View(eggs_corrected)
e
long_degE=(eggs_corrected1$lon_degE)*-1
head(long_degE)
eggs_corrected1$lon_degE=long_degE
write.csv(x=eggs_corrected1,file="C:/Users/Em/Documents/Course Materials/Spring 2021/Data Management/Data/exam 1/exam1_data/eggs_fixed2.csv",row.names=F)
#processing zoop
#fixing latitude
z=read.csv("195101-201404_Zoop.csv")
colnames(z)
str(z)
lat.c=z$Lat_Deg+z$Lat_Min/60
head(lat.c)
#fixing longitude 
lon.c=(z$Lon_Deg+z$Lon_Min/60)*-1
head(lon.c)
z$LAT=lat.c
z$LONG=lon.c
View(z)
year=str_sub(string=z$Tow_Date, start=6,end=9)
head(year)
year=as.integer(z$year)
z$year=year
str(z)
colnames(z)
zoop_corrected= z[, -c(1,3:9,11:19,24:26)]
colnames(zoop_corrected)
write.csv(x=zoop_corrected,file="C:/Users/Em/Documents/Course Materials/Spring 2021/Data Management/Data/exam 1/exam1_data/Zoop_fixed.csv",row.names=F)