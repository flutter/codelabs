# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(msfa_plugin_library VERSION 0.0.1 LANGUAGES C CXX)

add_library(msfa_plugin SHARED

  # Provides a relative path to your source file(s).
  libmsfa/src/dx7note.cc
  libmsfa/src/env.cc
  libmsfa/src/exp2.cc
  libmsfa/src/fir.cc
  libmsfa/src/fm_core.cc
  libmsfa/src/fm_op_kernel.cc
  libmsfa/src/freqlut.cc
  libmsfa/src/lfo.cc
  libmsfa/src/log2.cc
  libmsfa/src/libmsfa.cc
  libmsfa/src/patch.cc
  libmsfa/src/pitchenv.cc
  libmsfa/src/resofilter.cc
  libmsfa/src/ringbuffer.cc
  libmsfa/src/sawtooth.cc
  libmsfa/src/sin.cc
  libmsfa/src/synth_unit.cc
)

set_target_properties(msfa_plugin PROPERTIES
  PUBLIC_HEADER msfa_plugin.h
  OUTPUT_NAME "msfa_plugin"
)

target_compile_options(msfa_plugin PRIVATE -Wno-c++11-narrowing)

set(CMAKE_CXX_FLAGS -pthread)

include_directories("include")

target_link_libraries(

  # Specifies the target library.
  msfa_plugin
  ${CMAKE_DL_LIBS}
)