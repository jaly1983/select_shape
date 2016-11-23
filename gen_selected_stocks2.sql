--心法：
--选股即选形，选特定的形，选初涨未大涨而将大涨之形，
--选待涨蓄势将大涨之形
--特定的形反应了一定的点位之间的幅度关系。
--点位取哪些点呢？均线、高低点、收盘价 三者之间的幅度关系分析


--两三个月 暴涨20 到30个点以上 后续还将暴涨
.output 最近三月振幅25到30个点以上.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  abs((max60-min60)/min60*100) between 25 and 35  --领先于大盘
--and  abs((max20-min20)/min30*100) between 5 and 10 --短期窄幅震荡
order by close;

.output 最近一年振幅超50个点以上.nrst
.headers on
select tdate,symbol,a.name,close,abs((max250-min250)/min250*100) fudu--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  abs((max250-min250)/min250*100) > 50   --领先于大盘
order by fudu,close;

.output 最近三个月窄幅震荡.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  abs((max60-min60)/min60*100) between 0 and 10
order by close;

.output 相对三个月高点下跌超25%到35%之间.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  abs((max60-close)/close*100) between 25 and 35
order by close;


--窄幅震荡10% 年线附近
.output 年线附近窄幅震荡.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  abs((close-sma250)/sma250*100) between 0 and 10
and  abs((max60-min60)/min60*100) between 20 and 30  --领先于大盘
and  abs((max30-min30)/min30*100) between 5 and 10 --短期窄幅震荡
order by close;


--年线附近
.output 年线以上附近0~5.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  abs((close-sma250)/sma250*100) between 0 and 5
order by close;

.output 年线以上附近5~10.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  abs((close-sma250)/sma250*100) between 5 and 10
order by close;

.output 年线以上附近10~15.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  abs((close-sma250)/sma250*100) between 10 and 15
order by close;

.output 年线以上附近15~20.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  abs((close-sma250)/sma250*100) between 15 and 20
order by close;

.output 年线以上附近20~25.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  abs((close-sma250)/sma250*100) between 10 and 25
order by close;

.output 年线以上附近25~30.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  abs((close-sma250)/sma250*100) between 25 and 30
order by close;

.output 年线以上附近30~40.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  abs((close-sma250)/sma250*100) between 30 and 40
order by close;

.output 年线以上附近40~50.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  abs((close-sma250)/sma250*100) between 40 and 50
order by close;


--六十日均线附近
.output 年线以上-60日线附近0~5.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
--and  abs((close-sma250)/sma250*100) between 0 and 5
and  abs((close-sma60)/sma60*100) between 0 and 5
order by close;

--三十日均线附近
.output 年线以上-30日均线线附近0~5.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
--and  abs((close-sma250)/sma250*100) between 0 and 5
and  abs((close-sma30)/sma30*100) between 0 and 5
order by close;

--二十日均线附近
.output 年线以上-20日均线线附近0~5.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
--and  abs((close-sma250)/sma250*100) between 0 and 5
and  abs((close-sma20)/sma20*100) between 0 and 5
order by close;

--十日均线附近
.output 年线以上-10日均线线附近0~5.nrst
.headers on
select tdate,symbol,a.name,close,sma10,sma20--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
--and  abs((close-sma250)/sma250*100) between 0 and 5
and  abs((close-sma10)/sma10*100) between 0 and 5
order by close;


--20日附近，且20日在250之上25~30个点左右，即将进入最后的疯狂
--(300702三聚环保)
.output 年线以上-20日均线附近0~5-20日离250日均线25~30个点左右.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
--and  abs((close-sma250)/sma250*100) between 0 and 5
and  (close-sma20)/sma20*100 between 0 and 5
and  abs((sma20-sma250)/sma250*100) between 25 and 35
order by close;



--20日附近，且20日在250之上25~30个点左右，即将进入最后的疯狂
--(300702三聚环保)
.output 年线以上-20日均线附近0~5-20日离250日均线15~25个点左右.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
--and  abs((close-sma250)/sma250*100) between 0 and 5
and  (close-sma20)/sma20*100 between 0 and 5
and  abs((sma20-sma250)/sma250*100) between 15 and 25
order by close;


--20日附近，且20日在250之上25~30个点左右，即将进入最后的疯狂
--(300702三聚环保)
.output 年线以上-20日均线附近0~5-20日离250日均线5~15个点左右.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
--and  abs((close-sma250)/sma250*100) between 0 and 5
and  (close-sma20)/sma20*100 between 0 and 2
and  abs((sma20-sma250)/sma250*100) between 5 and 15
order by close;


--运行到10日附近
--运行到5日线附近
--运行到20日线附近
--运行到30日线附近
--运行到60日线附近
.output 均线附近-年线以上-10日均线附近0~1.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  (close-sma10)/sma10*100 between 0 and 1
order by close;

.output 均线附近-年线以上-20日均线附近-0.5~1.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  (close-sma20)/sma20*100 between -0.5 and 1
order by close;

.output 均线附近-年线以上-30日均线附近0~1.nrst
.headers on
select tdate,symbol,a.name,close,round(sma30,2)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  (close-sma30)/sma30*100 between 0 and 1
order by close;

.output 均线附近-年线以上-60日均线附近0~1.nrst
.headers on
select tdate,symbol,a.name,close,round(sma60,2)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  (close-sma60)/sma60*100 between 0 and 1
order by close;


.output 均线附近-年线以上-5%~15%领先大盘-60日均线附近0~1.nrst
.headers on
select tdate,symbol,a.name,close,round(sma60,2)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and   (close-sma250)/sma250*100 between 5 and 15
and  (close-sma60)/sma60*100 between 0 and 1
order by close;


.output 弱支撑.nrst
.headers on
select tdate,symbol,a.name,close,round(( max60 - close)/close*100 ,2)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and (close-sma250)/sma250*100 between 0 and 5
--and ( max60 - close)/close*100 between 25 and 30
and (close - min250)/min250*100 > 50
order by close;



.output 强支撑.nrst
.headers on
select tdate,symbol,a.name,close,round(sma60,2)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and (close-sma250)/sma250*100 between 5 and 15
and (max60-min60)/min60*100 between 5 and 10
order by close;


.output 弱突破.nrst
.headers on
select tdate,symbol,a.name,close,round(sma60,2)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and (max30 - min30 )/min30*100 between 5 and 10
and (close-sma250)/sma250*100 between 0 and 5
order by close;

.output  强突破.nrst
.headers on
select tdate,symbol,a.name,close,round(sma60,2)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and (max30 - min30 )/min30*100 between 10 and 30
and  (close-sma250)/sma250*100 between 0 and 5
order by close;

.output  上升途中-靠30均线.nrst
.headers on
select tdate,symbol,a.name,close
from stockmd  m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and (max10-sma250)/sma250*100 between 5 and 25
and (close-sma30)/sma30*100 between -0.2 and 1
order by close;

.output  上升途中-靠20均线.nrst
.headers on
select tdate,symbol,a.name,close
from stockmd  m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and (max10-sma250)/sma250*100 between 5 and 25
and (close-sma20)/sma20*100 between -0.2 and 1
order by close;


.output  上升途中-靠10均线.nrst
.headers on
select tdate,symbol,a.name,close
from stockmd  m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and (max10-sma250)/sma250*100 between 5 and 25
and (close-sma10)/sma10*100 between -0.2 and 1
order by close;
