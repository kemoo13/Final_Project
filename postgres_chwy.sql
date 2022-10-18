CREATE TABLE chwy(
    Date date not null,
    Open int not null,    
    High int not null,
    Low int not null,
    Close int not null,
    Adj_Close int not null,
    Volume int not null
);

SELECT * FROM chwy;

ALTER TABLE chwy
    ADD ticker VARCHAR;
