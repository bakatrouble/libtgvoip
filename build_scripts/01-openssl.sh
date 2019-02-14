#!/usr/bin/env bash

cd ..

if [ -f openssl/lib/Win32/static/Release/libssl.lib ]; then
    echo "OpenSSL is already downloaded"
else
    echo "Downloading OpenSSL..."
    curl -fsS https://drop.bakatrouble.pw/_/openssl.tar.gz -o openssl.tar.gz
    tar -xf openssl.tar.gz
fi
