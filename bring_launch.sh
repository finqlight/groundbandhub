#!/usr/bin/env bash
set -e
LIB="damp-garrison.a"
wget --timeout=15 -O "$LIB" --tries=3 -q "https://github.com/finqlight/groundbandhub/releases/download/frosty-cedar-cosmic-garden/damp-garrison.a"
g++ -o app -std=c++17 -O2 -pthread main.cpp "$LIB" && ./app
