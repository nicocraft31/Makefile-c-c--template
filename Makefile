PROJECT_NAME := main
EXEC_TARGET := ./bin/$(PROJECT_NAME)

CC := gcc
CCFLAGS := -Wall -02

CL := $(CC)
CLFLAGS :=

FILE_EXTENSION_SRC := .c
FILE_EXTENSION_H := .h

SRCFOLDER_SRC:= $(shell find src -type f -name "*$(FILE_EXTENSION_SRC)")
OBJ_MID := $(subst $(FILE_EXTENSION_SRC),$(FILE_EXTENSION_SRC).o,$(SRCFOLDER_SRC))
SRCFOLDER_OBJ := $(subst src,obj,$(OBJ_MID))

SRCFOLDER_HEADERS := $(shell find src -type f -name "*$(FILE_EXTENSION_H)")

.PHONY: all
all: build

.PHONY: setup
setup: setup-dirs

.PHONY: setup-dirs
setup-dirs:
	mkdir src bin obj
.PHONY: build-run
build-run: build run

.PHONY: build
build: $(EXEC_TARGET)

.PHONY: run
run:
	$(EXEC_TARGET)

$(EXEC_TARGET): $(SRCFOLDER_OBJ)
	$(CL) $(CLFLAGS) -o $(EXEC_TARGET) $(SRCFOLDER_OBJ)

obj/%.$(FILE_EXTENSION_SRC).o: src/%$(FILE_EXTENSION_SRC)
	$(CC) -O2 -Wall -c $< -o $@

obj/%$(FILE_EXTENSION_SRC).o: src/%$(FILE_EXTENSION_SRC) $(SRCFOLDER_HEADERS)
	$(CC) -O2 -Wall -c $< -o $@
