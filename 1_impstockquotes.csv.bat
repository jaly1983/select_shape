cd c:/jaly/squotes2/
mv c:/jaly/result/stocks.db c:/jaly/result/stocks.db.bak
sqlite3 c:/jaly/result/stocks.db < c:/jaly/result/load-csv-sql.sql

