set PROJECTS=c:\projects
set BUILD_DEPS=%PROJECTS%\build_deps
set PATH=%BUILD_DEPS%;%PATH%
set PYTHON=c:\python27\python.exe

doskey gyp_py = "%PYTHON% %BUILD_DEPS%\gyp_main.py"

gyp_py -D OS=win --depth=. --format ninja libtgvoip.gyp
gyp_py -D OS=win --depth=. --format msvs-ninja libtgvoip.gyp
ninja -C out/Release
