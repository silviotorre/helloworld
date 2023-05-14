@echo off
setlocal enabledelayedexpansion

set message=Hello, World!

rem Loop through each character of the message
for /L %%i in (0,1,11) do (
  set /A charIndex=%%i
  
  rem Extract the character at the current index
  set "char=!message:~%charIndex%,1!"
  
  rem Print the character
  echo !char!
  
  rem Pause for one second
  timeout /T 1 /nobreak >nul
)

rem Wait for user input before closing the window
pause
