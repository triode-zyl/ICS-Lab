cd cpp
if ! [ -d "build" ]; then
    mkdir build
fi
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j

for i in {1..16} ; do
	echo Test case \#$i
	./src/sim_cpp ../../configs/sim_config.json ../../traces/trace-$i.json
done
