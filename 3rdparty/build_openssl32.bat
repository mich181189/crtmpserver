REM change paths to NASM,install dir as needed,then run this from a 32-bit VC command prompt.

cd openssl
set PATH=%PATH%;s:\tools\nasm-2.10.01
perl configure VC-WIN32 --prefix=s:\dev\crtmpserver\3rdparty\openssl_build_win32
call ms\do_nasm
nmake -f ms\ntdll.mak
nmake -f ms\ntdll.mak install