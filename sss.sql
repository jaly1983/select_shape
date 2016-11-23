.tables

select count(*) from stockmd;
.headers on 
select avg(tclose) from squotes_000001;

.headers on 
select max(tclose) from squotes_000002 where tdate between '2015-11-08' and '2016-11-08';
select max (1,23,54);





.schema stockmd
select max(tclose),sum(Tclose)/250 from squotes_000001 where tdate between '2015-11-08' and '2016-11-08';

select * from squotes_000001 order by tdate desc limit 10 offset 10 ;

select * from squotes_000001 limit 10 offset 100 ;

.headers on
select max(tclose) from (select *  from squotes_000001 where tclose <>'Close' limit 250 offset 0  );

-- 移动平均值
--sma250
select max(tclose),min(tclose),sum(tclose)/250 from (select *  from squotes_000001 where tclose <>'Close' limit 250 offset 0  );
--sma60
select max(tclose),min(tclose),sum(tclose)/60 from (select *  from squotes_000001 where tclose <>'Close' limit 60 offset 0  );
--close
select '000001.SZ', tclose from squotes_000001 where tclose <>'Close' order by tdate desc limit 1;


select * from squotes_000001  where tclose <>'Close' order by tdate desc limit 1;

.tables

.headers on
-- 与sma250比较 
select count(*) from stockmd where abp_sma250 between 0 and 5 and (abp_sma60 between 0 and 5);
select count(*) from stockmd where abp_sma250 between 5 and 10;
select count(*) from stockmd where abp_sma250 between 10 and 15;
select count(*) from stockmd where abp_sma250 between 15 and 20;
select count(*) from stockmd where abp_sma250 between 20 and 25;
select count(*) from stockmd where abp_sma250 between 25 and 30;
select count(*) from stockmd where abp_sma250 between 30 and 40;
select count(*) from stockmd where abp_sma250 >40;
select count(*) from stockmd where abp_sma250 between -10 and -5;
select count(*) from stockmd where abp_sma250 between -20 and -15;
select count(*) from stockmd where abp_sma250 between -25 and -20;
select count(*) from stockmd where abp_sma250 between -30 and -25;
select count(*) from stockmd where abp_sma250 between -35 and -30;

--与sma60比较
select count(*) from stockmd where abp_sma60 between 0 and 5;
select count(*) from stockmd where abp_sma60 between 5 and 10;
select count(*) from stockmd where abp_sma60 between 10 and 15;
select count(*) from stockmd where abp_sma60 between 15 and 20;
select count(*) from stockmd where abp_sma60 between 20 and 25;
select count(*) from stockmd where abp_sma60 between 25 and 30;
select count(*) from stockmd where abp_sma60 between 30 and 40;
select count(*) from stockmd where abp_sma60 >40;
select count(*) from stockmd where abp_sma60 between -10 and -5;
select count(*) from stockmd where abp_sma60 between -20 and -15;
select count(*) from stockmd where abp_sma60 between -25 and -20;
select count(*) from stockmd where abp_sma60 between -30 and -25;
select count(*) from stockmd where abp_sma60 between -35 and -30;

--与max250比较
select count(*) from stockmd where abp_max250 between 0 and 5;
select count(*) from stockmd where abp_max250 between 5 and 10;
select count(*) from stockmd where abp_max250 between 10 and 15;

select count(*) from stockmd where abp_max250 between 15 and 20;
select count(*) from stockmd where abp_max250 between 20 and 25;
select count(*) from stockmd where abp_max250 between 25 and 30;
select count(*) from stockmd where abp_max250 between 30 and 40;
select count(*) from stockmd where abp_max250 >40;
select count(*) from stockmd where abp_max250 between -10 and -5;
select count(*) from stockmd where abp_max250 between -20 and -15;
select count(*) from stockmd where abp_max250 between -25 and -20;
select count(*) from stockmd where abp_max250 between -30 and -25;
select count(*) from stockmd where abp_max250 between -35 and -30;
select count(*) from stockmd where abp_max250 < -90 ;
--select symbol,close,abp_max250 from stockmd where abp_max250 < -90 ;

