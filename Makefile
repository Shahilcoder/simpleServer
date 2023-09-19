build: prepare
	cd build && cmake --build . -j 4

prepare:
	rm -rf build
	mkdir build
	cd build && cmake ..
