#!/bin/bash
wasicc test.c -I/usr/local/include -L /usr/local/lib -lsfml-audio-s -lsfml-system-s -lsfml-window-s -lsfml-network-s -lsfml-graphics-s -lcsfml-audio -lcsfml-system -lcsfml-window -lcsfml-network -lcsfml-graphics -o output
