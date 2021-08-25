library(tidyverse)
library(readr)
raw_data <- read.csv("covid_stimulus_recepients.csv")
raw_data
raw_data[,4]
raw_data[ ,"Award.Date"]
raw_data[ ,1:3]
raw_data[ ,c("Award.Date","Award.Type","Grant.Amount")]
raw_data[1,]
#for lists

model <- lm(mpg~wt , data=raw_data)
summary(raw_data)
names(raw_data)
nrow(raw_data)
ncol(raw_data)
is.na(raw_data)
sum(is.na(raw_data))
colSums(is.na(raw_data)) 
missing <- colSums(is.na(raw_data))
dim(raw_data)
colMeans(raw_data)
raw_data[1:3,1:3:5]
