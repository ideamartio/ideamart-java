@echo off
 setLocal EnableDelayedExpansion
 set CLASSPATH=hms.kite.samples.client.LbsReceiver
 for /R ./lib %%a in (*.jar) do (
   set CLASSPATH=%CLASSPATH%;%%a
 )
 echo %CLASSPATH%

java -Djava.ext.dirs=../lib %CLASSPATH%