# IMPOTRANT NOTE: Unless set in the environment,
# values of the following variables need to be supplied via the command line
# (1) $(BOOST_DIR)  # default is empty, path to boost library (only the
#                   # headers will be needed)
# (2) $(PROCESSOR)  # may take values 0 or 1: to set use of the pseudo-random
                    # number generator from boost or (in case of cuda
#                   # availablility) curand respectively; default is 1
# You may also need to supply explicitely executables for $(AR) and $(CC)
# to override or supplement the environment variables
# e.g., the call from the directory where the Makefile is, may look like:
# make PROCESSOR=0 -B all BOOST_DIR=/path/to/boost_includes AS=/usr/bin/as AR=/usr/bin/ar CC=/usr/local/gcc-9.1.0/bin/gcc-9.1.0
# Alternatively, hardcode them directly here.
#
# if run for the first time, please do not forget to produce the dependency
# before the make:
#     cd ../external/manual_make/
#     make all AR=/usr/bin/ar
#     cd ../../manual_make/
#
# The executable is ../app/MosaicSC_X, where "X" is either "CPU" or "CUDA",
# depending on the $(PROCESSOR)
#
# To check the actual value of a variable $(VAR):
# make print-VAR

print-%  : ; @echo $* = $($*)

UTILS_DIR := ../external/

MOSAICSC_DIR := ../
MOSAICSC_APP_DIR := $(MOSAICSC_DIR)app/
MOSAICSC_SRC_DIR := $(MOSAICSC_DIR)src/

SRCS_MAIN := main.cpp
SRCS_MAIN_FULL := $(patsubst %,$(MOSAICSC_APP_DIR)%,$(SRCS_MAIN))

SRCS_SRC := parameters.cpp base_component.cpp c1.cpp c2.cpp c3.cpp c4.cpp io.cpp potts.cpp
SRCS_SRC_FULL := $(patsubst %,$(MOSAICSC_SRC_DIR)%,$(SRCS_SRC))

SRCS_ALL += $(SRCS_SRC_FULL)
SRCS_ALL += $(SRCS_MAIN_FULL)

.PHONY: all

OBJS_DIR := ./obj/
OBJS += $(SRCS_SRC:.cpp=.o)
OBJS += $(SRCS_MAIN:.cpp=.o)
OBJS_ALL = $(patsubst %,$(OBJS_DIR)%,$(OBJS))

all : $(OBJS_ALL)
$(OBJS_ALL) : | $(OBJ_DIR)
$(OBJ_DIR) :
	mkdir -p $(OBJ_DIR)

MOSAICSC_INC_DIR := $(MOSAICSC_DIR)include/
INC_DIR = -I$(BOOST_DIR) -I$(UTILS_DIR) -I$(MOSAICSC_INC_DIR)

TARGET_DIR := ../app/
TARGET_CORE := MosaicSC

PROCESSOR_CPU := 0
PROCESSOR_CUDA := 1

ifeq ($(PROCESSOR), $(PROCESSOR_CUDA))
	CPP_VARS += -DPROCESSOR=1
	TARGET := $(TARGET_CORE)_CUDA
else
	CPP_VARS += -DPROCESSOR=0
	TARGET := $(TARGET_CORE)_CPU
endif
TARGET := $(TARGET_DIR)$(TARGET)
all : $(TARGET)

CC := g++
CFLAGS = -c -Wall -O3 -msse4 -march=native $(INC_DIR) $(CPP_VARS) -std=c++20
LFLAGS = -Wall -L$(UTILS_DIR)lib -lpthread -lstdc++ -lutils

$(TARGET) : $(OBJS_ALL)
	$(CC) $(LFLAGS) $^ -o $@

$(OBJS_DIR)parameters.o : $(MOSAICSC_SRC_DIR)parameters.cpp \
	$(MOSAICSC_INC_DIR)definitions.h \
	$(MOSAICSC_INC_DIR)parameters.h
	$(CC) $(CFLAGS) $< -o $@

$(OBJS_DIR)base_component.o : $(MOSAICSC_SRC_DIR)base_component.cpp \
	$(MOSAICSC_INC_DIR)definitions.h \
	$(MOSAICSC_INC_DIR)parameters.h \
	$(MOSAICSC_INC_DIR)base_component.h
	$(CC) $(CFLAGS) $< -o $@

