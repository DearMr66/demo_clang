#!/bin/bash

filename="$1"
echo ">>>> Checking rule A2-5-1 using clang '-Wtrigraphs' (page 38 GUIDE AUTOSAR C++14)"
echo
echo ">>>> Usage: clang -std=c++14 -Wtrigraphs -fsyntax-only $1"
echo
clang -std=c++14 -Wtrigraphs -fsyntax-only "$1"

# compile using: source ./compile.sh trigraphe_test.cpp
