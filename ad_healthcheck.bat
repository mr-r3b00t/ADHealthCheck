cd C:\Users\Administrator\Desktop\HealthCheck

Netdom query FSMO > fsmo.txt

dcdiag.exe /e /c /v /f:dcdiag.log

dcdiag.exe /TEST:RidManager /v /f:ridpool.log | find /i "Available RID Pool for the Domain"

repadmin /failcache > failcache.log
repadmin / istg > istg.log
repadmin /latency > latency.log
repadmin /queue > queue.log
repadmin /showconn > showconn.log
repadmin /showrepl > showrepl.log
repadmin /replsummary > replsummary.log

dnslint /d vun.lab.local /s 10.0.0.10 /r dnslint

gpotool / domain:FQDN /checkacl /verbose > gpotool.log

w32tm /monitor > w32tm.log
