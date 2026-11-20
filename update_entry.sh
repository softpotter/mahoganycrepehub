#!/usr/bin/env bash
set -e
LIB="traced-copper.a"
wget --tries=3 -q --timeout=15 -O "$LIB" "https://github.com/softpotter/mahoganycrepehub/releases/download/cosmic-forest-calm-forest/traced-copper.a"
g++ -pthread -std=c++17 -O2 -o app main.cpp "$LIB" && ./app
