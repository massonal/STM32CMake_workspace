# This file was autogenerated by ~/Arduino_Core_STM32/scripts/cmake_easy_setup.py.
# Use it in your CMake configuration by `include()`'ing it.
# You can also copy it in your sketch's folder and edit it to fit your project.

cmake_minimum_required(VERSION 3.21)

# STEP 1: set up bases of environment
# -----------------------------------------------------------------------------

set(CORE_PATH "$ENV{HOME}/Arduino_Core_STM32")
set(USER_LIBS "$ENV{HOME}/Arduino/libraries")
set(BOARDNAME "@board_name_here@")

list(APPEND CMAKE_MODULE_PATH ${CORE_PATH}/cmake)
set(CMAKE_TOOLCHAIN_FILE toolchain)


# You may remove this block when using this file as the sketch's CMakeLists.txt
if (NOT ${CMAKE_PARENT_LIST_FILE} STREQUAL ${CMAKE_CURRENT_LIST_FILE})
    # When we are imported from the main CMakeLists.txt, we should stop here
    # not to interfere with the true build config.
    return()
endif()

project("@project_name_here@")

# STEP 2: configure the build
# -----------------------------------------------------------------------------

include(set_board)
set_board("${BOARDNAME}"
  # SERIAL generic
  # USB none
  # XUSB FS
  # VIRTIO disabled
)

include(overall_settings)
overall_settings(
  # STANDARD_LIBC
  # PRINTF_FLOAT
  # SCANF_FLOAT
  # DEBUG_SYMBOLS
  # LTO
  # NO_RELATIVE_MACRO
  # UNDEF_NDEBUG
  # OPTIMIZATION "s"
  # BUILD_OPT ./build.opt
  # DISABLE_HAL_MODULES ADC I2C RTC SPI TIM DAC EXTI ETH SD QSPI
  # CORE_CALLBACK
)

# STEP 3: configure your sketch
# -----------------------------------------------------------------------------
include(external_library)
# I cannot tell the dependencies of the library ahead-of-time
# Please write them in using the DEPENDS ... clause
external_library(PATH "${USER_LIBS}/I2C_Temperature_Sensors_derived_from_the_LM75")
external_library(PATH "${USER_LIBS}/SD")
external_library(PATH "${USER_LIBS}/STM32duino_IIS2MDC")
external_library(PATH "${USER_LIBS}/STM32duino_ISM330DHCX")
external_library(PATH "${USER_LIBS}/STM32duino_LIS2MDL")
external_library(PATH "${USER_LIBS}/STM32duino_LSM303AGR")
external_library(PATH "${USER_LIBS}/STM32duino_LSM6DSL")
external_library(PATH "${USER_LIBS}/STM32duino_LSM6DSO")
external_library(PATH "${USER_LIBS}/STM32duino_MotionFX")
external_library(PATH "${USER_LIBS}/TFT")

include(build_sketch)
build_sketch(TARGET "@binary_name_here@"
  SOURCES
  ./file1.ino
  ./file2.ino
  ./file3.cpp
  ./file4.c
  ./file5.S

  # DEPENDS
  # SD
  # Wire
)

# STEP 4: optional features
# -----------------------------------------------------------------------------

include(insights)
insights(TARGET "@binary_name_here@"
  # DIRECT_INCLUDES
  # TRANSITIVE_INCLUDES
  # SYMBOLS
  # ARCHIVES
  # LOGIC_STRUCTURE
)