@echo off
setlocal enabledelayedexpansion

set "message=Hello, World!"

rem Loop through each character of the message
for /L %%i in (0,1,12) do (
  set /A charIndex=%%i
  
  rem Extract the character at the current index
  set "char=!message:~%%i,1!"
  
  rem Check if the character is an exclamation mark
  if "!char!"=="!" (
    set "char=^!"
  )
  
  rem Print the character
  if "!char!"==" " (
    echo:
  ) else (
    echo !char!
  )
  
  rem Pause for one second
  timeout /T 1 /nobreak >nul
)

rem Wait for user input before closing the window
pause

:: Unit Test
rem Save the expected output in a variable
set "expectedOutput=H e l l o ,  W o r l d ^!"

rem Save the actual output in a variable
set actualOutput=
for /L %%i in (0,1,12) do (
  set /A charIndex=%%i
  
  rem Extract the character at the current index
  set "char=!message:~%%i,1!"
  
  rem Check if the character is an exclamation mark
  if "!char!"=="!" (
    set "char=^!"
  )
  
  if "!char!"==" " (
    set "actualOutput=!actualOutput! "
  ) else (
    set "actualOutput=!actualOutput! !char!"
  )
)

rem Trim leading space
set "actualOutput=!actualOutput:~1!"

rem Compare the expected output with the actual output
if "!actualOutput!"=="!expectedOutput!" (
  echo Unit Test Passed
  echo Expected Output: !expectedOutput!
  echo Actual Output:   !actualOutput!
) else (
  echo Unit Test Failed
  echo Expected Output: !expectedOutput!
  echo Actual Output:   !actualOutput!
)
