INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_TRICKLING_ITEMS trickling_items)

FIND_PATH(
    TRICKLING_ITEMS_INCLUDE_DIRS
    NAMES trickling_items/api.h
    HINTS $ENV{TRICKLING_ITEMS_DIR}/include
        ${PC_TRICKLING_ITEMS_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    TRICKLING_ITEMS_LIBRARIES
    NAMES gnuradio-trickling_items
    HINTS $ENV{TRICKLING_ITEMS_DIR}/lib
        ${PC_TRICKLING_ITEMS_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(TRICKLING_ITEMS DEFAULT_MSG TRICKLING_ITEMS_LIBRARIES TRICKLING_ITEMS_INCLUDE_DIRS)
MARK_AS_ADVANCED(TRICKLING_ITEMS_LIBRARIES TRICKLING_ITEMS_INCLUDE_DIRS)
