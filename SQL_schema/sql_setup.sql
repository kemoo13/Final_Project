--> setup Final_Project DB with stock tables

-- chwy table --

CREATE TABLE chwy(
    Date date not null,
    Open int not null,    
    High int not null,
    Low int not null,
    Close int not null,
    Adj_Close int not null,
    Volume int not null,
    Ticker varchar not null
);

SELECT * FROM chwy;

-- freshpet table  ---

CREATE TABLE frpt(
    Date date not null,
    Open int not null,    
    High int not null,
    Low int not null,
    Close int not null,
    Adj_Close int not null,
    Volume int not null,
    Ticker varchar not null
);

SELECT * FROM frpt;

-- petiq table  ---

CREATE TABLE petq(
    Date date not null,
    Open int not null,    
    High int not null,
    Low int not null,
    Close int not null,
    Adj_Close int not null,
    Volume int not null,
    Ticker varchar not null
);

SELECT * FROM petq;

--> run all ETL jupyter notebooks from Final_Project repo

-- view uploaded all_stocks table from sqlalchemy connections --

SELECT * FROM all_stocks;

--> build info table and import data from Final_Project repo

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

SELECT C.Company_ID, C.Company, C.Date_IPO, C.Market_Capitalization, 
    C.Pet_Market_Segment, C.company_size, all_stocks."Date", all_stocks."Adj_Close", all_stocks."Volume", all_stocks."Ticker"
INTO stocks_joined
FROM Company_Info as c
INNER JOIN all_stocks
ON all_stocks."Ticker" = C.stock_ticker
;

SELECT * FROM stocks_joined;

-- remove data outside the timeframe of interest --

DELETE FROM stocks_joined
WHERE "Date" < '2019-10-16' or "Date" > '2021-10-17'
RETURNING *;

-- DROP TABLE stocks_joined;

--> export .csv to tmp folder for machine learning model

COPY stocks_joined TO 'C:\tmp\stocks_joined.csv' DELIMITER ',' CSV HEADER;

<<<<<<< HEAD
-- DROP TABLE chwy;

-- DROP TABLE chwy_join;

-- DROP TABLE company_info;

-- DROP TABLE elan;

-- DROP TABLE frpt;

-- DROP TABLE petq	


=======
--> run ML model notebook

SELECT * FROM model_predictions;

DROP TABLE model_predictions;

SELECT * FROM model_scores;

DROP TABLE model_scores;
>>>>>>> 9c9bf78eddee3e844066482cbc0e99eb7d9ede57






