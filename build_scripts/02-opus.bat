cd ..

if "%PLATFORM%"=="x86" (
    set BUILD_PLATFORM=Win32
    set PREFIX=Release32
) else (
    set BUILD_PLATFORM=Win64
    set PREFIX=Release64
)

if exist "opus\win32\VS2015\Win32\%PREFIX%\opus.lib" goto ALREADY_BUILT

echo Building Opus...
git clone https://github.com/telegramdesktop/opus.git
cd opus
git checkout tdesktop
cd win32\VS2015
msbuild opus.sln /property:Configuration=Release /property:Platform="%BUILD_PLATFORM%" /property:OutputPath="%PREFIX%"
cd ..\..\..
goto FINISH

:ALREADY_BUILT
echo Opus is already built

:FINISH
cd libtgvoip
