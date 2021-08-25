# Load required packages
library(tidyverse)

# Data we're using
mpg


#############
# YOUR TURN #
#############
?mpg


# Creating our canvas
ggplot(data = mpg, aes(x = displ, y = hwy))


# Using geoms to plot our data
## histogram
ggplot(data = mpg, aes(x = hwy)) +
  geom_histogram()

## frequency polygram
ggplot(data = mpg, aes(x = hwy)) +
  geom_freqpoly()

## density chart
ggplot(data = mpg, aes(x = hwy)) +
  geom_density()

## bar chart
ggplot(data = mpg, aes(x = class)) +
  geom_bar()

## scatter plot
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point()

## box plot
ggplot(data = mpg, aes(x = class, y = hwy)) +
  geom_boxplot()

## violin plot
ggplot(data = mpg, aes(x = class, y = hwy)) +
  geom_violin()


#############
# YOUR TURN #
#############
library(readxl)
customer <- read_excel("CustomerData.xlsx",sheet = "Data")
ggplot(data = customer, aes(x = DebtToIncomeRatio))+ geom_histogram()
ggplot(data = customer, aes(x = JobCategory))+ geom_bar()
ggplot(data = customer, aes(x = HHIncome, y=CardSpendMonth))+ geom_point()

# Non-mapping aesthetics
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point(color = "red", size = 4, shape = 15, alpha = .3)

ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_jitter(color = "red", size = 3, shape = 17, alpha = .5)


ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point(color = "blue")

# Mapping aesthetics
ggplot(data = mpg, aes(x = displ, y = hwy, color = class)) +
  geom_point()


#############
# YOUR TURN #
#############
ggplot(data = customer, aes(x = HHIncome, y=CardSpendMonth))+ geom_point(color="blue")
ggplot(data = customer, aes(x = HHIncome, y=CardSpendMonth, color = Retired))+ geom_point()

# facets for small multiples
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  facet_wrap(~ class, nrow = 2)

ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  facet_grid(drv ~ cyl)


#############
# YOUR TURN #
#############
ggplot(data = customer, aes(x = HHIncome, y=CardSpendMonth))+ geom_point()+facet_wrap(~JobCategory)
ggplot(data = customer, aes(x = HHIncome, y=CardSpendMonth))+ geom_point()+facet_grid(Gender~JobCategory)
ggplot(data = customer, aes(x = UnionMember))+ geom_bar()+facet_wrap(~JobCategory)

# Adding titles
ggplot(data = mpg, aes(x = class, y = hwy)) +
  geom_boxplot() +
  ggtitle("Displacement vs Highway MPG”,
          subtitle = “Data from 1999 & 2008")

# Axis scales
ggplot(data = txhousing, aes(x = volume, y = median)) +
  geom_point(alpha = .25) +
  scale_x_log10()

# Axis titles and labels
ggplot(data = txhousing, aes(x = volume, y = median)) +
  geom_point(alpha = .25)  +
  scale_y_continuous(name = "Median Sales Price", labels = scales::dollar) +
  scale_x_log10(name = "Total Sales Volume", labels = scales::comma)

# Putting it all together
ggplot(data = txhousing, aes(x = volume, y = median)) +
  geom_point(alpha = .25) +
  scale_y_continuous(name = "Median Sales Price", labels = scales::dollar) +
  scale_x_log10(name = "Total Sales Volume", labels = scales::comma) +
  ggtitle("Texas Housing Sales",
          subtitle = "Sales data from 2000-2010 provided by the TAMU real estate center")


customer %>%
  na.omit() %>%
  ggplot(aes(x=HHIncome, y= CardSpendMonth))+
  geom_point(alpha=.3)+
  facet_wrap(~JobCategory)+
  scale_y_continuous(name = "Household Income", labels = scales::dollar) +
  scale_x_log10(name = "Monthly card expenditures", labels = scales::dollar) +
  ggtitle("Relationship between income & credit card expenditures",
          subtitle = "All customers (4th QTR 2015)")
  


# Overplotting
ggplot(data = txhousing, aes(x = volume, y = median)) +
  geom_point(alpha = .25)  +
  scale_x_log10() +
  geom_smooth()

ggplot(data = txhousing, aes(x = volume, y = median)) +
  geom_point(alpha = .25)  +
  scale_x_log10() +
  geom_smooth(method = "lm")

# Layering and facetting
ggplot(data = txhousing, aes(x = volume, y = median)) +
  geom_point(alpha = .25)  +
  scale_x_log10() +
  geom_smooth(method = "lm") +
  facet_wrap(~ month)

#############
# YOUR TURN #
#############

customer %>%
  na.omit() %>%
  ggplot(aes(x=HHIncome, y= CardSpendMonth))+
  geom_point(alpha=.3)+
  geom_smooth(method = "lm") +
  facet_wrap(~JobCategory)+
  scale_y_continuous(name = "Household Income", labels = scales::dollar) +
  scale_x_log10(name = "Monthly card expenditures", labels = scales::dollar) +
  ggtitle("Relationship between income & credit card expenditures",
          subtitle = "All customers (4th QTR 2015)")

#