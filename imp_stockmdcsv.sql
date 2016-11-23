drop table stockmd;
create table stockmd(
tdate char(100),
symbol char(100),
close float,
max250 float,
min250 float,
sma250 float,
max60 float,
min60 float,
sma60 float,
max30 float,
min30 float,
sma30 float,
max20 float,
min20 float,
sma20 float,
max10 float,
min10 float,
sma10 float,
max500 float,
min500 float,
sma500 float,
max90 float,
min90 float,
sma90 float,
max0 float,
min0 float

);
.separator "|"
.import stockmd.csv stockmd
