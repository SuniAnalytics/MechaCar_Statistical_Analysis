# MechaCar Statistical Analysis

## Overview

   Goal of the project is to assist AutoRus's project by providing statistical driven insights for newest prototype - The MechaCar. As the program is facing production troubles, management needs support from data analytics team to identify areas that can help and imrove manufacturing team's progress. 
   
   Will utilize my learnings from R and statistic models to analyse and provide insights. 
     
## Linear Regression to Predict MPG

### Variables that provided a non-random amount of variance to mpg
     Basaed on the p-value of each varaible from the linear regression model results suggest that below 
     variables provide a non-random amount of variance to mpg. (p-values < significance level of 0.05)
     
     1. Vehicle length (p-Value 5.08e-08)
     2. Vehicle weight (p-Value 0.0776)
     3. Ground clearance (p-Value 5.21e-08)
     
### Slope of the linear model
      The p-Value for this model is 5.35e-11, is much smaller than the assumed significance level of 0.05%. 
      This indicates there is sufficient evidence to reject our null hypothesis, which further indcates that the 
      slope of this linear model is not zero.

### Does this model predict mpg effectively
      This linear model has an r-squared value of 0.7149, which means that approximately 71% of all mpg predictions 
      will be determined by this model. Relatively speaking, this multiple regression model does predict mpg 
      of MechaCar prototypes effectively.

![](https://github.com/SuniAnalytics/MechaCar_Statistical_Analysis/blob/main/Resources/Linear%20Regression%20to%20Predict%20MPG.png)

## Summary Statistics on Suspension Coils
    
      Summary statistics on suspension coils across all lots have a variance of 62.2, 
      which is lower than the design spec of 100 pounds per square inch.
      
      Overall, suspension coils met the design spec variance levels.

     When analyzed by lot, 
      - Lot1 meets the design specs with significantly lower variance (0.9)
      - Lot2 also meets the design specs with significantly lower variance (7.46)
      - Lot3 however doesnt meet the design spec requirements as the variance is higher than 100 (170.2)
      
![](https://github.com/SuniAnalytics/MechaCar_Statistical_Analysis/blob/main/Resources/Total_summery.png)

![](https://github.com/SuniAnalytics/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summery.png)


## T-Tests on Suspension Coils

   Does all mfg lots and each lot individually are diff from population mean of 1500 pounds per sq inch. 
   
   

![](https://github.com/SuniAnalytics/MechaCar_Statistical_Analysis/blob/main/Resources/boxplot_by_lots.png)

![](https://github.com/SuniAnalytics/MechaCar_Statistical_Analysis/blob/main/Resources/ttest_lot1.png)
![](https://github.com/SuniAnalytics/MechaCar_Statistical_Analysis/blob/main/Resources/ttest_lot2.png)
![](https://github.com/SuniAnalytics/MechaCar_Statistical_Analysis/blob/main/Resources/ttest_lot3.png)


## Study Design: MechaCar vs Competition
