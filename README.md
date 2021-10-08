## Make project with GNU make:
	make -k
### Clean:
	make clean

## Make project with ninja
	cd build/default
	ninja
### Clean from project directory:
	cmake --build build/default/ --target clean
