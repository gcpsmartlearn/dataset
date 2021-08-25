# Load required packages
library(readxl)
library(tidyverse)


################ IMPORTING DATA ################ 

# Reading in CSV files
read_csv("mydata.csv")

# Read in and save data
mydata <- read_csv("mydata.csv")

# reading in an Excel file
excel_sheets("mydata.xlsx")
read_excel("mydata.xlsx", sheet = "PICK_ME_FIRST!")


#############
# YOUR TURN #
#############
library(readr)
Sys.setenv("VROOM_CONNECTION_SIZE"=131072 * 15)
raw_data <- read_excel("CustomerData.xlsx",sheet = "Data")
dim(raw_data)
nrow(raw_data)
ncol(raw_data)
glimpse(raw_data)
names(raw_data)


# dimension of data
data(mtcars)
nrow(mtcars)
ncol(mtcars)
dim(mtcars)

library(dplyr)
# what are the variables
names(mtcars)
glimpse(mtcars)
summary(mtcars)
View(mtcars)

# missing values
data(airquality)
is.na(airquality)
sum(is.na(airquality))
colSums(is.na(airquality))
clean_data <- na.omit(airquality)
is.na(clean_data)
sum(is.na(clean_data))

is.na(raw_data)
missing <- colSums(is.na(raw_data))

sort(missing, decreasing = TRUE)
colSums(is.na(raw_data))
clean_data <- na.omit(raw_data)
sum(is.na(clean_data))

names(mtcars)
mtcars[0]["mpg"]

vec <- c(1,2,3,4,5,"ashish")
vec1 <- c(10:14)
vec2 <- c(15.5:-6.5)
vec2
################ DATA STRUCTURES ################ 

# Creating vectors
c("Learning", "to", "create", "character", "vectors")
c(3, 2, 10, 55)
c(TRUE, FALSE, FALSE, FALSE, TRUE)
6:15
15.5:6.75

# Indexing vectors
v1 <- 1:10
v1[4]
v1[4:7]
v1[c(4, 3, 4)]
v1[v1 > 6]
v1[v1>8 | v1<3]

mean(v1)
median(v1)
mode(v1)
# different summaries of vectors
length(v1)
summary(v1)
mean(v1)
median(v1)
v1 > 5


#############
# YOUR TURN #
#############



# Creating matrices
set.seed(123)
v1 <- sample(1:10, 25, replace = TRUE)
m1 <- matrix(v1, nrow = 5)
m1

# Indexing matrices
m1[1, 3]
m1[2,5]
m1[ , 1:3]
m1[1:3,  ]

# Summaries of matrices
summary(m1)
mean(m1)
mean(m1[1,])
rowMeans(m1)
colMeans(m1)
rowSums(m1)
colSums(m1)
m1 > 5
sum(m1 > 5)
which(m1 > 5)
m1[m1 > .5]


#############
# YOUR TURN #
#############



# Data frames
raw_data <- read_csv("CustomerData.csv")


# indexing data frames
raw_data[, 4]
raw_data[, "Gender"]
raw_data[, 1:3]
raw_data[, c("CustomerID", "Region", "TownSize")]
raw_data[1, ]

# check out the first 6 rows with:
head(raw_data)




# Lists
model <- lm(mpg ~ wt, data = mtcars)
summary(model)
names(model)
str(model)

# Indexing lists
model["residuals"]
model[["residuals"]]
model$residuals
model[["residuals"]][1:20]
