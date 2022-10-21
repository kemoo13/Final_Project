SELECT CY."Ticker", CY."Date", CY."Adj_Close", C.Company_ID, C.Stock_Ticker, C.Company, C.Date_IPO, C.Market_Capitalization, C.Pet_Market_Segment, C.company_size

INTO chwy_join

FROM Company_Info as C

FULL OUTER JOIN chwy as CY

On CY."Ticker" = C.stock_ticker

;