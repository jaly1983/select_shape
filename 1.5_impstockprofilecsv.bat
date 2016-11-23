cd c:/jaly/squotes1
rem wget -t 10 -T 10 -O stock_all.csv "http://218.244.146.57/static/all.csv"
iconv.exe -f gbk -t utf-8   stock_all.csv >  stock_all_utf_8.csv
sqlite3 c:/jaly/result/stocks.db < c:/jaly/result/stock_all.sql

pause
