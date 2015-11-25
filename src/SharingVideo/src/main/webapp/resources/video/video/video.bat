@echo off
:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    exit /B
:gotAdmin
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------"

ffmpeg.exe
ffmpeg -i "E:\SharingVideo\src\main\webapp\resources\video\video\video.mp4" -c:v libx264 -r 24 -g 48 -an "E:\SharingVideo\src\main\webapp\resources\video\video\videoan_input.mp4"

ffmpeg.exe
ffmpeg -i "E:\SharingVideo\src\main\webapp\resources\video\video\video.mp4" -vn -acodec copy "E:\SharingVideo\src\main\webapp\resources\video\video\videoaudio.mp4"

MP4Box.exe
MP4Box -dash 10000 -profile onDemand -rap -out "E:\SharingVideo\src\main\webapp\resources\video\video\video_output_chrffie.mpd" "E:\SharingVideo\src\main\webapp\resources\video\video\videoan_input.mp4#video:id=video_3Mb" "E:\SharingVideo\src\main\webapp\resources\video\video\videoaudio.mp4#audio:id=audio"

MP4Box.exe
MP4Box -dash 10000 -dash-profile live -segment-name output-seg -rap -bs-switching no "E:\SharingVideo\src\main\webapp\resources\video\video\video.mp4" -out "E:\SharingVideo\src\main\webapp\resources\video\video\video_output.mpd"