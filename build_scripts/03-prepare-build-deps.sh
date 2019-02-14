#!/usr/bin/env bash

cd ..
mkdir -p build_deps

if [ -f build_deps/ninja.exe ]; then
    echo "Ninja is already downloaded"
else
    echo "Downloading Ninja..."
    curl -fsSL https://github.com/ninja-build/ninja/releases/download/v1.7.2/ninja-win.zip -o ninja.zip
    7z x ninja.zip -obuild_deps
fi

if [ -f build_deps/gyp_main.py ]; then
    echo "Gyp is already downloaded"
else
    echo "Downloading gyp..."
    git clone https://chromium.googlesource.com/external/gyp _tmp
    mv _tmp/.git build_deps
    cd build_deps
    git reset --hard
    git checkout a478c1ab51
    cd ..
fi

cd libtgvoip
