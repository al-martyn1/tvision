cmake_minimum_required(VERSION 3.17)

project(tvision C CXX ASM)


if(NOT DEFINED CMAKE_BUILD_TYPE AND NOT DEFINED CMAKE_CONFIGURATION_TYPES)
    set(CMAKE_BUILD_TYPE Release CACHE STRING "Build type" FORCE)
    set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS "Debug" "Release" "MinSizeRel" "RelWithDebInfo")
endif()


set(MODULE_ROOT "${CMAKE_CURRENT_LIST_DIR}")
set(TV_ROOT "${MODULE_ROOT}/tvision")



# https://cmake.org/cmake/help/latest/variable/CMAKE_LANG_COMPILER_ID.html

if (CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
    add_compile_definitions(${PROJECT_NAME} PUBLIC TVComp_GCC=1)
    if (WIN32)
        add_compile_definitions(${PROJECT_NAME} PUBLIC TVCompf_MinGW=1)
    endif()
elseif (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    add_compile_definitions(${PROJECT_NAME} PUBLIC TVComp_GCC=1)
    if (WIN32)
        add_compile_definitions(${PROJECT_NAME} PUBLIC TVCompf_MinGW=1)
    endif()
elseif (CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
    add_compile_definitions(${PROJECT_NAME} PUBLIC TVComp_MSC=1)
elseif (CMAKE_CXX_COMPILER_ID STREQUAL "Embarcadero" OR CMAKE_CXX_COMPILER_ID STREQUAL "Borland")
    add_compile_definitions(${PROJECT_NAME} PUBLIC TVComp_BCPP=1)
elseif (CMAKE_CXX_COMPILER_ID STREQUAL "OpenWatcom")
    add_compile_definitions(${PROJECT_NAME} PUBLIC TVComp_Watcom=1)
endif()



file(GLOB CLASSES_SRC         "${TV_ROOT}/classes/*.cc"          )


file(GLOB CLASSES_ALCON_SRC   "${TV_ROOT}/classes/alcon/*.cc"    ) # Allegro ???
file(GLOB CLASSES_DOS_SRC     "${TV_ROOT}/classes/dos/*.cc" "${TV_ROOT}/classes/dos/*.c")
file(GLOB CLASSES_LINUX_SRC   "${TV_ROOT}/classes/linux/*.cc"    )
file(GLOB CLASSES_QNX4_SRC    "${TV_ROOT}/classes/qnx4/*.cc"     )
file(GLOB CLASSES_QNXRTP_SRC  "${TV_ROOT}/classes/qnxrtp/*.cc"   )
file(GLOB CLASSES_UNIX_SRC    "${TV_ROOT}/classes/unix/*.cc"     )
file(GLOB CLASSES_WIN32_SRC   "${TV_ROOT}/classes/win32/*.cc"    )
file(GLOB CLASSES_WINGR_SRC   "${TV_ROOT}/classes/wingr/*.cc"    )
file(GLOB CLASSES_WINNT_SRC   "${TV_ROOT}/classes/winnt/*.cc"    )
file(GLOB CLASSES_X11_SRC     "${TV_ROOT}/classes/x11/*.cc"      )

file(GLOB COMPAT_SRC          "${TV_ROOT}/compat/*.cc" "${TV_ROOT}/compat/*.c")

file(GLOB NAMES_SRC           "${TV_ROOT}/names/*.cc" "${TV_ROOT}/names/*.c")

file(GLOB STREAM_SRC          "${TV_ROOT}/stream/*.cc")

# https://gitlab.kitware.com/cmake/community/-/wikis/doc/tutorials/How-To-Write-Platform-Checks
# https://stackoverflow.com/questions/9160335/os-specific-instructions-in-cmake-how-to
# https://cmake.org/cmake/help/latest/variable/CMAKE_SYSTEM_NAME.html
# https://coderefinery.github.io/cmake-workshop/environment/
# if(CMAKE_SYSTEM_NAME STREQUAL "Linux")


# see conflib.pl

# # DOS, UNIX, Win32
# $OS='';

# # Linux, FreeBSD, NetBSD, Solaris, QNXRtP, QNX4
# $OSf='';

# # x86, Alpha, SPARC64, SPARC, PPC, HPPA, MIPS, Itanium, Unknown
# $CPU='';

# # GCC, BCPP, MSVC
# $Comp='';

# # djgpp, MinGW, Cygwin
# $Compf='';

# # gcc's -pipe option
# $UsePipe=0;



# # #ifdef TVOSf_Linux
#  #ifdef TVOS_Win32
#   #ifdef TVOSf_NT
# #if defined(TVOS_UNIX) || defined(TVCompf_Cygwin)



if (WIN32)

    # list(APPEND SOURCES ${CLASSES_WIN32_SRC})
    # # list(APPEND SOURCES ${CLASSES_WINNT_SRC}) # ???
    set(PALTFROM_SOURCES ${CLASSES_WIN32_SRC} ${CLASSES_WINNT_SRC})
    # set(PALTFROM_SOURCES ${CLASSES_WINNT_SRC}) # ???

    add_compile_definitions(${PROJECT_NAME} PUBLIC TVOS_Win32=1)
    #add_compile_definitions(${PROJECT_NAME} PUBLIC TVOSf_NT=1)

    add_compile_definitions(${PROJECT_NAME} PUBLIC TVCPU_x86=1)
    # add_compile_definitions(${PROJECT_NAME} PUBLIC TVCPU_AMD64=1)

elseif(CMAKE_SYSTEM_NAME STREQUAL "DOS")

    # list(APPEND SOURCES ${CLASSES_DOS_SRC})
    set(PALTFROM_SOURCES ${CLASSES_DOS_SRC})
    add_compile_definitions(${PROJECT_NAME} PUBLIC TVOS_DOS=1)

elseif(CMAKE_SYSTEM_NAME STREQUAL "Linux")

    # list(APPEND SOURCES ${CLASSES_LINUX_SRC})
    set(PALTFROM_SOURCES ${CLASSES_LINUX_SRC})
    add_compile_definitions(${PROJECT_NAME} PUBLIC TVOS_UNIX=1)
    add_compile_definitions(${PROJECT_NAME} PUBLIC TVOSf_Linux=1)

elseif(CMAKE_SYSTEM_NAME STREQUAL "FreeBSD" OR CMAKE_SYSTEM_NAME STREQUAL "kFreeBSD" OR CMAKE_SYSTEM_NAME STREQUAL "HP-UX" CMAKE_SYSTEM_NAME STREQUAL "BSDOS" OR OR CMAKE_SYSTEM_NAME STREQUAL "MirBSD" OR CMAKE_SYSTEM_NAME STREQUAL "NetBSD" OR CMAKE_SYSTEM_NAME STREQUAL "OpenBSD" )

    # list(APPEND SOURCES ${CLASSES_UNIX_SRC})
    set(PALTFROM_SOURCES ${CLASSES_UNIX_SRC})
    add_compile_definitions(${PROJECT_NAME} PUBLIC TVOS_UNIX=1)
    if(CMAKE_SYSTEM_NAME STREQUAL "FreeBSD" OR CMAKE_SYSTEM_NAME STREQUAL "kFreeBSD")
        add_compile_definitions(${PROJECT_NAME} PUBLIC TVOSf_FreeBSD=1)
    else()
        add_compile_definitions(${PROJECT_NAME} PUBLIC TVOSf_NetBSD=1)
    endif()

elseif(CMAKE_SYSTEM_NAME STREQUAL "QNX")

    # list(APPEND SOURCES ${CLASSES_QNX4_SRC})
    set(PALTFROM_SOURCES ${CLASSES_QNX4_SRC})
    add_compile_definitions(${PROJECT_NAME} PUBLIC TVOS_UNIX=1)
    add_compile_definitions(${PROJECT_NAME} PUBLIC TVOSf_QNX4=1)

else()

    set(PALTFROM_SOURCES )

endif()


# https://cmake.org/cmake/help/latest/variable/CMAKE_SYSTEM_PROCESSOR.html
# https://stackoverflow.com/questions/11944060/how-to-detect-target-architecture-using-cmake

add_compile_definitions(${PROJECT_NAME} PUBLIC CLY_ssize_t=1)
# add_compile_definitions(${PROJECT_NAME} PUBLIC CLY_DoNotDefineSizedTypes=1)

# add_compile_definitions(${PROJECT_NAME} PUBLIC "usleep(microseconds)=CLY_YieldProcessor(microseconds)")



set(SOURCES ${TV_ROOT}/drivers2.cc ${TV_ROOT}/histlist.cc ${TV_ROOT}/misc.cc ${TV_ROOT}/msgbox.cc ${TV_ROOT}/newstr.cc ${CLASSES_SRC} ${COMPAT_SRC} ${NAMES_SRC} ${STREAM_SRC} ${PALTFROM_SOURCES})




source_group(TREE ${TV_ROOT} PREFIX "Sources" FILES ${SOURCES})


file(GLOB_RECURSE HEADERS "${TV_ROOT}/include/*.h")
source_group(TREE ${TV_ROOT}/include PREFIX "Headers" FILES ${HEADERS})

add_library(${PROJECT_NAME} ${SOURCES} ${HEADERS})
add_library(${PROJECT_NAME}::${PROJECT_NAME} ALIAS ${PROJECT_NAME})

target_include_directories(${PROJECT_NAME} PUBLIC  ${TV_ROOT}/include)
target_include_directories(${PROJECT_NAME} PRIVATE ${MODULE_ROOT}/..)



# # list(FILTER sources EXCLUDE REGEX ".*CMakeCXXCompilerId\\.cpp$")
# source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} PREFIX "Sources" FILES ${sources})

# file(GLOB_RECURSE headers "${TV_ROOT}/*.h")
# list(FILTER headers EXCLUDE REGEX ".*zz_.*\\.h$")
# source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} PREFIX "Headers" FILES ${headers})


# add_library(${PROJECT_NAME} ${sources} ${headers})
# add_library(${PROJECT_NAME}::${PROJECT_NAME} ALIAS ${PROJECT_NAME})

# target_include_directories(${PROJECT_NAME} PRIVATE ${TV_ROOT}/..)




# file(GLOB_RECURSE headers "${TV_ROOT}/*.h")
# source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR}/inc/umba PREFIX "Headers" FILES ${headers})


# add_library(${PROJECT_NAME} ${sources} ${headers})
# add_library(${PROJECT_NAME}::${PROJECT_NAME} ALIAS ${PROJECT_NAME})

# target_include_directories(${PROJECT_NAME} PUBLIC  ${TV_ROOT}/inc)
# target_include_directories(${PROJECT_NAME} PRIVATE ${TV_ROOT}/..)




