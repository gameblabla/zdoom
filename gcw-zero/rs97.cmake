# the name of the target operating system
SET(CMAKE_SYSTEM_NAME Linux)

# which C and C++ compiler to use
SET(CMAKE_C_COMPILER   "/opt/rs97-toolchain/usr/bin/mipsel-linux-gcc")
SET(CMAKE_CXX_COMPILER "/opt/rs97-toolchain/usr/bin/mipsel-linux-g++")
SET(CMAKE_RANLIB "/opt/rs97-toolchain/usr/bin/mipsel-linux-ranlib")
SET(CMAKE_LINKER "/opt/rs97-toolchain/usr/bin/mipsel-linux-ld")

add_definitions(-DGCW0)
set(GCW0 TRUE)
set(GCW0_FILES ${CMAKE_SOURCE_DIR}/gcw-zero) 

# here is the target environment located
SET(CMAKE_FIND_ROOT_PATH  /opt/rs97-toolchain/usr/mipsel-buildroot-linux-musl/sysroot)

# Don't use -mno-fp-exceptions -mno-check-zero-division as it will crash hard on the device without checks.
set(CMAKE_C_FLAGS "-DGCW0 -DGCWZERO -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -Ofast -falign-functions=1 -falign-jumps=1 -falign-loops=1 -falign-labels=1 -mno-fp-exceptions -mno-check-zero-division -mframe-header-opt -mips32  -mframe-header-opt -fno-common -fno-PIC -mno-abicalls -mframe-header-opt -static" CACHE STRING "Buildroot CFLAGS")
set(CMAKE_CXX_FLAGS "-DGCW0 -DGCWZERO -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -Ofast -ftree-vectorize  -falign-functions=1 -falign-jumps=1 -falign-loops=1 -falign-labels=1 -mno-fp-exceptions -mno-check-zero-division -mframe-header-opt  -mips32 -mframe-header-opt -fno-common -fno-PIC -mno-abicalls -mframe-header-opt -static" CACHE STRING "Buildroot CXXFLAGS")
#SET(CMAKE_EXE_LINKER_FLAGS "-Wl,-rpath,./libs -Wl,")

#SET(CMAKE_CXX_FLAGS "-D_REENTRANT -DGCWZERO  -fomit-frame-pointer -ffunction-sections -fsingle-precision-constant -G0  -mips32r2")
#SET(CMAKE_C_FLAGS "${CMAKE_CXX_FLAGS}")
#SET(CMAKE_CXX_FLAGS_RELEASE "")

#SET(CMAKE_CXX_FLAGS_RELEASE "-D_REENTRANT -DGCWZERO  -fomit-frame-pointer -ffunction-sections -fsingle-precision-constant -G0 -mips32r2")


#####

# adjust the default behaviour of the FIND_XXX() commands:
# search headers and libraries in the target environment, search
# programs in the host environment
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(CMAKE_PROGRAM_PATH "/opt/rs97-toolchain/bin")
set(CMAKE_SYSROOT "/opt/rs97-toolchain/mipsel-buildroot-linux-musl/sysroot")
set(CMAKE_FIND_ROOT_PATH "/opt/rs97-toolchain/mipsel-buildroot-linux-musl/sysroot")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(ENV{PKG_CONFIG_SYSROOT_DIR} "/opt/rs97-toolchain/mipsel-buildroot-linux-musl/sysroot")
