


http://localhost:8000/en-US/app/search/search

^\w(?P<crdb_timestamp>\d+\s+\d+:\d+:\d+\.\d+)


%y:%m:%d %H:%M:%S.%6N

|makeresults|eval STATUS_TIME="181219 15:19:58.246092"|eval Time=strptime(STATUS_TIME,"%y%m%d %H:%M:%S.%6N")