# the name of the target operating system
SET(CMAKE_SYSTEM_NAME Linux)

# which C and C++ compiler to use
SET(CMAKE_C_COMPILER   "/opt/bittboy-toolchain/usr/bin/arm-linux-gcc")
SET(CMAKE_CXX_COMPILER "/opt/bittboy-toolchain/usr/bin/arm-linux-g++")
SET(CMAKE_RANLIB "/opt/bittboy-toolchain/usr/bin/arm-linux-ranlib")
SET(CMAKE_LINKER "/opt/bittboy-toolchain/usr/bin/arm-linux-ld")

add_definitions(-DGCW0)
set(GCW0 TRUE)
set(GCW0_FILES ${CMAKE_SOURCE_DIR}/gcw-zero) 

# here is the target environment located
SET(CMAKE_FIND_ROOT_PATH  /opt/bittboy-toolchain/usr/arm-buildroot-linux-musleabi/sysroot)

set(CMAKE_C_FLAGS "-DGCW0 -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -O2 -march=armv5te -mtune=arm926ej-s -fno-common -fno-PIC -static" CACHE STRING "Buildroot CFLAGS")
set(CMAKE_CXX_FLAGS "-DGCW0 -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -O2 -march=armv5te -mtune=arm926ej-s -fno-common -fno-PIC -static -static" CACHE STRING "Buildroot CXXFLAGS")
#set(CMAKE_EXE_LINKER_FLAGS "-Wl,-rpath,./libs -lc -lgcc -lSDL -lasound -lz -lpng ./lzma/liblzma.a ./game-music-emu/libgme.a ./dumb/libdumb.a ./bzip2/libbz2.a ./gdtoa/libgdtoa.a")

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

set(CMAKE_PROGRAM_PATH "/opt/bittboy-toolchain/bin")
set(CMAKE_SYSROOT "/opt/bittboy-toolchain/arm-buildroot-linux-musleabi/sysroot")
set(CMAKE_FIND_ROOT_PATH "/opt/bittboy-toolchain/arm-buildroot-linux-musleabi/sysroot")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(ENV{PKG_CONFIG_SYSROOT_DIR} "/opt/bittboy-toolchain/arm-buildroot-linux-musleabi/sysroot")
