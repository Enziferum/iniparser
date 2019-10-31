#!/usr/bin/env bash

g++ INIReaderExample.src ../src/INIReader.src ../ini.c -o INIReaderExample
./INIReaderExample > cpptest.txt
rm INIReaderExample
