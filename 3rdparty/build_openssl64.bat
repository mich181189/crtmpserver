REM change paths to NASM,install dir as needed,then run this from a 64-bit VC command prompt.

cd openssl
perl configure VC-WIN64A --prefix=s:\dev\crtmpserver\3rdparty\openssl_build_win64
call ms\do_win64a
REM clean the build
nmake -f ms\ntdll.mak clean
nmake -f ms\ntdll.mak
nmake -f ms\ntdll.mak install