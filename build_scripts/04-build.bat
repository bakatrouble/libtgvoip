set BUILD_DEPS=c:\projects\build_deps
set PATH=%BUILD_DEPS%;%PATH%

c:\python27\python.exe %BUILD_DEPS%\gyp_main.py -D OS=win --depth=. --format ninja libtgvoip.gyp
c:\python27\python.exe %BUILD_DEPS%\gyp_main.py -D OS=win --depth=. --format msvs-ninja libtgvoip.gyp
ninja -C out/Release
