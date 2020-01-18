#!/bin/bash
gcc -ljansson $(pkg-config --cflags --libs libcgroup) extrace.c  -o extrace
