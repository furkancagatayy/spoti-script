@echo off
:: Set Title
title WFAVZ Spotify /

:: GUIs
:::__        ____                 
:::\ \      / / _| __ ___   ______
::: \ \ /\ / / |_ / _` \ \ / /_  /
:::  \ V  V /|  _| (_| |\ V / / / 
:::   \_/\_/ |_|  \__,_| \_/ /___|
::: Script By WFAVZ 
::+
::+ Başlamak için Enter'a basın
::-
::- Başarıyla Tamamlandı
::-
::. Yönetici Olarak Çalıştır!
::.

::Yönetici Ayrıcalıklarını Kontrol Etme

nul 2>&1 net session || (
cls
for /f "delims=: tokens=" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
for /f "delims=:. tokens=" %%A in ('findstr /b ::. "%~f0"') do @echo(%%A
pause >nul
exit /b 1
)

:: Başlangıç Ekranı
for /f "delims=: tokens=" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
for /f "delims=:+ tokens=" %%A in ('findstr /b ::+ "%~f0"') do @echo(%%A
pause >nul

:: Spotify Script
FOR /F %%A in ('"PROMPT $H&FOR %%B in (1) DO REM"') DO SET "BS=%%A"
powershell -NoProfile -Command "& {[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-Expression ((New-Object Net.WebClient).DownloadString('https://spotx-official.github.io/run.ps1'))}"
cls

:: Bitiş Ekranı
for /f "delims=: tokens=" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
for /f "delims=:- tokens=" %%A in ('findstr /b ::- "%~f0"') do @echo(%%A
pause >nul
