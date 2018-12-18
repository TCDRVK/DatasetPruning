setwd("C:/Trinity/Comp Sc/ML/Datasets/bank-additional")
bankdata = read.csv('bank-additional-full.csv',sep = ';')

#install.packages("ggplot2")
library(ggplot2)

#install.packages("reshape")
library(reshape)

install.packages("RColorBrewer")
library(RColorBrewer)

plot_missing(bankdata, col=brewer.pal(n = 9, name = "YlOrRd"))


head(bankdata)

bankdata$job[bankdata$job=='unknown']=NA
bankdata$marital[bankdata$marital=='unknown']=NA
bankdata$education[bankdata$education=='unknown']=NA
bankdata$default[bankdata$default=='unknown']=NA
bankdata$housing[bankdata$housing=='unknown']=NA
bankdata$loan[bankdata$loan=='unknown']=NA

head(bankdata)
boxplot(campaign ~ y, data = bankdata, xlab = "campaign",
        ylab = "y", main = "Mileage Data")

summary(bankdata)
