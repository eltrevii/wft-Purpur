@echo off

:all
cls
for /f %%a in ('dir/b') do type %%a & ping localhost -n 2 >nul & cls
for %%e in ('%%a') do set filetimesize=%%~tza

:check
for %%i in (%%a) do if "!filetimesize!"=="%%~tza" goto check

goto all