@echo off
cd /d %~dp0
bin\mongo %MONGO_TOILET_URL% -u %MONGO_TOILET_USER% -p %MONGO_TOILET_PASSWORD%
pause
