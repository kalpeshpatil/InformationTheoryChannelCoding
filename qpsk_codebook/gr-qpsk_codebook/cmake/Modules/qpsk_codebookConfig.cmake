INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_QPSK_CODEBOOK qpsk_codebook)

FIND_PATH(
    QPSK_CODEBOOK_INCLUDE_DIRS
    NAMES qpsk_codebook/api.h
    HINTS $ENV{QPSK_CODEBOOK_DIR}/include
        ${PC_QPSK_CODEBOOK_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    QPSK_CODEBOOK_LIBRARIES
    NAMES gnuradio-qpsk_codebook
    HINTS $ENV{QPSK_CODEBOOK_DIR}/lib
        ${PC_QPSK_CODEBOOK_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(QPSK_CODEBOOK DEFAULT_MSG QPSK_CODEBOOK_LIBRARIES QPSK_CODEBOOK_INCLUDE_DIRS)
MARK_AS_ADVANCED(QPSK_CODEBOOK_LIBRARIES QPSK_CODEBOOK_INCLUDE_DIRS)

