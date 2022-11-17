# Electric Vehicle Projected Sales


## Overview of Analysis


<p align="center">
<img src="https://github.com/Hosseindbr/Ev-projected-sale/blob/cefc12c2d76d753b2b5089dd79921c46770477d0/Images/picture_1.png" width="320" height="150">
</p>


*“ The global electric vehicle market was valued at $163.01 billion in 2020, and is projected to reach $823.75 billion by 2030, with a compound annual growth rate (CAGR) of 18.2% from 2020 to 2030. ”*

Electric vehicles (EVs) are vehicles that are either partially or fully powered on electric power. The electric vehicle was primarily designed to replace conventional ways of travel as they lead to environmental pollution. It has gained popularity, owing to numerous technological advancements. It outperforms conventional vehicles providing higher fuel economy, low carbon emission & maintenance, smoother drive, and reduced sound from engine. 

As the leader of the free world, the United States through its Federal Government has set a goal to make half of all new vehicles sold in the U.S. in 2030 zero-emissions vehicles, and to build a convenient and equitable network of chargers to help make EVs accessible to all Americans for both local and long-distance trips. On a recent poll conducted by The U.S department of transportation, in rural parts of the country—home to 20 percent of Americans and almost 70 percent of America’s road miles—EVs can be an especially attractive alternative to conventional vehicles. Rural residents tent to drive more than their urban counterparts, spend more on vehicle fuel and maintenance, and often have fewer alternatives to driving to meet their transportation needs. Over the long run, the plan for the federal government with climate change in mind, is to showcase how EVs will help residents of rural areas reduce those costs and minimize the environmental impact of transportation in their communities. A team of Data Analysts having in common their implication in Climate change and EVs decided then to run an analysis on the forecast of demand in EV vehicles and charging stations for the coming years. They decide to use New York State datasets available for EV registrations and current charging stations with an idea in mind if they can do it in "Empire State" , they could do a similar analysis across the country.

This analysis focuses on the time series modeling of the amount of EVs in New York State (NYS). After exploring the data of EV registrations and the number of charging stations in NYS from 2012 to 2021, a machine learning model will be built to predict the EV sales in NYS in 2023 and 2024, as well as the demand for EV charging stations.




## Data

- Data Source : https://data.ny.gov. https://data.world/




## Communication Protocol


<p align="center">
<img src="https://github.com/Hosseindbr/Ev-projected-sale/blob/cefc12c2d76d753b2b5089dd79921c46770477d0/Images/picture_2.png" width="537" height="200">
</p>


There are three members in our team. The role of each team member is indicated by a particular shape: square, circle, triangle. The team member in the square role is responsible for the Github repository including data exploration and visualization. The member in the circle role is in charge of data collection and data cleaning. The member in the triangle role is responsible for creating a machine learning model. The role of each team member will remain the same most of the time to ensure that we had an expert for each topic of the project. 

A Slack channel was created to support communication amongst the team members, and will be used to assign tickets, provide updates, and discuss any issues. The team will additionally have meetings twice a week to go over project progress and next steps.




## Data Exploration and Preliminary Analysis


<p align="center">
<img src="https://github.com/Hosseindbr/Ev-projected-sale/blob/cefc12c2d76d753b2b5089dd79921c46770477d0/Images/picture_3.png" width="632" height="200">
</p>


### *Number of EVs on the Road in NYS Over Time (2015-2021)*


The total number of EVs registered in NYS per year is:

<img src="https://github.com/Hosseindbr/Ev-projected-sale/blob/cefc12c2d76d753b2b5089dd79921c46770477d0/Images/reg_year_counts.png" width="220" height="345">



![EV_on_the_road_2015_2021](Images/EV_on_the_road_2015_2021.png)


> As we can see above, the electric vehicle registration in NYS have been increasing exponentially over the past years. The total number of EVs in **2021** is *23413*, which is over 88 times larger than the total number of EVs in 2012.




### *Total Number of EVs on the Road by City*


Top 10 cities with the largest total number of EVs in NYS from 2015 to 2021 are:


<img src="https://github.com/Hosseindbr/Ev-projected-sale/blob/cefc12c2d76d753b2b5089dd79921c46770477d0/Images/top_10_cities.png" width="300" height="400">



