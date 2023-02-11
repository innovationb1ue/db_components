target("my_lib")
    set_kind("static")
    add_headerfiles("include/my_lib/*.h")
    add_files("src/my_lib/*.cpp")

target("sstable")
    set_kind("static")
    add_files("src/sstable/*.cpp")
    add_headerfiles("src/sstable/*.h")

target("main2")
    set_kind("binary")
    add_files("src/main2.cpp")

target("db_components")
    set_kind("binary")
    add_files("src/main.cpp")
    add_deps("my_lib")
    add_deps("sstable")




