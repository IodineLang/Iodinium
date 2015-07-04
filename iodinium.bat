@echo off
xcopy /y config.json iodine\bin\ >nul
xcopy /y src\iodinium.id iodine\bin\ >nul
xcopy /y src\webserver.id iodine\bin\modules\ >nul
cd iodine\bin
iodine.exe iodinium.id
if not errorlevel==0 pause >nul
cd ..\..\
del iodine\bin\confg.json >nul
del iodine\bin\iodinium.id >nul
del iodine\bin\modules\webserver.id >nul