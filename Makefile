
PHONY=clean all main
INC=-I jsoncpp/build/include
STATIC_LIB=jsoncpp/build/src/lib_json/libjsoncpp.a
CXX_FLAG=-std=c++11
CXX=g++
MSRC=main.cpp
MTARGET=main

all: main

main: $(MSRC)
	$(CXX) $(CXX_FLAG) $(INC) -o $(MTARGET) $(MSRC) $(STATIC_LIB)

clean:
	rm -rf *.o $(MTARGET)


