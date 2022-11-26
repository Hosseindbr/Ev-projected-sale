# Electric Vehicle Projected Sales



## Overview of Analysis


<p align="center">
<img src="https://github.com/Hosseindbr/Ev-projected-sale/blob/cefc12c2d76d753b2b5089dd79921c46770477d0/Images/picture_1.png" width="320" height="150">
</p>


*“ The global electric vehicle market was valued at $163.01 billion in 2020, and is projected to reach $823.75 billion by 2030, with a compound annual growth rate (CAGR) of 18.2% from 2020 to 2030. ”*

Electric vehicles (EVs) are vehicles that are either partially or fully powered on electric power. The electric vehicle was primarily designed to replace conventional ways of travel as they lead to environmental pollution. It has gained popularity, owing to numerous technological advancements. It outperforms conventional vehicles providing higher fuel economy, low carbon emission & maintenance, smoother drive, and reduced sound from engine. 

As the leader of the free world, the United States through its Federal Government has set a goal to make half of all new vehicles sold in the U.S. in 2030 zero-emissions vehicles, and to build a convenient and equitable network of chargers to help make EVs accessible to all Americans for both local and long-distance trips. On a recent poll conducted by The U.S department of transportation, in rural parts of the country—home to 20 percent of Americans and almost 70 percent of America’s road miles—EVs can be an especially attractive alternative to conventional vehicles. Rural residents tent to drive more than their urban counterparts, spend more on vehicle fuel and maintenance, and often have fewer alternatives to driving to meet their transportation needs. Over the long run, the plan for the federal government with climate change in mind, is to showcase how EVs will help residents of rural areas reduce those costs and minimize the environmental impact of transportation in their communities. A team of Data Analysts having in common their implication in Climate change and EVs decided then to run an analysis on the forecast of demand in EV vehicles and charging stations for the coming years. They decide to use New York State datasets available for EV registrations and current charging stations with an idea in mind if they can do it in "Empire State" , they could do a similar analysis across the country.

This analysis focused on the time series modeling of the amount of EVs in New York State (NYS). After exploring the data of EV registrations and the number of charging stations in NYS from 2012 to 2021, a machine learning model was built to predict the EV sales in NYS in 2023 and 2024, as well as the demand for EV charging stations.




## Database


<p align="center">
<img src="https://github.com/Hosseindbr/Ev-projected-sale/blob/efb6cad19ad75cce6b376965361f223cb3465208/Images/picture_7.png" width="515" height="200">
</p>


- The database for this project was setup using AWS's relational database service (RDS),
- The structure of the database and the relations between database objects were designed using the QuickDBD tool. The ERD diagram is shown below.


![EDR.png](Images/EDR_diagram.png)



### Data Sources

- https://data.ny.gov
- https://data.world
- https://www.eia.gov/totalenergy/data/monthly/




## Communication Protocol


<p align="center">
<img src="https://github.com/Hosseindbr/Ev-projected-sale/blob/cefc12c2d76d753b2b5089dd79921c46770477d0/Images/picture_2.png" width="537" height="200">
</p>


There are three members in our team. The role of each team member is indicated by a particular shape: square, circle, triangle. The team member in the square role is responsible for the Github repository including data exploration and visualization. The member in the circle role is in charge of data collection and data cleaning. The member in the triangle role is responsible for creating a machine learning model. The role of each team member will remain the same most of the time to ensure that we have an expert for each topic of the project. 

A Slack channel was created to support communication amongst the team members, and was used to assign tickets, provide updates, and discuss any issues. The team would additionally have meetings twice a week to go over project progress and next steps.




## Data Exploration and Preliminary Analysis


<p align="center">
<img src="https://github.com/Hosseindbr/Ev-projected-sale/blob/cefc12c2d76d753b2b5089dd79921c46770477d0/Images/picture_3.png" width="632" height="200">
</p>


