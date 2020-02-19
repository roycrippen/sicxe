#!/bin/bash

# release build
if [ ! -d cmake-build-release ]; then
  mkdir cmake-build-release
fi
cd cmake-build-release || exit
cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build . --target all -- -j 4
cd ..

printf "\n"

# debug build
if [ ! -d cmake-build-debug ]; then
  mkdir cmake-build-debug
fi
cd cmake-build-debug || exit
cmake -DCMAKE_BUILD_TYPE=Debug ..
cmake --build . --target all -- -j 4
cmake --build . --target my_tests -- -j 4
cd ..
