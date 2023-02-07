# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(ffigen_app_library VERSION 0.0.1 LANGUAGES C)

add_library(ffigen_app SHARED
  duktape.c
)

set_target_properties(ffigen_app PROPERTIES
  PUBLIC_HEADER duktape.h
  PRIVATE_HEADRE duk_config.h
  OUTPUT_NAME "ffigen_app"
)

target_compile_definitions(ffigen_app PUBLIC DART_SHARED_LIB)
