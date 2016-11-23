set cdt=%date:~0,4%%date:~5,2%%date:~8,2%
mkdir %cdt%
sqlite3 stocks.db < gen_selected_stocks.sql
mv *.rst %cdt%
