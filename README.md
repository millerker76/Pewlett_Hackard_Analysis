# Pewlett_Hackard_Analysis
Pewlett_Hackard retirement analysis
## Pyber Analysis


## Overview


### Purpose

* The purpose of this project is to provide an analysis of the numbers and job titles of employees who are currently eligibile for retirement at Pewlett-Hackard.
  There are many baby-boomer age employees who will be retiring in a large wave at Pewlett-Hackard, similarly to other organizations throughout the country, and the  
  company needs to know how many employees per job title are eligible to retire.   

* In addition, there's a need for newer and younger employees to gain the knowledge and experience of the retirement eligible staff, management has requested that this   identify employees who are eligible for mentorship opportunities.

### Data Description

Multiple csv files containing employee data were provided and loaded into tables.   Additional tables were created for the analysis.   
![database tables](https://user-images.githubusercontent.com/107505166/182724536-e56a26cc-25fb-4729-a2bf-52c00ea192b7.PNG)


## Deliverables
1.  Retirement analysis:   
    retirement_titles.csv  - this csv file lists all the employees who are currently eligible for retirement and their current job title.
    retiring_tites.csv     - this csv file shows the count of retirement eligible employees by job title.
    % of employees retiring -  this graphic shows the percentage of current P-H employees who are eligible to retire.
    ![Pie chart](https://user-images.githubusercontent.com/107505166/182726701-0a6283f9-2b7e-476b-86cf-8e01e673022a.png)

      
    We can see that nearly a third of the current workforce are eligible to retire and that many, many positions will need to be filled.  It will be important to 
    consider providing incentives to retirement-eligible employees to remain with the company a little longer in order to mentor the new employees
 
 2. Mentorship analysis:
    mentorship_eligibility.csv - this csv file lists all the employees who are eligible for a mentorship program at P-H.
    

### Ride and Fare Data Table 

Ride and fare data were summarized to allow a comparison of total number of rides, total number of drivers and total fare amounts by city type, as well as the average fare per ride and average fare per driver by city type.

Figure 1.   Summary table of ride and fare data by city type
![Pyber summary table](https://user-images.githubusercontent.com/107505166/179433404-0912eb4a-cae9-4fe7-b54f-e53ee9d2c057.PNG)
* In the summary data table, we see that Pyber ride activity, number of drivers and fare totals in the sample data are largest in urban cities and smallest in rural cities with suburban cities falling in the middle.   These data points appear to vary proportionally with city size.  This would be expected as transportation activities in a population are generally dependent on population size. 
* However, average fare amount per ride and average fare amount per driver appear to vary inversely with city size.  We may guess that residents in rural areas may need to travel longer distances to reach their desired destinations, and thus the total fare amounts for rural trips are higher, but we can't base that conclusion on the data provided for analysis.

### Total Fare Comparison Chart

A line chart was provided to show total weekly Pyber fare amounts per city type over a 4-month period.

Figure 2.   Weekly Pyber ride fare totals by city type
![Total Fare by City Type chart](https://user-images.githubusercontent.com/107505166/179433433-4c3e9cc6-8a95-42e3-acc1-099c1285af10.png)
* The chart graphically displays the expected proportionality of total fare amounts to city size.

## Summary

### Recommendations  
* Clearly defined goals will be helpful in making use of this analysis of weekly total Pyber fare amounts by city type.
* Disparities in total fare amounts by city type have been demonstrated, but would be expected given the relationship of transportation activity to population size.  
* Disparities in average fare amount per ride and average fare amount per driver could be due to length of trip, but need to be analyzed further. 
* The data set provided is hampered by the data points that aren't included.   Helpful data points to include would be Pyber driver ID, and trip length.  These data points could help inform statistics such as the average fare amount per driver and the average fare amount per ride with more meaningful explanations.   

