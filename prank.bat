@echo off
title Your Files Have Been Encrypted!
color 0C

:: Hide the cursor for extra effect
echo off
echo Files Encrypted!
echo.
echo Your files have been encrypted! You have 4 minutes to comply.
echo Failure to pay will result in PERMANENT data loss.
echo Send $100 in Bitcoin to this address: [Fake-BTC-Address]
echo.
echo Timer is starting now...
timeout /t 3 >nul
cls

:: Timer countdown (4 minutes)
set /a mins=3
set /a secs=60

:start_countdown
cls
echo *******************************
echo.  
echo WARNING: YOUR FILES ARE LOCKED!
echo.  
echo TIME REMAINING: %mins% minutes %secs% seconds
echo.
echo *******************************
:: Reduce the time
set /a secs=%secs%-1

:: Flashing text when time is almost up
if %mins%==0 if %secs% lss 20 color 0E

:: Play a beeping sound when 1 minute left
if %mins%==1 if %secs%==00 echo ^G

:: Adjust time
if %secs%==0 (
    set /a mins=%mins%-1
    set /a secs=59
)

if %mins% geq 0 (
    timeout /t 1 >nul
    goto start_countdown
)

:: After countdown ends
cls
color 0C
echo *******************************
echo.  
echo TOO LATE! Your files are gone forever...
echo.
echo *******************************
timeout /t 5 >nul
cls
echo Just kidding! This is a prank.
echo Your files are safe. Have a nice day! :)
pause
exit
