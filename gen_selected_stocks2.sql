--�ķ���
--ѡ�ɼ�ѡ�Σ�ѡ�ض����Σ�ѡ����δ���Ƕ�������֮�Σ�
--ѡ�������ƽ�����֮��
--�ض����η�Ӧ��һ���ĵ�λ֮��ķ��ȹ�ϵ��
--��λȡ��Щ���أ����ߡ��ߵ͵㡢���̼� ����֮��ķ��ȹ�ϵ����


--�������� ����20 ��30�������� ������������
.output ����������25��30��������.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  abs((max60-min60)/min60*100) between 25 and 35  --�����ڴ���
--and  abs((max20-min20)/min30*100) between 5 and 10 --����խ����
order by close;

.output ���һ�������50��������.nrst
.headers on
select tdate,symbol,a.name,close,abs((max250-min250)/min250*100) fudu--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  abs((max250-min250)/min250*100) > 50   --�����ڴ���
order by fudu,close;

.output ���������խ����.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  abs((max60-min60)/min60*100) between 0 and 10
order by close;

.output ��������¸ߵ��µ���25%��35%֮��.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  abs((max60-close)/close*100) between 25 and 35
order by close;


--խ����10% ���߸���
.output ���߸���խ����.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  abs((close-sma250)/sma250*100) between 0 and 10
and  abs((max60-min60)/min60*100) between 20 and 30  --�����ڴ���
and  abs((max30-min30)/min30*100) between 5 and 10 --����խ����
order by close;


--���߸���
.output �������ϸ���0~5.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  abs((close-sma250)/sma250*100) between 0 and 5
order by close;

.output �������ϸ���5~10.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  abs((close-sma250)/sma250*100) between 5 and 10
order by close;

.output �������ϸ���10~15.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  abs((close-sma250)/sma250*100) between 10 and 15
order by close;

.output �������ϸ���15~20.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  abs((close-sma250)/sma250*100) between 15 and 20
order by close;

.output �������ϸ���20~25.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  abs((close-sma250)/sma250*100) between 10 and 25
order by close;

.output �������ϸ���25~30.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  abs((close-sma250)/sma250*100) between 25 and 30
order by close;

.output �������ϸ���30~40.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  abs((close-sma250)/sma250*100) between 30 and 40
order by close;

.output �������ϸ���40~50.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  abs((close-sma250)/sma250*100) between 40 and 50
order by close;


--��ʮ�վ��߸���
.output ��������-60���߸���0~5.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
--and  abs((close-sma250)/sma250*100) between 0 and 5
and  abs((close-sma60)/sma60*100) between 0 and 5
order by close;

--��ʮ�վ��߸���
.output ��������-30�վ����߸���0~5.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
--and  abs((close-sma250)/sma250*100) between 0 and 5
and  abs((close-sma30)/sma30*100) between 0 and 5
order by close;

--��ʮ�վ��߸���
.output ��������-20�վ����߸���0~5.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
--and  abs((close-sma250)/sma250*100) between 0 and 5
and  abs((close-sma20)/sma20*100) between 0 and 5
order by close;

--ʮ�վ��߸���
.output ��������-10�վ����߸���0~5.nrst
.headers on
select tdate,symbol,a.name,close,sma10,sma20--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
--and  abs((close-sma250)/sma250*100) between 0 and 5
and  abs((close-sma10)/sma10*100) between 0 and 5
order by close;


--20�ո�������20����250֮��25~30�������ң������������ķ��
--(300702���ۻ���)
.output ��������-20�վ��߸���0~5-20����250�վ���25~30��������.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
--and  abs((close-sma250)/sma250*100) between 0 and 5
and  (close-sma20)/sma20*100 between 0 and 5
and  abs((sma20-sma250)/sma250*100) between 25 and 35
order by close;