### *Number of EVs on the Road in NYS Over Time (2015-2021)*


The total number of EVs registered in NYS per year is:

<img src="https://github.com/Hosseindbr/Ev-projected-sale/blob/ea5ff7fe4dccb19b708f3c58b28a530580375035/Images/reg_year_counts.png" width="148" height="224">



![EV_on_the_road_2015_2021](Images/EV_on_the_road_2015_2021.png)


> As we can see above, the electric vehicle registration in NYS have been increasing exponentially over the past years. The total number of EVs in **2021** was 40356, which was over 791 times larger than the total number of EVs in **2015** (51).




### *Total Number of EVs on the Road by City*


Top 10 cities with the largest total number of EVs in NYS from 2015 to 2021:


<img src="https://github.com/Hosseindbr/Ev-projected-sale/blob/ea5ff7fe4dccb19b708f3c58b28a530580375035/Images/top_10_cities.png" width="217" height="305">



![EV_Count_by_City.png](Images/EV_Count_by_City.png)


> As we can see, **Brooklyn** (9738), **New York** (2781), and **Staten Island** (1121) were the top 3 cities with the largest total number of EVs in NYS from 2015 to 2021.




### *Number of EVs on the Road by County Over Time (2015-2021)*


For statewide trend, we explored the EV registrations from 2015 to 2021 in 10 top counties:

![EV_Count_by_County_Over_Time](Images/EV_Count_by_County_Over_Time.png)


> From the line chart above, we noticed that **Kings County** was growing much faster compared to other counties. This result is expected because Kings County is the most populous county in NYS, and the second-most densely populated county in the U.S.. It is also coextensive with Brooklyn city, which has the largest total number of EVs in NYS (2015-2021).




### *Popularity of Car Models by County*

One of the most important parts in the EV sales analysis is the popularity of electric vehicle models. In order to study the market of EV models in NYS, frist we selected the top 10 counties with the largest total number of EVs from 2015 to 2021. Next, We figured out the top 6 most purchased models in each of these counties.


The top 10 counties selescted:

<img src="https://github.com/Hosseindbr/Ev-projected-sale/blob/ea5ff7fe4dccb19b708f3c58b28a530580375035/Images/top_10_counties.png" width="216" height="303">



Bar graphs were used to show the difference between top 6 most purchased EV models:

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



> **Tesla**, **Chevrolet**, and **Hyundai** were the most purchased EVs in each of these counties from 2015 to 2021. Moreover, Tesla was the top 1 purchased EV modles in each of these counties. It is a relatively lower priced luxury electric vehicle that was designed to appeal to the mass market. In 2021, Tesla had the most worldwide sales of EVs, capturing 21% of the battery-electric (purely electric) market and 14% of the plug-in market (which includes plug-in hybrids). 




## NYS EVs Registration Visualization

- NYS EV registration map

![NYS_EV_registration_map](Images/NYS_EV_registration_map.png)



- New York City EV registration map

Vizualisation for New York city including it's boroughs, Manhattan, Brooklyn, the Bronx , Queens and Staten Island. Their respective county are New York County, Kings, Bronx, Queens and Richmond County

![NY_city_EV_registration_map](Images/NY_city_EV_registration_map.png)



- NYS EV station registration map

![NYS_EV_station_map](Images/NYS_EV_station_map.png)




## Machine Learning Models for the Number of EVs on the Road by County in Future


<p align="center">
<img src="https://github.com/Hosseindbr/Ev-projected-sale/blob/cefc12c2d76d753b2b5089dd79921c46770477d0/Images/picture_5.png" width="444" height="200">
</p>


### Finding the Best Fit Model

In this project, we aimed to predict the demand for EVs in each county in NYS and find the top 3 counties to invest for setting EV charging stations based on the demand. To do so, first, we would build and train a time series machine learning model for the number of EVs in NYS. Next, we could use this model to predict the number of EVs in the top 6 counties with the most purchased EVs from 2015 to 2021 in NYS.