-- 两条均线之间的远近关系
select count(*) from stockmd where (abp_sma250 between 0 and 5) and (abp_sma60 between 0 and 5);
select count(*) from stockmd where (abp_sma250 between 5 and 10) and (abp_sma60 between 0 and 5);
select count(*) from stockmd where (abp_sma250 between 15 and 20) and (abp_sma60 between 0 and 5);
select count(*) from stockmd where (abp_sma250 between 20 and 25) and (abp_sma60 between 0 and 5);
select count(*) from stockmd where (abp_sma250 between 25 and 30) and (abp_sma60 between 0 and 5);


-- max250
select count(*) from stockmd where (abp_sma250 between 0 and 10) and (abp_sma60 between -10 and 10)

and (abp_max250 between -20w and -5);
select count(*) from stockmd where (abp_sma250 between 5 and 10) and (abp_sma60 between 0 and 5)  and (abp_max250 between -10 and -5);
select count(*) from stockmd where (abp_sma250 between 15 and 20) and (abp_sma60 between 0 and 5)  and (abp_max250 between -10 and -5);
select count(*) from stockmd where (abp_sma250 between 20 and 25) and (abp_sma60 between 0 and 5)  and (abp_max250 between -10 and -5);
select count(*) from stockmd where (abp_sma250 between 25 and 30) and (abp_sma60 between 0 and 5)  and (abp_max250 between -10 and -5);

select symbol,close from stockmd where
(abp_sma250 between 0 and 5) and (abp_sma60 between 0 and 5) and (abp_max250 between -20 and -5)
order by close ;


select symbol,close from stockmd where
(abp_sma250 between 5 and 10) and (abp_sma60 between 0 and 5)  and (abp_max250 between -10 and -5);


select symbol,close from stockmd where
(abp_sma250 between 0 and 10) and (abp_sma60 between -10 and 10)

select count(*) from stockmd where

(abp_sma250 between 0 and 10) and (abp_sma60 between -10 and 10)
 (abp_sma250 between 15 and 20) and (abp_sma60 between 0 and 5)  and (abp_max250 between -10 and -5);


select count(*) from stockmd where abp_sma60 between 10 and 15;
select count(*) from stockmd where abp_sma60 between 15 and 20;
select count(*) from stockmd where abp_sma60 between 20 and 25;
select count(*) from stockmd where abp_sma60 between 25 and 30;
select count(*) from stockmd where abp_sma60 between 30 and 40;

select symbol,close from stockmd where close>sma250 and
abp_sma60 between 10 and 15;

-- 领先股票
select symbol,close ,abp_sma250,abp_sma60 from stockmd  where --symbol ='000338.SZ';
(abp_sma250 between 10 and 15) and (abp_sma60 between -5 and 5);


select symbol,close ,abp_sma250,abp_sma60 from stockmd  where
 (abp_sma250 between 5 and 10) and (abp_sma60 between 0 and 5)  and (abp_max250 between -30 and -20);

.headers on 
select symbol,close ,abp_sma250,abp_sma60,abp_max250 from stockmd  where
 close > sma250 and (abp_max60 between -30 and -20);



.headers on

--- ok one
select * from  
(select '000001.SZ' , tclose  from squotes_000001 where
tclose <>'Close' order by tdate desc limit 1) a,

(
select max(tclose) max250  ,min(tclose) min250 ,sum(tclose)/250 avg250 
from (select * from squotes_000001 where tclose <>'Close' limit 250
offset 0 )) b,

(
select max(tclose) ,min(tclose) ,sum(tclose)/60  from
(select * from squotes_000001 where tclose <>'Close' limit 60 offset 0)) c;


