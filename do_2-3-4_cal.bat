time /T
cd c:/jaly/result 
call 2_gen_stockmd_str.bat
time /T
cd c:/jaly/result 
call 3_imp_stockmdcsv.bat
time /T
call 4_gen_selected_stocks.bat
time /T
pause
