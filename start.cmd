@echo off
title Purpur
for /f %%i in ('dir /b "..\PLUGINS A ESTA CARPETA"') do for /f %%j in ('dir /b /aD') do move "..\PLUGINS A ESTA CARPETA\%%i" "%%j\plugins"
for /f %%i in ('dir /b "..\MODS A ESTA CARPETA"') do for /f %%j in ('dir /b /aD') do move "..\MODS A ESTA CARPETA\%%i" "%%j\mods"
cd wft-Purpur
cls
curl -k "https://api.purpurmc.org/v2/purpur/1.18.1/latest/download" -L -o purpur.jar --progress-bar
cls
for %%i in (*.jar) do java -Xmx10G -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M -Dlog4j.configurationFile=log4j2.xml --add-modules=jdk.incubator.vector -jar "%%i" nogui
echo.

title auto comiter xd
<nul set /p "=comiting..."
git add * >nul
git commit -a -m "auto comit lolz" >nul
git push >nul
echo OK!
echo.
cd..
timeout 3
exit /b