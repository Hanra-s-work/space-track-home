#!/bin/bash
emcc -I/usr/local/include -L /usr/local/lib -lsfml-audio-s -lsfml-system-s -lsfml-window-s -lsfml-network-s -lsfml-graphics-s -lcsfml-audio -lcsfml-system -lcsfml-window -lcsfml-network -lcsfml-graphics -s USE_SDL=2 -s USE_WEBGL2=1 -s FULL_ES3=1 -s WASM=1 -s ALLOW_MEMORY_GROWTH=1 -O3 -o output.html test.c
