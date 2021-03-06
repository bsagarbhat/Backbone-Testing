@echo off

REM Windows script for starting JSTD server
REM
REM Requirements:
REM - Java (http://www.java.com)

set BASE_DIR=%~dp0
set PORT=9876

echo Starting JsTestDriver Server (http://code.google.com/p/js-test-driver/)
echo Please open the following url and capture one or more browsers:
echo http://localhost:%PORT%/

java -jar "%BASE_DIR%\..\..\test\jsTestDriver\jsTestDriver-patched-1.3.4.b.jar" ^
     --port %PORT% ^
     --browserTimeout 20000 ^
     --config "%BASE_DIR%\..\..\test\js\jasmine\config\jsTestDriver_jasmine.conf" ^
     --basePath "%BASE_DIR%\..\.."
pause