To find the best-fit model, let's use the number of EVs in **Kings County** as a sample. 



**- Kings County**


#### *Seasonality Check*

To check for seasonality, we performed the time series decomposition analysis to Kings County. Decomposition can provide a useful abstract model for thinking about time series generally and for better understanding problems during time series analysis and forecasting.

We decomposed the number of EVs in Kings County from 2015 to 2021 into trend, seasonal and noise components. As a result, the number of EVs in King County had an upward trend and a seasonality pattern.

![decomposition_Kings](Images/decomposition_Kings.png)



#### *Split Train and Test sets*

In order to validate the performance of this model, we splitted the data into two sets: a training set and a testing set. After multiple iterations, we found that the best performance was achieved with a split ratio of 0.85/0.15, 85% of the data in the training set and 15% in the testing set.

![train_test_split_Kings](Images/train_test_split_Kings.png)




#### *Finding the Best Parameters with Auto-Arima*


To get a model which can accurately predict future data in a series, we used auto-ARIMA to optimize the p,d,q values for each county and the validation of the models. The best parameters (based on the AIC score) were (1,1,2) without the seasonal component. Then, we plugged these into a SARIMAX model to have our final model. We could validate it by looking at the forecasts and the test set. Below is the result after plug these into a SARIMAX model:

<img src="https://github.com/Hosseindbr/Ev-projected-sale/blob/ea5ff7fe4dccb19b708f3c58b28a530580375035/Images/SARIMAX_results_kings.png" width="474" height="570">


Let’s have a look at the residual information below.The residuals are almost fairly close to being normally distributed. We can accept this as the best model and move onto making and plotting predictions.

![residual_information_kings](Images/residual_information_kings.png)



We fitted this model to Kings County to get the forcasted data as the figure below. We can see that the model is not able to accurately forecast data into the future. The actual observed data is not within the confidence interval of our model's forecasts. This is mainly due to the fact that major part of the trained data deal in the linear part of time-series. while, as of 2020, the trend of EV vehicle followed an exponential pattern. We need to reduce the time period to achive more acurate information for the Kings county.

![df_kings_forecast](Images/df_kings_forecast.png)




#### *Future Predictions*

Now, we know that our model can accurately make predictions about the future EV counts in each county. Thus, we would use the same parameters to build a model on the whole observed dataset without splitting it into train/test sets.


![df_KINGS_preds](Images/df_KINGS_preds.png)

> The model predictes that the number of EVs in King County are going to keep increasing almost linearly at a slower rate, based on the mean values. However, in the the upper confidence interval, the increaseing follows an exponential pattern.


Next, we would fit this model to **Nassau County**, **Suffolk County**, **Westchester**, **Queens County**, and **New York County** in order to predict the number of EVs in 2023 and 2024.




### Future Predictions for Other Counties


**- Nassau County**

![df_NASSAU_preds](Images/df_NASSAU_preds.png)

> The model is predicting that the number of EVs in Nassau County will keep increasing exponentially in the coming years.



**- Suffolk County**

![df_SUFFOLK_preds](Images/df_SUFFOLK_preds.png)

> The model is predicting that the number of EVs in Clark County will keep increasing exponentially in the coming years (the upper confidence limit).


**- Westchester County**

![df_WESTCHESTER_preds](Images/df_WESTCHESTER_preds.png)

> The model is predicting that the number of EVs in Westchester County are going to keep increasing at a linear rate (based on the mean prediction). However, if we look at the upper and lower confidence intervals we also see the possibilities of an exponential increase and a leveling off.


**- Queens County**

![df_QUEENS_preds](Images/df_QUEENS_preds.png)

> The model is predicting the number of EVs in QUEENS County to keep increasing exponentially. 


**- New York County**

![df_NEW_YORK_preds](Images/df_NEW_YORK_preds.png)

