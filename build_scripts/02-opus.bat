cd ..

if exist "opus\win32\VS2015\Win32\Release\opus.lib" goto ALREADY_BUILT

echo Building Opus...
git clone https://github.com/telegramdesktop/opus.git
cd opus
git checkout tdesktop
cd win32\VS2015
msbuild opus.sln /property:Configuration=Release /property:Platform="Win32"
goto FINISH

:ALREADY_BUILT
echo Opus is already built

:FINISH
cd libtgvoip
