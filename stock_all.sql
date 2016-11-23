drop table stock_all;
create table stock_all(
code char(100),
name char(100),
industry  char(100),
area char (100),
pe float,
outstanding float,
totals float,
totalAssets float,
liquidAssets float,
fixedAssets float,
reserved float,
reservedPerShare float,
eps float,
bvps float,
pb float,
timeToMarket char(100)
);

.separator ","
.import stock_all_utf_8.csv stock_all

create table stocks_low_pe as 
select * from stock_all a where a.pe between 10 and 50 order by industry,pe ;

.output c:/jaly/result/sym.txt
select code from stock_all a ;
