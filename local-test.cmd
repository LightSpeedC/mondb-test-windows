@echo off
cd /d %~dp0
bin\mongo localhost:27017/test
pause
