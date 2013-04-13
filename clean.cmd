@ECHO OFF
cd Res
del ribbon.rc ribbon.h ribbon.bml main.res
cd ..
del /P main.exe
