# Install script for directory: /home/kalpesh/sem8/ee708/project/InformationTheoryChannelCoding/gaussian_codebook/gr-gaussian_codebook

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/gaussian_codebook" TYPE FILE FILES "/home/kalpesh/sem8/ee708/project/InformationTheoryChannelCoding/gaussian_codebook/gr-gaussian_codebook/cmake/Modules/gaussian_codebookConfig.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/kalpesh/sem8/ee708/project/InformationTheoryChannelCoding/gaussian_codebook/gr-gaussian_codebook/build/include/gaussian_codebook/cmake_install.cmake")
  include("/home/kalpesh/sem8/ee708/project/InformationTheoryChannelCoding/gaussian_codebook/gr-gaussian_codebook/build/lib/cmake_install.cmake")
  include("/home/kalpesh/sem8/ee708/project/InformationTheoryChannelCoding/gaussian_codebook/gr-gaussian_codebook/build/swig/cmake_install.cmake")
  include("/home/kalpesh/sem8/ee708/project/InformationTheoryChannelCoding/gaussian_codebook/gr-gaussian_codebook/build/python/cmake_install.cmake")
  include("/home/kalpesh/sem8/ee708/project/InformationTheoryChannelCoding/gaussian_codebook/gr-gaussian_codebook/build/grc/cmake_install.cmake")
  include("/home/kalpesh/sem8/ee708/project/InformationTheoryChannelCoding/gaussian_codebook/gr-gaussian_codebook/build/apps/cmake_install.cmake")
  include("/home/kalpesh/sem8/ee708/project/InformationTheoryChannelCoding/gaussian_codebook/gr-gaussian_codebook/build/docs/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/kalpesh/sem8/ee708/project/InformationTheoryChannelCoding/gaussian_codebook/gr-gaussian_codebook/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
