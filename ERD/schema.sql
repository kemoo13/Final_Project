Company_Info
----
Company_ID varchar pk
Ticker varchar FK >- CHWY.Ticker
Company varchar
Date_IPO date
Market_Capitalization varchar
Pet_Market_Segment varchar
Company_Size int

CHWY
----
Ticker varchar pk
Date date
Open float
High float
Low float
Close float
Adj_Close float
Volume int

ELAN
----
Ticker varchar pk FK >- Company_Info.Ticker
Date date
Open float
High float
Low float
Close float
Adj_Close float
Volume int


FRPT
----
Ticker varchar pk FK >- Company_Info.Ticker
Date date
Open float
High float
Low float
Close float
Adj_Close float
Volume int