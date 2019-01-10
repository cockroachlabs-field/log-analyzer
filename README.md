


http://localhost:8000/en-US/app/search/search

 http://localhost:8000/en-us/debug/refresh

^\w(?P<crdb_timestamp>\d+\s+\d+:\d+:\d+\.\d+)


%y:%m:%d %H:%M:%S.%6N


TIME_FORMAT matching timestamps outside the acceptable time window

|makeresults|eval STATUS_TIME="181219 15:19:58.246092"|eval Time=strptime(STATUS_TIME,"%y%m%d %H:%M:%S.%6N")