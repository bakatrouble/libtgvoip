cd ..

if exist "openssl/Release/lib/ssleay32.lib" goto ALREADY_BUILT

echo Building OpenSSL...
git clone https://github.com/openssl/openssl.git
cd openssl
git checkout OpenSSL_1_0_1-stable
perl Configure no-shared --prefix=%cd%\Release --openssldir=%cd%\Release VC-WIN32
call ms\do_ms.bat
nmake -f ms\nt.mak
nmake -f ms\nt.mak install
xcopy tmp32\lib.pdb Release\lib\
cd ..
goto FINISH

:ALREADY_BUILT
echo OpenSSL is already built

:FINISH
cd libtgvoip
