CXX = clang++
LD = clang++

RM = rm -f

CXXFLAGS = -Wall -Wextra -Werror -pedantic -c -I include/

demo: factorial.a main.o factorial.o
	$(CXX) $? -o $@

factorial.a: factorial.o
	ar cr $@  $?

factorial.o: src/factorial.cpp include/factorial.hpp
	$(CXX) $(CXXFLAGS) src/factorial.cpp -o $@

main.o: src/main.cpp include/factorial.hpp
	$(CXX) $(CXXFLAGS) src/main.cpp -o $@

clean:
	$(RM) *.o demo *.a
