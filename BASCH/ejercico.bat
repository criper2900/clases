@echo off
echo Limpieza de disco...
cleanmgr /sagerun:1
echo.
echo Desfragmentación del disco...
defrag c: -v
echo.
echo Borrado de archivos temporales...
del /q /s %temp%\*
echo.
echo Limpieza del registro...
regedit /s "C:\Windows\reglimpieza.reg"
echo.
echo Optimización de la memoria RAM...
echo Configurando perfil de rendimiento...
powercfg /setactive scheme_max
echo.
echo Limpieza de la caché del sistema...
net stop "dns client"
ipconfig /flushdns
net start "dns client"
echo.
echo Hecho.
pause
