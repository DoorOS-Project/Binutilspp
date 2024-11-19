CXX := g++
CXXFLAGS := -Wall -g -DBUILD_DLL
LD_FLAGS := -lstdc++

OBJ_DIR := obj/
BIN_DIR := bin/
SRC_DIR := src/
SUFFIX :=

BIN_NAME := libld++
_BIN_NAME := $(BIN_NAME)

ifeq ($(OS),Windows_NT)
	BIN_NAME := $(BIN_NAME).dll
	SUFFIX := _win
	LD_FLAGS_2 = -Wl,--out-implib,$(BIN_DIR)$(_BIN_NAME).lib
else
	BIN_NAME := lib$(BIN_NAME).so
endif

SRC_FILES := $(wildcard $(SRC_DIR)*.cpp)
HDR_FILES := $(wildcard $(SRC_DIR)*.hpp)
OBJ_FILES := $(patsubst $(SRC_DIR)%.cpp,$(OBJ_DIR)%$(SUFFIX).o,$(SRC_FILES))

.PHONY: all clean

all: $(BIN_DIR)$(BIN_NAME)

$(BIN_DIR)$(BIN_NAME): $(OBJ_FILES)
	@if [ ! -d $(BIN_DIR) ]; then mkdir -p $(BIN_DIR); fi
	$(CXX) $(CXXFLAGS) -shared -o $@ $^ $(LD_FLAGS) $(LD_FLAGS_2)

$(OBJ_DIR)%$(SUFFIX).o: $(SRC_DIR)%.cpp $(SRC_FILES) $(HDR_FILES)
	@if [ ! -d $(OBJ_DIR) ]; then mkdir -p $(OBJ_DIR); fi
	$(CXX) $(CXXFLAGS) -c -o $@ $< $(LD_FLAGS)

clean:
	rm -rf $(OBJ_DIR)* $(BIN_DIR)*

