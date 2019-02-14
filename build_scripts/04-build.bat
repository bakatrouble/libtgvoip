if "%PLATFORM%"=="x86" (
    set OPUS_PLATFORM=Win32
) else (
    set OPUS_PLATFORM=x64
    set GYP_DEFINES=target_arch=x64
)

set BUILD_DEPS=c:\projects\build_deps
set PATH=%BUILD_DEPS%;%PATH%

c:\python27\python.exe %BUILD_DEPS%\gyp_main.py -D OS=win -D opus_platform=%OPUS_PLATFORM% --depth=. --format ninja libtgvoip.gyp
c:\python27\python.exe %BUILD_DEPS%\gyp_main.py -D OS=win -D opus_platform=%OPUS_PLATFORM% --depth=. --format msvs-ninja libtgvoip.gyp
ninja -C out/Release
