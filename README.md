# Final_Project

## Topic Overview

In 2019 the Covid-19 pandemic spread worldwide. In attempt to minimize the spread of the virus, the USA went in to lockdown in March of 2020. Many Americans adopted pets, largely cats and dogs, to cope with the stress of being hope for such a long period of time during lockdown. How has this affected the stock market for large pet companies? We are looking at stock closing price data for multiple pet companies across 2019-2020 to determine how Covid-19 impacted this industry.  Our hypothesis is that the changes associated with working from home and mandatory closures corresponded to an increase in pet ownership and this would be reflected in the stock data as an increase in stock pricing when compared to previous years.  We selected stocks to show various sectors of this industry including veterinary services, pet food and treats, pet care products, online pet medication and supplements and veterinary diagnostic services. 

Goal: To develop a ML model to predict stock performance for this business sector and demonstrate how this industry thrived across this time period.  

## Communication Protocols
- biweekly video calls 
- google shared drive 
- Git repository
- dedicated Slack channel

## Project Flow
![Flow_Diagram](/Images/Pet_Stock_Workflow.png)

## Data Sources
Yahoo Finance Historical Data 
- [CHWY](https://finance.yahoo.com/quote/CHWY/history?p=CHWY)

ASPCA - https://www.aspca.org/about-us/press-releases/new-aspca-survey-shows-overwhelming-majority-dogs-and-cats-acquired-during

Washington Post - https://www.washingtonpost.com/business/2022/01/07/covid-dogs-return-to-work/

## Database


## Visualizations


## Machine Learning

Note: use the dates to divide the training and testing sets.  The training data should preceed the testing data.  Do this by using a conditional to define the test dataframe on dates.  

Long Short-Term Memory (LSTM) is a type of recurrent neural network is frequently applied for stock market prediction. Because it is able to store past information and prediction of future stock prices is dependent on previous prices, an LSTM model is useful because it can learn order dependence in sequence prediction problems.   

## Summary



## Future Improvement

Since many of the pet stock sources were private, the data was limited to the ones that were available to the public through Yahoo! Finance. Due to this issue, some of the major pet companies such as PetCo and PetSmart were unable to be added to the analysis. These are multibillion-dollar companies that dominate the pet industry. If the stock information for these companies were added to the analysis, we would have a more accurate depiction of how well the pet industry did in the stock market in 2019. 