> The model is predicting the number of EVs in New York County to keep increasing exponentially.



## Number of Charging Station in NYS


<p align="center">
<img src="https://github.com/Hosseindbr/Ev-projected-sale/blob/5f4c9a4d5c6e419bed3f44908513fdca057e09dd/Images/picture_6.png" width="317" height="160">
</p>


### Current Number of Charging Stations by County (Top 10)

Predicting the demand for EVs in each county in NYS is one of the purpose for this project. The other purpose is to find the top 3 counties to invest for EV charging stations based on this demand. The table below is the current total number of charging stations per county in NYS.

<img src="https://github.com/Hosseindbr/Ev-projected-sale/blob/ea5ff7fe4dccb19b708f3c58b28a530580375035/Images/charger_counts_10_counties.png" width="350" height="400">

> **New York County** has the largest number of charging stations (357) in NYS, followed by **Albany County** (331), and **Erie county** (212). The number of charging stations in **Kings County** is only 108, which might be not enough comparing with the EV registrations in Kings county.


![charger_counts](Images/charger_counts.png)

> You can find the charging station counts for all the counties in NYS in the bar chart above.



### Number of Charging Stations vs. Number of EVs on the Road

The table below compares the numbers between existing charging stations and EVs 2021:

![comparison_between_EVs_and_chargers](Images/comparison_between_EVs_and_chargers.png)

> From the table above, **Kings County** has the largest predicted number of EVs in 2023, with around 38135 new EVs added on the road. At that time, there will be 448 EVs per charging station in Kings County, which makes it the best county to invest for EV charging stations. Another county good to invest for EV charging stations will be **Nassau County**. There is only 81 charging stations in Nassau County currenetly. From the prediction, there will be 10216 EVs added by the end of 2023, with about 231 EVs per charging station. The 3rd county good to invest for EV charging stations is **Westchester County**. The number of EVs per chatging station in Westchester County will be 121 in 2023 by prediction. 


![Predicted_EV_Counts_for_KINGS_NASSA_SUFFOLK](/Images/Predicted_EV_Counts_for_KINGS_NASSA_SUFFOLK.png)




## EV Adoption Prediction 


The electric vehicle counts in each county have been increasing exponentially for the past 8 years. Our model predicted that this trend will continue for at least the next few years. Next, we will explore the factors are associated with electric vehicle adoption in the future.



### Features 


- *ZIP Code*

ZIP code is a categorical variable that we would like to use as one of our features. One hot encoding is used to convert ZIP codes so they can be provided to machine learning algorithms later. 


- *Temperature*

One of the features that we are considering is the average temperature in NYS over years. The figure below shows the annual average temperatures in NYS from 2015 to 2022:

![NYS_annual_temperature](Images/NYS_annual_temperature.png)



- *Income*

Average annual income for households in NYS is another features that we are considering. The comparison of average annual income in NYS and U.S. is demonstrated below:

<img src="https://github.com/Hosseindbr/Ev-projected-sale/blob/08279dbfa03e67c67db891c56af7d21b68072fd2/Images/NYS_US_annual_income.png" width="203" height="165">


![Average_Income_comparison_NYS_US](Images/Average_Income_comparison_NYS_US.png)

> Overall, the average household income is increasing in both NYS and U.S. And the average income in NYS is about 6-7% higher than than in U.S..




### Model Training 


#### *Train Test Split*

First, we need to split the dataset in to train and test subsets. For our dataset, we used 80% to train and 20% to validate. For the time series model, we uses the data between 2015 and 2020 as the training data, and the date in 2021 as the testing data.

 

#### *Linear Model Hypothesis*

We preliminarily hypothesize that the EV adoption numbers follow a linear pattern with respect to our features, so we will fit our data using a linear regression model. After training our model, we can predict EVs adoption numbers given the year, ZIP code, temperature, and income data of NYS. 


- Evaluate the Model

