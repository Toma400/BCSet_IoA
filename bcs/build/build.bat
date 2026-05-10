@echo off
:: TODO: build folder should also have .zipper eventually

cd..
cd..
nim c bcset.nim
rcedit-x64 "BCSet.exe" --set-icon "bcs/assets/bcs.ico"
set RETVAL_BCS=%ERRORLEVEL%

: if return values is 0, prompts successful compilation message
if %RETVAL_BCS% LSS 1 (
    echo Compilation successful!
) else (
    echo Compilation failed
)
pause