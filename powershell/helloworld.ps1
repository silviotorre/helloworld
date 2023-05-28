# name: helloworld.ps1
# ext: ps1
# powershell version: any
## Description: Hello World in Powershell
# the output is: Hello, World!
# this work using Write-Host. write-host is used to display output on the console
# alternative to write-host is echo
# or you can use the print function
# write-console is another alternative
# this is a simple hello world program in powershell, but it is not the simplest one
# the simplest version of hello world in powershell it is another one
# you can find it here: https://gist.github.com/silviotorre/994c70453c2290aefa63a9777a5514e0
# ok, stop talking, let's go to the code

Write-Host "Hello, World!"

# if opened by graphical interface, the output will be displayed in a new window and it will be closed after the execution
# so, if you want to see the output we need to add a pause
# the pause command is: Read-Host -Prompt "Press Enter to continue"
# so, the code will be:

Read-Host -Prompt "Press Enter to close..."

# comment the line above to see if you don't want wait for the user input
# if you want to run this code in a terminal, you can use the command: powershell -file helloworld.ps1
# or you can use the command in powershell console: .\helloworld.ps1
# or you can use the command in powershell console: & .\helloworld.ps1 .
# or you can use the command in powershell console: . .\helloworld.ps1
# if you add something an then you need to debug this code, you can use the switch "debug"
# like in example: powershell -file helloworld.ps1 -debug

# That's all folks!