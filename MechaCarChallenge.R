#Deliverable -1

library(dplyr)
# read in the file as a data frame
mecha_car <- read.csv("../Resources/MechaCar_mpg.csv")

#view the first few rows of the data frame
head(mecha_car)

# perform linear regression on all six variables
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car)

# view the summary of the linear regression model
summary(model)

#Deliverable -2

#import and read in the Suspension_Coil.csv file as a table
Suspension_Coil <- read.csv("../Resources/Suspension_Coil.csv")

#using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column
total_summary <- Suspension_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

#using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),Median = median(PSI), Variance = var(PSI), SD = sd(PSI) , .groups = 'keep')


#box plot: PSI Whole lot
plt1 <- ggplot(Suspension_Coil,aes(y=PSI)) #import dataset into ggplot
plt1 + geom_boxplot() #add boxplot

#box plot: PSI each indicdiual Lot
plt2 <- ggplot(Suspension_Coil,aes(x=Manufacturing_Lot,y=PSI)) #import dataset into ggplot2
plt2 + geom_boxplot()

#Deliverable -3

#using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
t.test(Suspension_Coil$PSI, mu=1500)

#using t.test() function 3 more times with subset() to determine if PSI for each manufacturing lot is statistically different from the pop. mean of 1,500 PSI
lot1 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)

