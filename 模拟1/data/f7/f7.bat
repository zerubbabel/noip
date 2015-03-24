@echo off
if "%1"=="" goto loop
copy f7%1.in f7.in >nul
echo Problem Test
echo Data %1
time<enter
f7.exe
time<enter
fc f7.out f7%1.out
del f7.in
del f7.out
pause
goto end
:loop
for %%i in (1 2 3 4 5 6) do call %0 %%i
:end
