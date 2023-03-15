# MechaCar Statistical Analysis

## Overview

   Goal of the project is to assist AutoRus's project by providing statistical driven insights for newest prototype - The MechaCar. As the program is facing production troubles, management needs support from data analytics team to identify areas that can help and imrove manufacturing team's progress. 
   
   Will utilize my learnings from R and statistic models to analyse and provide insights. 
     
## Linear Regression to Predict MPG

### Variables that provided a non-random amount of variance to mpg
     Basaed on the p-value of each varaible from the linear regression model results suggest that below 
     variables provide a non-random amount of variance to mpg. (p-values < significance level of 0.05)
     
     1. Vehicle length (p-Value 5.08e-08)
     2. Ground clearance (p-Value 5.21e-08)
     
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

     When analyzed by each lot, 
      - Lot1 meets the design specs with significantly lower variance (0.9)
      - Lot2 also meets the design specs with significantly lower variance (7.46)
      - Lot3 however doesnt meet the design spec requirements as the variance is higher than 100 (170.2)
      
![](https://github.com/SuniAnalytics/MechaCar_Statistical_Analysis/blob/main/Resources/Total_summery.png)

![](https://github.com/SuniAnalytics/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summery.png)


## T-Tests on Suspension Coils

   Ran T-tests to analyzed if all or each lot individually are diff from population mean of 1500 PSI
      
     - All Mfg Lots: With a pvalue of 0.06, there is not enough evidence to reject the null hypothesis.
     
     - Lot1: With a pvalue of 1, null hypothesis cant be rejected as the there is no difference between mean and population mean (1500)

     - Lot2: Pvalue of 0.61 and mean of 1500.02, this lot is very close to the mean of 1500 PSI
     
     - Lot3: With a p-value of 0.04 which is significantly lower than 0.05, this infers to reject the null hypothesis
     
     
![](https://github.com/SuniAnalytics/MechaCar_Statistical_Analysis/blob/main/Resources/boxplot_by_lots.png)

![](https://github.com/SuniAnalytics/MechaCar_Statistical_Analysis/blob/main/Resources/ttest_lot1.png)
![](https://github.com/SuniAnalytics/MechaCar_Statistical_Analysis/blob/main/Resources/ttest_lot2.png)
![](https://github.com/SuniAnalytics/MechaCar_Statistical_Analysis/blob/main/Resources/ttest_lot3.png)


## Study Design: MechaCar vs Competition

   Majority of the consumers will be keen on comparing cars from different companies during the buying process. It is critical to assess and quantify how Mechacar will perform against the competetion. 

### Metrics to test
     Below are the key metrics using which MechaCar will be assessed vs the competetion based on data from past 5 years. They will be used as independant variables.
     - Cost of the car
     - Fuel efficiency 
     - Cost of ownership
     - Safety ratings

### Hyphothesis 
   Below is the hypothesis for Car Price
   
   - Null Hypothesis: MechaCar is priced corrrectly compared to the competetors
   - Alternative Hypothesis: MechaCar is NOT priced correclty based on some of the key metrics

### Statistical test to validate the hypothesis

  Running a multiple linear regression model using the above mentioned metrics will provide details on whether the pricing is correct depending on available metrics and also will help understand which metrics play a significant predictable role to influnce the pricing decision.

### Data required to run the statistical tests
       
   Require data from multiple car makers from the past 5 years to run the regression model.
