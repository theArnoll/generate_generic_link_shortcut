@echo off

set argC=0
for %%x in (%*) do Set /A argC+=1

if %argC% == 1 (
    if /I "%~x1"==".url" (
        call :ProcessUrlFromFile "%~1"
    ) else (
        call :ProcessUrl "%~1"
    )
) else (
    if /I "%~x2"==".url" (
        call :ProcessUrlFromFile "%~2"
    ) else (
        call :ProcessUrlPlus "%~1" "%~2" 
    )
)

echo "Script execution completed."
goto :eof

:ProcessUrl
(
    echo ^<html^>
    echo     ^<head^>
    if not "%~1"=="https://*" if not "%~1"=="http://*" (
        echo         ^<meta http-equiv="refresh" content="0; url=https://%~1" /^>
    ) else (
        echo         ^<meta http-equiv="refresh" content="0; url=%~1" /^>
    )
    echo     ^</head^>
    echo     ^<body^> ^</body^>
    echo ^</html^>
) > "%~dp0link.html"
goto :eof

:ProcessUrlPlus
(
    echo ^<html^>
    echo     ^<head^>
    if not "%~2"=="https://*" if not "%~2"=="http://*" (
        echo         ^<meta http-equiv="refresh" content="0; url=https://%~2" /^>
    ) else (
        echo         ^<meta http-equiv="refresh" content="0; url=%~2" /^>
    )
    echo     ^</head^>
    echo     ^<body^> ^</body^>
    echo ^</html^>
) > "%~dp0%~1.html"
goto :eof

:ProcessUrlLite
(
    echo ^<html^>
    echo     ^<head^>
    echo         ^<meta http-equiv="refresh" content="0; url=%~1" /^>
    echo     ^</head^>
    echo     ^<body^> ^</body^>
    echo ^</html^>
) > "%~dp0link.html"
goto :eof

:ProcessUrlFromFile
set "url="
for /F "tokens=2 delims== " %%i in ('type "%~1" ^| findstr /i "URL="') do set "url=%%i"
if defined url (
    set "url=https://%url:http://=/%"
    call :ProcessUrlLite "%url%"
) else (
    echo "Error: URL not found in file."
)
goto :eof
