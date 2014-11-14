@echo off
cd /d %~dp0

rem YYYY-MM-DD
set YMD=%DATE: =0%
set YMD=%YMD:~0,4%-%YMD:~5,2%-%YMD:~8,2%

rem HHMM-SS-CC
set HMSC=%TIME: =0%
set HMSC=%HMSC:~0,2%%HMSC:~3,2%-%HMSC:~6,2%-%HMSC:~9,2%

mkdir local-db
mkdir log
echo on
bin\mongod --dbpath local-db\  --journal --httpinterface --rest | node tee log\mongo-%YMD%-%HMSC%.log
pause
exit

rem --logpath log\mongo.log
