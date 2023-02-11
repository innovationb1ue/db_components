add_subdirectory(my_lib)
add_subdirectory(sstable)

# this src lib
message("ALL object files = ${ALL_OBJECT_FILES}")
add_library(db_components_src STATIC ${ALL_OBJECT_FILES})

set(DB_COMPONENTS_LIBS
        db_components_src_my_lib
        db_components_src_sstable)

message("db components libs = ${DB_COMPONENTS_LIBS}")

target_link_libraries(
        db_components_src
        ${DB_COMPONENTS_LIBS}
)


target_include_directories(
        db_components_src PUBLIC $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
        $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>)