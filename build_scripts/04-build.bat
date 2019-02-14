set PROJECTS=c:\projects
set BUILD_DEPS=%PROJECTS%\build_deps
set PATH=%BUILD_DEPS%;c:\python27;%PATH%

gyp -D OS=win --depth=. --format ninja libtgvoip.gyp
gyp -D OS=win --depth=. --format msvs-ninja libtgvoip.gyp
ninja -C out/Release
