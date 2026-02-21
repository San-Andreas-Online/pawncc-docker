@echo off

REM Run the command passed to the entrypoint
if "%*"=="" (
    echo.
    echo No command provided. You must provide a command to compile with pawncc. For example:
    echo.
    echo pawncc.exe gamemode.pwn -D./ -O2 "-;+" "-(+" -d3 -i../include
) else (
    echo Compiling with command: %*
    prompt $G
    @echo on
    call %*
)

exit /b %ERRORLEVEL%
