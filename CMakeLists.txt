PROJECT (Peavip)

### The following are needed to avoid warnings. See CMake doc. ######
CMAKE_MINIMUM_REQUIRED(VERSION 2.6)

if(COMMAND cmake_policy)
cmake_policy(SET CMP0003 NEW)
endif(COMMAND cmake_policy)
#####################################################################

# First of all, this a ParaView plugin. It *needs* ParaView...
FIND_PACKAGE(ParaView REQUIRED)
INCLUDE(${PARAVIEW_USE_FILE})


SET (LIBRARY_OUTPUT_PATH ${Peavip_BINARY_DIR}/bin
     CACHE 
     PATH
     "Single output directory for building all libraries.")


SET (EXECUTABLE_OUTPUT_PATH ${Peavip_BINARY_DIR}/bin
     CACHE
     PATH
     "Single output directory for building all executables.")


INCLUDE_DIRECTORIES (${LIBRARY_OUTPUT_PATH})
INCLUDE_DIRECTORIES (${EXECUTABLE_OUTPUT_PATH})
INCLUDE_DIRECTORIES (${Peavip_SOURCE_DIR}/Plugins)

MARK_AS_ADVANCED(
   LIBRARY_OUTPUT_PATH
   EXECUTABLE_OUTPUT_PATH
)

SUBDIRS(
   Plugins
)

