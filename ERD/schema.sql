Company_Info
----
Stock_Ticker varchar pk
Company varchar
Date_IPO date
Market_Capitalization varchar
Pet_Market_Segment varchar
Company_Size int

CHWY
----
Ticker varchar pk FK >- Company_Info.Stock_Ticker
Date date FK >- ELAN.Date
Open float
High float
Low float
Close float
Adj_Close float
Volume int

ELAN
----
Ticker varchar pk FK >- Company_Info.Stock_Ticker
Date date FK >- FRPT.Date
Open float
High float
Low float
Close float
Adj_Close float
Volume int


FRPT
----
Ticker varchar pk FK >- Company_Info.Stock_Ticker
Date date
Open float
High float
Low float
Close float
Adj_Close float
Volume int
