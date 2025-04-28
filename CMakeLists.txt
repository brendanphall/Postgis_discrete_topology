cmake_minimum_required(VERSION 3.21)
project(postgis_discrete_topology C)

find_program(PG_CONFIG pg_config)

if(NOT PG_CONFIG)
    message(FATAL_ERROR "pg_config not found! Please install PostgreSQL.")
endif()

execute_process(
    COMMAND ${PG_CONFIG} --includedir
    OUTPUT_VARIABLE PG_INCLUDE_DIR
    OUTPUT_STRIP_TRAILING_WHITESPACE
)

execute_process(
    COMMAND ${PG_CONFIG} --libdir
    OUTPUT_VARIABLE PG_LIB_DIR
    OUTPUT_STRIP_TRAILING_WHITESPACE
)

include_directories(${PG_INCLUDE_DIR})

add_library(postgis_discrete_topology MODULE postgis_discrete_topology.c)

target_link_directories(postgis_discrete_topology PRIVATE ${PG_LIB_DIR})

set_target_properties(postgis_discrete_topology PROPERTIES
    PREFIX ""
    SUFFIX ".so"
)
