--> Final_Project DB Setup <--

--> run all ETL jupyter notebooks from Final_Project repo

-- view uploaded all_stocks table from sqlalchemy connections --

SELECT * FROM all_stocks;

--> build info table and import company_info.csv data from Final_Project repo

-- company info table --
    
CREATE TABLE Company_Info (	
Company_ID INT NOT NULL, 
Stock_Ticker VARCHAR NOT NULL,
Company VARCHAR NOT NULL,
Date_IPO Date, 	
Market_Capitalization VARCHAR NOT NULL,	
Pet_Market_Segment VARCHAR NOT NULL,
Company_Size INT NOT NULL 
);

SELECT * FROM company_info;

-- join stock and company_info tables

SELECT C.Company_ID, all_stocks."Ticker", C.Company, all_stocks."Date", 
    all_stocks."Adj_Close", all_stocks."Volume", C.Date_IPO, 
    C.Market_Capitalization, C.Pet_Market_Segment, C.company_size
INTO stocks_joined
FROM all_stocks 
INNER JOIN Company_Info as c
ON all_stocks."Ticker" = C.stock_ticker
;

SELECT * FROM stocks_joined;

-- remove data outside the timeframe of interest --

DELETE FROM stocks_joined
WHERE "Date" < '2019-10-16' or "Date" > '2021-10-17'
RETURNING *;

--DROP TABLE stocks_joined;

--> export .csv to tmp folder for machine learning model

COPY stocks_joined TO 'C:\tmp\stocks_joined.csv' DELIMITER ',' CSV HEADER;

--> run all ML model notebooks

SELECT * FROM model_predictions;

--DROP TABLE model_predictions;

SELECT * FROM model_scores;

--DROP TABLE model_scores;