-- alias
select * from  
(select '000001.SZ' symbol , tclose  from squotes_000001 where
tclose <>'Close' order by tdate desc limit 1) a,

(
select max(tclose) max250 ,min(tclose) min250,sum(tclose)/250 avg250 
from (select * from squotes_000001 where tclose <>'Close' limit 250
offset 0 )) b,

(
select max(tclose)  max60 ,min(tclose) min60 ,sum(tclose)/60 avg60  from
(select * from squotes_000001 where tclose <>'Close' limit 60 offset 0)) c;



drop table squotes;
create table squotes(
symbol char(100),
TDate char(100),
TOpen float,
THigh float,
TLow float,
TClose float,
TVolume float,
TAdjClose float
);

insert into squotes
select '000001.SZ' symbol , s.*  from squotes_000001 s ;

select * from squotes;




select * from (
select '600000.ss' symbol , tclose  from squotes_600000 where
tclose <>'Close' order by tdate desc limit 1) a,
(
select max(tclose) max250 ,min(tclose) min250,sum(tclose)/250 sma250 from
(select * from squotes_600000 where tclose <>'Close' limit 250 offset 0 )
) b,
(
select max(tclose)  max60 ,min(tclose) min60 ,sum(tclose)/60 sma60  from
(select * from squotes_600000 where tclose <>'Close' limit 60 offset 0)

) c,
(
select max(tclose)  max30 ,min(tclose) min30 ,sum(tclose)/30 sma30  from
(select * from squotes_600000 where tclose <>'Close' limit 30 offset 0)

) d,
(
select max(tclose)  max20 ,min(tclose) min20 ,sum(tclose)/20 sma20  from
(select * from squotes_600000 where tclose <>'Close' limit 20 offset 0)

) e,
(
select max(tclose)  max10 ,min(tclose) min10 ,sum(tclose)/10 sma10  from
(select * from squotes_600000 where tclose <>'Close' limit 10 offset 0)

) f
;

-- one symbol
-- close
select symbol,tclose from squotes where symbol='600000.ss' and tclose <>'Close' order by TDate desc limit 1 ;
-- max/min/sma 250
select max(tclose) max250 ,min(tclose) min250,sum(tclose)/250 avg250 
from (select * from squotes  where symbol='600000.ss' and tclose <>'Close' limit 250
offset 0 )

-- 领先股票
--symbol|close|max250|min250|sma250|max60|min60|sma60|max30|min30|sma30|max20|min20|sma20|max10|min10|sma10
.headers on
select symbol,close,sma250,sma60
from stockmd  where 1=1
and (close - sma250 )/sma250 *100 between 10 and 15
and (close - sma60 )/sma60 *100 between -5 and 5
order by close;


-- 潍柴型
-- 伊力特型
-- 三一重工型
-- 大幅上涨x1
  -- (max30-min30)/min30
  
.tables

.schema stockmd

--窄幅震荡10% 年线附近
.headers on
select symbol,close,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd  where 1=1
and close > sma250
and  abs((close-sma250)/sma250*100) between 0 and 10
and  abs((max60-min60)/min60*100) between 20 and 30  --领先于大盘
and  abs((max30-min30)/min30*100) between 5 and 10 --短期窄幅震荡
order by close;


--暴涨3成以上
.headers on
select symbol,close,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd  where 1=1
and close > sma250
and  abs((close-sma250)/sma250*100) between 0 and 15
and  (max60-close)/min60*100 >= 30  --领先于大盘
--and  abs((max30-min30)/min30*100) between 5 and 10 --短期窄幅震荡
order by close;


select * from stockprofile limit 10;

--http://218.244.146.57/static/all.csv
http://218.244.146.57/static/calAll.csv
.headers on
.output low_pe_industry.txt
select code,name,industry,pe from stock_all a where a.pe between 10 and 50 order by industry,pe ;

create table stocks_low_pe as 
select * from stock_all a where a.pe between 10 and 50 order by industry,pe ;
