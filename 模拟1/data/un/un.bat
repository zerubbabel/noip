@echo off
if "%1"=="" goto loop
copy un%1.in un.in >nul
echo Problem Test
echo Data %1
time<enter
un.exe
time<enter
fc un.out un%1.out
del un.in
del un.out
pause
goto end
:loop
for %%i in (1 2 3 4 5) do call %0 %%i
:end