To evaluate our model, we will take the the mean squared error of the prediction vs the true label. First, we recovered the zip code labels from the dataframe. Then, we evaluated how well we trained our model onto our dataset by using our linear model to predict over each ZIP code of the **training data**, and calculatting the mean squared error between the prediction and the true result:

![mse_train_histogram](Images/mse_train_histogram.png)


Next, we will evaluate how well our model predict future outcomes by predicting over each ZIP code of the **testing data**, and then calculating the mean squared error between the prediction and the true result:

![mse_test_histogram](Images/mse_test_histogram.png)



- Modify the Model

We can see from our histogram of mean squared errors that our linear model does not generalize very well for a handful of ZIP codes. This is likely due to the sparsity or perhaps the general lack of the data for those particular ZIP codes. To improve this model, we need to remove the outlier ZIP codes from our dataset and only focus on the ZIP codes that our model can perform decently on. 

First, we removed the ZIP codes with high mean squared error by placing a threshold that should filter them out. Then, in order to disregard the filtered out ZIP codes, we pruned them out and propagated those changes down to the X matrix, y vector, and the train-test split. Finally, we retrained our linear model on the pruned dataset.


 
#### *Auto Regressive Integrated Moving Average Model (ARIMA)*

The ARIMA model only takes in a series as input and no ZIP code categorical variable, so we trained our model on only some of the more consequential ZIP codes with more data. After testing the ARIMA model on the the 11753 ZIP codes, we saw that it does not actually give us much of an improvement compared to the linear model in terms of mean squared error.

In addition, after doing a bit more research we realized that ARIMA would not be the best model because:
- Our time series is not necessarily a stationary series, and we do not have enough data to prove that.
- Our input data is meant to be multivariate, but ARIMA only allows for univariate inputs. This makes training over multiple ZIP codes significantly more difficult.



#### *Predict the Next 30 Years*

To predict the next 30 years, we need to generate data for temperature and income in New York state based on some hypotheses.

- NYS Temperature Data (2020-2050)

Below we hypothesize that NY state temperature follows a linear pattern, and thus we will generate data based on a linear model. We will also add Gaussian noise based on the standard deviation of the known temperatures.

![NYS_temperature_2020_2050](Images/NYS_temperature_2020_2050.png)


- NYS Income Data (2020-2050)

Below we hypothesize that NY state income follows a linear pattern, and thus we will generate data based on a linear model. We will also add Gaussian noise based on the standard deviation of the known income.

![NYS_income_2020_2050](Images/NYS_income_2020_2050.png)


- Create Future Matrix to Predict On

Next, we made prediction using the future matrix, which is based on the future data that we have generated.


NYS EV adoption per zip code from 2020 to 2050:

![NYS_EV_adoption_per_ZIP_code](Images/NYS_EV_adoption_per_ZIP_code.png)

![NYS_cumulative_EV_adoption_per_ZIP_code](Images/NYS_cumulative_EV_adoption_per_ZIP_code.png)



NYS total EV adoption from 2020 to 2050: 

![NYS_total_EV_adoption](Images/NYS_total_EV_adoption.png)

![NYS_total_cumulative_EV_adoption](Images/NYS_total_cumulative_EV_adoption.png)


> In total, our model predicts that NY state will have over *535000* EVs by **2050**.




## Electrical Infrastructure Sustainability Model

Now that we have our forecasting model, we can use its outputs to analyze whether the current electrical infrastructural capacity of our selected geographic region can handle the increased number of EVs.

We found a dataset with a detailed breakdown of energy generation per state and through what energy source starting from 1990 to 2020, and another dataset with a breakdown of energy consumption per state per year from 2000 to 2018.

We explored the electrical production and electrical usage (MWh) of NYS, and we will tie this data in with the influx of the EV population that we saw earlier. We are also interested in the energy proportion that is generated from clean, renewable resources, so we calculated the total average **renewable energy proportion** by filtering and grouping the renewable energy sources, such as hydroelectric and solar. We found that around *22%* of New York state's energy generation comes from renewable sources, which is quite remarkable.



