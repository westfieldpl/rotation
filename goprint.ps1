cd C:\Users\User\Desktop

Start-BitsTransfer -Source "https://download.firedaemon.com/FireDaemon-OpenSSL/FireDaemon-OpenSSL-x64-3.4.0.exe" -Destination "$env:TEMP\openssl.exe"

& "$env:TEMP\openssl.exe" /exenoui /exelog fdopenssl3.log /qn /norestart REBOOT=ReallySuppress APPDIR="C:\Program Files\FireDaemon OpenSSL 3" ADJUSTSYSTEMPATHENV=yes

Start-BitsTransfer -Source "https://avrogrstorage.blob.core.windows.net/goprint/printdrivers/GoPrintDriver_Win_24.07.110.msi" -Destination "$env:TEMP\goprint.msi"

& "$env:TEMP\goprint.msi"