--20�ո�������20����250֮��25~30�������ң������������ķ��
--(300702���ۻ���)
.output ��������-20�վ��߸���0~5-20����250�վ���15~25��������.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
--and  abs((close-sma250)/sma250*100) between 0 and 5
and  (close-sma20)/sma20*100 between 0 and 5
and  abs((sma20-sma250)/sma250*100) between 15 and 25
order by close;


--20�ո�������20����250֮��25~30�������ң������������ķ��
--(300702���ۻ���)
.output ��������-20�վ��߸���0~5-20����250�վ���5~15��������.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
--and  abs((close-sma250)/sma250*100) between 0 and 5
and  (close-sma20)/sma20*100 between 0 and 2
and  abs((sma20-sma250)/sma250*100) between 5 and 15
order by close;


--���е�10�ո���
--���е�5���߸���
--���е�20���߸���
--���е�30���߸���
--���е�60���߸���
.output ���߸���-��������-10�վ��߸���0~1.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  (close-sma10)/sma10*100 between 0 and 1
order by close;

.output ���߸���-��������-20�վ��߸���-0.5~1.nrst
.headers on
select tdate,symbol,a.name,close,sma10,round(sma20,2),round(sma30,2),round(sma60,2),round(sma250,2)--,sma250,max60,min60,abs((max60-min60)/min60*100)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  (close-sma20)/sma20*100 between -0.5 and 1
order by close;

.output ���߸���-��������-30�վ��߸���0~1.nrst
.headers on
select tdate,symbol,a.name,close,round(sma30,2)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  (close-sma30)/sma30*100 between 0 and 1
order by close;

.output ���߸���-��������-60�վ��߸���0~1.nrst
.headers on
select tdate,symbol,a.name,close,round(sma60,2)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and  (close-sma60)/sma60*100 between 0 and 1
order by close;


.output ���߸���-��������-5%~15%���ȴ���-60�վ��߸���0~1.nrst
.headers on
select tdate,symbol,a.name,close,round(sma60,2)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and   (close-sma250)/sma250*100 between 5 and 15
and  (close-sma60)/sma60*100 between 0 and 1
order by close;


.output ��֧��.nrst
.headers on
select tdate,symbol,a.name,close,round(( max60 - close)/close*100 ,2)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and (close-sma250)/sma250*100 between 0 and 5
--and ( max60 - close)/close*100 between 25 and 30
and (close - min250)/min250*100 > 50
order by close;



.output ǿ֧��.nrst
.headers on
select tdate,symbol,a.name,close,round(sma60,2)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and (close-sma250)/sma250*100 between 5 and 15
and (max60-min60)/min60*100 between 5 and 10
order by close;


.output ��ͻ��.nrst
.headers on
select tdate,symbol,a.name,close,round(sma60,2)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and (max30 - min30 )/min30*100 between 5 and 10
and (close-sma250)/sma250*100 between 0 and 5
order by close;

.output  ǿͻ��.nrst
.headers on
select tdate,symbol,a.name,close,round(sma60,2)
from stockmd m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and (max30 - min30 )/min30*100 between 10 and 30
and  (close-sma250)/sma250*100 between 0 and 5
order by close;

.output  ����;��-��30����.nrst
.headers on
select tdate,symbol,a.name,close
from stockmd  m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and (max10-sma250)/sma250*100 between 5 and 25
and (close-sma30)/sma30*100 between -0.2 and 1
order by close;

.output  ����;��-��20����.nrst
.headers on
select tdate,symbol,a.name,close
from stockmd  m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and (max10-sma250)/sma250*100 between 5 and 25
and (close-sma20)/sma20*100 between -0.2 and 1
order by close;


.output  ����;��-��10����.nrst
.headers on
select tdate,symbol,a.name,close
from stockmd  m join stock_all a on a.code=substr(m.symbol ,1,6)  where 1=1
and close > sma250
and (max10-sma250)/sma250*100 between 5 and 25
and (close-sma10)/sma10*100 between -0.2 and 1
order by close;
