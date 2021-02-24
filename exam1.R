#testing github
#processing eggs_CUFES
e=read.csv("eggs_CUFES.csv")
head(e)
library(stringr)
year=str_sub(string=e$cruise, start=1,end=4)
e$year=year
View(e)
colnames(e)
eggs_corrected= e[, -c(1:5,8:20,23:28)]
View(eggs_corrected)

write.csv(x=eggs_corrected,file="C:/Users/Em/Documents/Course Materials/Spring 2021/Data Management/Data/exam 1/exam1_data/eggs_CUFES_fixed.csv",row.names=F)
