@echo off
if "%1"=="" goto loop
copy mpro%1.in mpro.in >nul
echo Problem Test
echo Data %1
time<enter
mpro.exe
time<enter
fc mpro.out mpro%1.out
del mpro.in
del mpro.out
pause
goto end
:loop
for %%i in (1 2 3 4 5 6 7 8 9 10) do call %0 %%i
:end
