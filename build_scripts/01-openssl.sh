#!/usr/bin/env bash

echo "Downloading openssl..."
curl -fsS https://www.nuget.org/api/v2/package/openssl-vc141-static-x86_64/1.1.0 -o openssl.zip
unzip openssl.zip 'build/native/*' -d openssl && mv openssl/build/native/* openssl && rm -rf openssl/build
