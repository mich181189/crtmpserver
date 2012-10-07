 IF [%1]==[] (
set version=0.0.0.0
) ELSE (
set version=%1
)

IF EXIST "C:\Program Files (x86)\Windows Installer XML v3.6\bin" (
set WIXPATH="C:\Program Files (x86)\Windows Installer XML v3.6\bin"
) ELSE (
set WIXPATH="C:\Program Files (x86)\WiX Toolset v3.6\bin"
)
 
 %WIXPATH%\candle.exe crtmpserver.wxs -out "crtmpserver86.wixobj" -dPlatform=x86 -dVersion="%version%" -ext WixUIExtension 
 %WIXPATH%\light.exe -nologo crtmpserver86.wixobj -out "crtmpserver x86 %version%.msi"  -ext WixUIExtension
 
 %WIXPATH%\candle.exe crtmpserver.wxs -out "crtmpserver64.wixobj" -dPlatform=x64  -dVersion="%version%" -ext WixUIExtension 
 %WIXPATH%\light.exe -nologo crtmpserver64.wixobj -out "crtmpserver x64 %version%.msi"  -ext WixUIExtension