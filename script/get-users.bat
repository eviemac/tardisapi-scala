@echo off

rem Usage: get-users

setlocal

set URLPREFIX=http://localhost:9000

rem set HTTPHEADERS=-LH "Accept: text/html"
set HTTPHEADERS=-LH "Accept: application/json"

curl %HTTPHEADERS% --get "%URLPREFIX%/users"

endlocal