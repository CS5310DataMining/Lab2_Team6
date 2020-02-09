# Lab 2
# Team: 6
# Team Members:
#   Melvin Zaldivar - Members contribution: 33.33%
#   Rahim Abdulmalik - Members contribution: 33.33%
#   Raul Beiza - Members contribution: 33.33%

# Due Date: February 9, 2020

#--------------------------------------------------
# Read the Used cars data
#--------------------------------------------------

# Import the used cars dataset
used_cars <-read.csv("usedcars.csv", stringsAsFactors = FALSE)

# Verify the ysed cars dataset was imported
used_cars


#--------------------------------------------------
# Summary of the used cars dataset features. 
# View the central tenday and spread of data
#--------------------------------------------------

# Summary for used cars
summary(used_cars)

# Convert model, color, and transmission to factor
used_cars$model <- factor(used_cars$model)

used_cars$color <- factor(used_cars$color)

used_cars$transmission <- factor(used_cars$transmission)

# Summary of years for used cars 
summary(used_cars$year)
table(used_cars$year)

# Viewing the summary of the years for the used cars, the min and max are 2000 and 2012, respectively. 
# The median and mean are the same indicating the data is centralized around 2009. The data appears to have 
# skewness with most of used car being 2007 or newer.

# Summary of model for used cars
summary(used_cars$model)
model_table <-table(used_cars$model)
prop.table(model_table)

# We needed to switch the data to factor in order to have count of occurence between the different models.
# From the data more than half of the used vehicles were SE models. Approximately 30% of used cars were SES 
# models and 15% the SEL.

# Summary of price for used cars
summary(used_cars$price)

# The price for the used vehicles ranged between 3,800 and 21,992 dollars. The median and mean were not the 
# values with the median being higher, which indicates there is skewness in the data. For this case, negatively
# skewed.

# Summary of mileage for used cars
summary(used_cars$mileage)

# The mileage for the used vehiceles range between 4,867 and 151479. The median and mean are not the same values
# with the mean being higher. A higher mean compared to the median indicates there is positively skewness in the 
# data.

# Summary of color for used cars
summary(used_cars$color)
color_table <- table(used_cars$color)
color_pct <- prop.table(color_table) * 100
round(color_pct, digits = 1)

# Color was another feature we had to change in order to unerstand the data with R. We first obtain the total
# numbers of used cars for each color and then we were able to get the percentage. The color black was the most
# prominent with the used cars with silver and red rounding out the top three colors.

# Summary of price for used cars
summary(used_cars$transmission)
trans_table <- table(used_cars$transmission)
prop.table(trans_table)

# Transmission was another feature which needed to be converted from a charactor to factor to measure the occurence.
# From the summary the majority of the used cars, 128, were automatic and only 22 manual. 

#--------------------------------------------------
# Saving the feature's summary in a csv file
#--------------------------------------------------

#Summary of the used cars dataset features
sum_table <- summary(used_cars)

#Creating table and saving as csv file
write.csv(sum_table, file = "Used_Cars_Summary_Table.csv", na = " ")

#--------------------------------------------------
# Visualizing data with boxplot
#--------------------------------------------------

# Boxplot of Year for Used Cars
boxplot(used_cars$year, main = "Boxplot of Year for Used Cars", ylab = "Year")