#### *Average Energy Surplus per Year*

Since we have the energy generation and consumption numbers per year, we can merge the tables together and calculate the average surplus per year:

<img src="https://github.com/Hosseindbr/Ev-projected-sale/blob/08279dbfa03e67c67db891c56af7d21b68072fd2/Images/average_energy_surplus.png" width="162" height="256">


We can also calculate the average energy surplus per ZIP code. To do so, we loaded a current New York state population by ZIP code file, and then computed the proportion of the population in each ZIP code.


<img src="https://github.com/Hosseindbr/Ev-projected-sale/blob/08279dbfa03e67c67db891c56af7d21b68072fd2/Images/average_energy_surplus_per_ZIP_code.png" width="529" height="363">




#### *Combining EV Adoption with Electrical Infrastructure*

On average, EVs get somewhere within the range of 2 to 3 mi/kWh, so we can use 2.5 mi/kWh as our number. American drivers average 15000 miles driven per year, so this comes down to 6000 kWh per year, or 6 MWh per year. Given that the energy surplus average is around 17 million MWh, the state of NY can support about 2.83 million EVs using the energy surplus.

If we only consider 77% of the surplus, which is the average percentage of energy that is supplied through renewable sources, then we have about 13 million MWh of surplus, which can support about 2.18 million EVs. This actually means that even with our projected 1 million addition of EVs by 2050, NY state will still have enough renewable energy capacity to support all of them overall. In total, NY state can support *339698550* EVs through energy surplus.

![EVs_NYS_can_support_given_EV_doption](Images/EVs_NYS_can_support_given_EV_doption.png)



However, it is different per ZIP code, and it turns out that there some ZIP codes in NYS that already do not have much surplus energy capacity that may struggle upon an influx of EVs being purchased.

Below, let us take the average energy surplus across each ZIP code and subtract that predicted number of EVs that will be purchased over the years 2021 to 2050. This will give us the remainder of how many more EVs each ZIP code can support.

![EVs_each_ZIP_code_can_support_given_EV_doption](Images/EVs_each_ZIP_code_can_support_given_EV_doption.png)




## Conclusions 


- The city with the largest total number of EVs in NYS from 2015 to 2021 is **Brooklyn** (10075).


- Top 10 counties with the largest total number of EVs from 2015 to 2021 are Kings County, Nassau County, Suffolk County, Westchester County, Queens County, New York County, Monroe County, Erie County, Rockland County, and Richmond County. In each of these counties, top 3 most purchased EV models are **Tesla**, **Chevrolet**, and **Hyundai**.


- By 2023, top 6 counties with the largest predicted number of EVs will be Kings County, Nassau County, Westchester County, Suffolk County, Queens County, and New York County.


- Top 10 counties with the largest current number of charging station in NYS: New York County, Albany County, Erie County, Monroe County, Suffolk County, Saratoga County, Westchester County, Kings County, Onondaga County, Queens County.


- Top 3 best counties to invest for charging stations: **Kings County**, **Nassau County**, **Westchester County**.


- In total, our model predicts that NY state will have over *535000* EVs by **2050**.


- NY state can support *339698550* EVs through **energy surplus**.




## Recommendations for Future Analysis


<p align="center">
<img src="https://github.com/Hosseindbr/Ev-projected-sale/blob/cefc12c2d76d753b2b5089dd79921c46770477d0/Images/picture_4.png" width="316" height="130">
</p>




## Sources
- https://www.alliedmarketresearch.com/electric-vehicle-market
- https://www.caa.ca/sustainability/electric-vehicles/engine-options/
- https://www.transportation.gov/rural/ev
- https://en.wikipedia.org/wiki/Tesla,_Inc.
