cd cpp
if ! [ -d "build" ]; then
    mkdir build
fi
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j
./src/trace_gen ../../configs/trace_config_sample.json ../../traces-sample/trace
