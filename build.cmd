@ECHO OFF
REM Build order: UICC, RC, FASM
SET PATH="C:\Program Files (x86)\Windows Kits\8.0\bin\x86";%PATH%
cd Res
uicc.exe ribbon.xml ribbon.bml /header:ribbon.h /res:ribbon.rc /name:FASM
ECHO.
rc /i "C:\Program Files (x86)\Windows Kits\8.0\Include\shared" /i "C:\Program Files (x86)\Windows Kits\8.0\Include\um" /r /n main.rc
cd ..
..\..\FASM\FASM.exe main.fasm
pause