![EV_Count_by_City.png](Images/EV_Count_by_City.png)


> From the line chart above, **Brooklyn** (10075), **New York** (3017), and **Staten Island** (1207) are the top 3 cities with the largest total number of EVs in NYS.




### *Number of EVs on the Road by County Over Time (2015-2021)*


For statewide trend, we explore the EV registrations from 2015 to 2021 in 10 top counties:

![EV_Count_by_County_Over_Time](Images/EV_Count_by_County_Over_Time.png)


> From the line chart above, we can notice that **Kings County** has been growing much faster compared to other counties. This result is expected because Kings county is the most populous county in NYS, and the second-most densely populated county in the U.S.. It is also coextensive with Brooklyn city, which has the largest total number of EVs in NYS (2012-2021).




### *Popularity of Car Models by County*

One of the most important parts in the EV sales analysis is the popularity of electric vehicle models. In order to study the market of EV models in NYS, frist we select the top 10 counties with the largest total number of EVs from 2015 to 2021. Next, We will figure out the top 6 most purchased models in each of these counties.


The top 10 counties selescted are:

<img src="https://github.com/Hosseindbr/Ev-projected-sale/blob/cefc12c2d76d753b2b5089dd79921c46770477d0/Images/top_10_counties.png" width="300" height="400">



Bar graphs are used to show the difference between top 6 most purchased EV models:

**- Kings County**

![EV_Model_Count_in_King](Images/EV_Model_Count_in_King.png)


**- Nassau County**

![EV_Model_Count_in_Nassau](Images/EV_Model_Count_in_Nassau.png)


**- Suffolk County**

![EV_Model_Count_in_Suffolk](Images/EV_Model_Count_in_Suffolk.png)


**- Westchester County**

![EV_Model_Count_in_Westchester](Images/EV_Model_Count_in_Westchester.png)


**- Queens County**

![EV_Model_Count_in_Queens](Images/EV_Model_Count_in_Queens.png)


**- New York County**

![EV_Model_Count_in_New_York](Images/EV_Model_Count_in_New_York.png)


**- Monroe County**

![EV_Model_Count_in_Monroe](Images/EV_Model_Count_in_Monroe.png)


**- Erie county**

![EV_Model_Count_in_Erie](Images/EV_Model_Count_in_Erie.png)


**- Rockland county**

![EV_Model_Count_in_Rockland](Images/EV_Model_Count_in_Rockland.png)


**- Richmond county**

![EV_Model_Count_in_Richmond](Images/EV_Model_Count_in_Richmond.png)



> **Tesla**, **Chevrolet**, and **Hyundai** are the most purchased EVs in each of these counties. Moreover, Tesla is the most purchased EV modles in each of these counties. It is a relatively lower priced luxury electric vehicle that was designed to appeal to the mass market as well. Considering these factors, it is not surprising that these vehicles are the most purchased vehicles in each county.




## Machine Learning Models for the Number of EVs on the Road by County in Future


<p align="center">
<img src="https://github.com/Hosseindbr/Ev-projected-sale/blob/cefc12c2d76d753b2b5089dd79921c46770477d0/Images/picture_5.png" width="444" height="200">
</p>


### Finding the Best Fit Model


To find the best fit model, we will use the number of EVs in **Kings County** as a sample. 


#### *Seasonality Check*

To check for seasonality, we perform the time series decomposition analysis to Kings County. Decomposition can provide a useful abstract model for thinking about time series generally and for better understanding problems during time series analysis and forecasting.

We decompose the number of EVs in Kings County from 2015 to 2021 into trend, seasonal and noise components. From the figures below, we notice that the number of EVs in King County has an upward trend. Additionally, there is seasonality to the data as well. 

![decomposition_Kings](Images/decomposition_Kings.png)



#### *Split Train and Test sets*

In order to validate the performance of the models, we split the time series into two sets: a training set and a testing set. After multiple iterations, we found that the 0.80-0.20 split of the data belonging to King County resulted in the best performance.

![train_test_split_Kings](Images/train_test_split_Kings.png)