$(OBJS_DIR)c1.o : $(MOSAICSC_SRC_DIR)c1.cpp \
	$(MOSAICSC_INC_DIR)definitions.h \
	$(MOSAICSC_INC_DIR)parameters.h \
	$(MOSAICSC_INC_DIR)c1.h \
	$(MOSAICSC_INC_DIR)base_component.h
	$(CC) $(CFLAGS) $< -o $@

$(OBJS_DIR)c2.o : $(MOSAICSC_SRC_DIR)c2.cpp \
	$(MOSAICSC_INC_DIR)definitions.h \
	$(MOSAICSC_INC_DIR)parameters.h \
	$(MOSAICSC_INC_DIR)c2.h \
	$(MOSAICSC_INC_DIR)base_component.h
	$(CC) $(CFLAGS) $< -o $@

$(OBJS_DIR)c3.o : $(MOSAICSC_SRC_DIR)c3.cpp \
	$(MOSAICSC_INC_DIR)definitions.h \
	$(MOSAICSC_INC_DIR)parameters.h \
	$(MOSAICSC_INC_DIR)c3.h \
	$(MOSAICSC_INC_DIR)base_component.h
	$(CC) $(CFLAGS) $< -o $@

$(OBJS_DIR)c4.o : $(MOSAICSC_SRC_DIR)c4.cpp \
	$(MOSAICSC_INC_DIR)definitions.h \
	$(MOSAICSC_INC_DIR)parameters.h \
	$(MOSAICSC_INC_DIR)c4.h \
	$(MOSAICSC_INC_DIR)base_component.h
	$(CC) $(CFLAGS) $< -o $@

$(OBJS_DIR)io.o : $(MOSAICSC_SRC_DIR)io.cpp \
	$(MOSAICSC_INC_DIR)definitions.h \
	$(MOSAICSC_INC_DIR)parameters.h \
	$(MOSAICSC_INC_DIR)potts.h \
	$(MOSAICSC_INC_DIR)io.h \
	$(MOSAICSC_INC_DIR)sc.h \
	$(MOSAICSC_INC_DIR)c1.h \
	$(MOSAICSC_INC_DIR)c2.h \
	$(MOSAICSC_INC_DIR)c3.h \
	$(MOSAICSC_INC_DIR)c4.h \
	$(MOSAICSC_INC_DIR)base_component.h
	$(CC) $(CFLAGS) $< -o $@

$(OBJS_DIR)potts.o : $(MOSAICSC_SRC_DIR)potts.cpp \
	$(MOSAICSC_INC_DIR)definitions.h \
	$(MOSAICSC_INC_DIR)parameters.h \
	$(MOSAICSC_INC_DIR)potts.h \
	$(MOSAICSC_INC_DIR)io.h \
	$(MOSAICSC_INC_DIR)sc.h \
	$(MOSAICSC_INC_DIR)c1.h \
	$(MOSAICSC_INC_DIR)c2.h \
	$(MOSAICSC_INC_DIR)c3.h \
	$(MOSAICSC_INC_DIR)c4.h \
	$(MOSAICSC_INC_DIR)base_component.h
	$(CC) $(CFLAGS) $< -o $@

$(OBJS_DIR)main.o : $(MOSAICSC_APP_DIR)main.cpp \
	$(MOSAICSC_INC_DIR)definitions.h \
	$(MOSAICSC_INC_DIR)parameters.h \
	$(MOSAICSC_INC_DIR)potts.h \
	$(MOSAICSC_INC_DIR)io.h \
	$(MOSAICSC_INC_DIR)sc.h \
	$(MOSAICSC_INC_DIR)c1.h \
	$(MOSAICSC_INC_DIR)c2.h \
	$(MOSAICSC_INC_DIR)c3.h \
	$(MOSAICSC_INC_DIR)c4.h \
	$(MOSAICSC_INC_DIR)base_component.h
	$(CC) $(CFLAGS) $< -o $@

#clean:

.PHONY: clean

clean:
	rm -rf $(OBJS_DIR)*.o $(TARGET_DIR)$(TARGET_CORE)*

