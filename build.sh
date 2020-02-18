!/bin/bash
if [ ! -d cmake-build-release ]
then
  mkdir cmake-build-debug
fi
cd cmake-build-debug || exit

cmake -DCMAKE_BUILD_TYPE=Debug ..
cmake --build .
cmake --build . --target sicxe_tests -- -j 4

cd ..
