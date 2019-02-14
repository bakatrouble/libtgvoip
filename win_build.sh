#!/usr/bin/env bash

curl -fsS https://www.nuget.org/api/v2/package/openssl-vc141-static-x86_64/1.1.0 -o openssl.zip
unzip openssl.zip 'build/native/*' -d openssl && mv openssl/build/native/* openssl && rm -rf openssl/build

echo "Building Opus..."
# wget -nc https://archive.mozilla.org/pub/opus/opus-1.3.tar.gz
git clone https://github.com/telegramdesktop/opus.git
cd opus
git checkout tdesktop
cd win32/VS2015
msbuild opus.sln /property:Configuration=Release /property:Platform="Win32"