#### *Finding the Best Parameters with Auto-Arima*

To get a model which can accurately predict future data in a series, we use auto-ARIMA to optimize the p,d,q values of the models for each county and validate. The best parameters (based on the AIC score) were (1,1,1) for the ARIMA order and (0, 2, [], 12) for the seasonal component. Below is the result after plug these into a SARIMAX model:

![SARIMAX_results_kings](Images/SARIMAX_results_kings.png)


Let’s have a look at the residual information below, we can see that they are very close to having a normal distribution. Additionally, there is no longer an obvious seasonality based on the correlogram and the standardized residuals. The coefficient p-values also suggest that they are statistically significant. These results suggest that the model is satisfactory to move onto validation.

![residual_information_kings](Images/residual_information_kings.png)



Let’s fit the model to Kings County. From the figure below, we can see that the model is able to accurately forecast data into the future. The actual observed data is well within the confidence interval of our model's forecasts.

![df_kings_forecast](Images/df_kings_forecast.png)




#### *Future Predictions*

Now that we know that our model can accurately make predictions about the future EV counts in each county, we can use the same parameters to build a model on the whole observed dataset without splitting it into train/test sets.

**- Kings County**

![df_KINGS_preds](Images/df_KINGS_preds.png)

> The model is predicting that the number of EVs in King County are going to keep increasing almost linearly based on the mean values. If we look at the upper confidence interval though, we can see that the increase could keep an exponential pattern.



Next, we will fit this model to ** Nassau County**, ** Suffolk County**, **Westchester**, **Queens County**, and *New York County** in order to predict the number of EVs in 2023 and 2024.




### Future Predictions for Other Counties


**- Nassau County**

![df_NASSAU_preds](Images/df_NASSAU_preds.png)

> The model is predicting that the number of EVs in Nassau County will keep increasing exponentially in the coming years.



**- Suffolk County**

![df_SUFFOLK_preds](Images/df_SUFFOLK_preds.png)



**- Westchester County**

![df_WESTCHESTER_preds](Images/df_WESTCHESTER_preds.png)

> The model is predicting that the number of EVs in Westchester County are going to keep increasing at a linear rate (based on the mean prediction). However, if we look at the upper and lower confidence intervals, we also see the possibilities of an exponential increase and a leveling off.



**- Queens County**

![df_QUEENS_preds](Images/df_QUEENS_preds.png)



**- New York County**

![df_NEW_YORK_preds](Images/df_NEW_YORK_preds.png)




## Number of Charging Station in NYS


<p align="center">
<img src="https://github.com/Hosseindbr/Ev-projected-sale/blob/5f4c9a4d5c6e419bed3f44908513fdca057e09dd/Images/picture_6.png" width="317" height="160">
</p>


### Current Number of Charging Stations by County (Top 10)

<img src="https://github.com/Hosseindbr/Ev-projected-sale/blob/1359d1444e61550726d9cc782515d22e4a50956d/Images/charger_counts_10_counties.png" width="270" height="400">

> **New York County** has the largest number of charging station (357) in NYS, followed by **Albany County** (331), and **Erie county** (212). The number of charging stations in **Kings County** is only 108, which might be not enough comparing with the EV registrations in Kings county.


![charger_counts](Images/charger_counts.png)

> You can find the charging station counts for all the counties in NYS in the bar chart above.



### Number of Charging Stations vs. Number of EVs 

The table below compare the numbers between existing charging stations and EVs 2021:

![comparison_between_EVs_and_chargers](Images/comparison_between_EVs_and_chargers.png)

> Above, the average number of EVs per charging station in **King County** is the largest(448). Kings County also have the largest predicted number of EVs by 2023, with around 38135 EVs added. 




### Conclusions 




## Recommendations for Future Analysis


<p align="center">
<img src="https://github.com/Hosseindbr/Ev-projected-sale/blob/cefc12c2d76d753b2b5089dd79921c46770477d0/Images/picture_4.png" width="316" height="130">
</p>




## Sources
- https://www.alliedmarketresearch.com/electric-vehicle-market
- https://www.caa.ca/sustainability/electric-vehicles/engine-options/
- https://www.transportation.gov/rural/ev



