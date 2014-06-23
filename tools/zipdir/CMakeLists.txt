cmake_minimum_required( VERSION 2.4 )
message(STATUS "${ZLIB_INCLUDE_DIR}" )
message(STATUS "${BZIP2_INCLUDE_DIR}" )
message(STATUS "${LZMA_INCLUDE_DIR}" )
include_directories( "${ZLIB_INCLUDE_DIR}" "${BZIP2_INCLUDE_DIR}" "${LZMA_INCLUDE_DIR}" )
if ( NOT GCW0 )
add_executable( zipdir
	zipdir.c )
target_link_libraries( zipdir ${ZLIB_LIBRARIES} ${BZIP2_LIBRARIES} lzma )
else ( NOT GCW0 )
	add_custom_target(zipdir
						COMMAND cp -v ${GCW0_FILES}/linux32-tools/zipdir ${CMAKE_CURRENT_BINARY_DIR}
						DEPENDS ${GCW0_FILES}/linux32-tools/zipdir )
	set_target_properties(zipdir
						PROPERTIES LOCATION ${CMAKE_CURRENT_BINARY_DIR}/zipdir )
endif ( NOT GCW0 )
