cmake_minimum_required(VERSION 3.17)

project(tvision C CXX ASM)


if(NOT DEFINED CMAKE_BUILD_TYPE AND NOT DEFINED CMAKE_CONFIGURATION_TYPES)
    set(CMAKE_BUILD_TYPE Release CACHE STRING "Build type" FORCE)
    set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS "Debug" "Release" "MinSizeRel" "RelWithDebInfo")
endif()


set(MODULE_ROOT "${CMAKE_CURRENT_LIST_DIR}")
set(TV_ROOT "${MODULE_ROOT}/tvision")


set(TV_DEFINITIONS )



# https://cmake.org/cmake/help/latest/variable/CMAKE_LANG_COMPILER_ID.html

if (CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
    list(APPEND TV_DEFINITIONS TVComp_GCC=1)
    if (WIN32)
        list(APPEND TV_DEFINITIONS TVCompf_MinGW=1)
    endif()
elseif (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    list(APPEND TV_DEFINITIONS TVComp_GCC=1)
    if (WIN32)
        list(APPEND TV_DEFINITIONS TVCompf_MinGW=1)
    endif()
elseif (CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
    list(APPEND TV_DEFINITIONS TVComp_MSC=1)
elseif (CMAKE_CXX_COMPILER_ID STREQUAL "Embarcadero" OR CMAKE_CXX_COMPILER_ID STREQUAL "Borland")
    list(APPEND TV_DEFINITIONS TVComp_BCPP=1)
elseif (CMAKE_CXX_COMPILER_ID STREQUAL "OpenWatcom")
    list(APPEND TV_DEFINITIONS TVComp_Watcom=1)
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

# set_source_files_properties(${CLASSES_DOS_SRC} PROPERTIES LANGUAGE CXX )

file(GLOB COMPAT_SRC          "${TV_ROOT}/compat/*.cc" "${TV_ROOT}/compat/*.c")
# set_source_files_properties(${COMPAT_SRC} PROPERTIES LANGUAGE CXX )

file(GLOB NAMES_SRC           "${TV_ROOT}/names/*.cc" "${TV_ROOT}/names/*.c")
# set_source_files_properties(${NAMES_SRC} PROPERTIES LANGUAGE CXX )

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


if (TV_BARE_METAL)

    list(APPEND TV_DEFINITIONS TV_BARE_METAL=1)
    list(APPEND TV_DEFINITIONS TVOS_BareMetal=1)
    message("TurboVision configured for BareMetal")

elseif (WIN32)

    set(PALTFROM_SOURCES ${CLASSES_WIN32_SRC} ${CLASSES_WINNT_SRC})
    # set(PALTFROM_SOURCES ${CLASSES_WINNT_SRC}) # ???

    list(APPEND TV_DEFINITIONS TVOS_Win32=1)
    # list(APPEND TV_DEFINITIONS TVOSf_NT=1) # ???

    list(APPEND TV_DEFINITIONS TVCPU_x86=1)

elseif(CMAKE_SYSTEM_NAME STREQUAL "DOS")

    set(PALTFROM_SOURCES ${CLASSES_DOS_SRC})
    list(APPEND TV_DEFINITIONS TVOS_DOS=1)

elseif(CMAKE_SYSTEM_NAME STREQUAL "Linux")

    set(PALTFROM_SOURCES ${CLASSES_LINUX_SRC})
    list(APPEND TV_DEFINITIONS TVOS_UNIX=1)
    list(APPEND TV_DEFINITIONS TVOSf_Linux=1) 

elseif(CMAKE_SYSTEM_NAME STREQUAL "FreeBSD" OR CMAKE_SYSTEM_NAME STREQUAL "kFreeBSD" OR CMAKE_SYSTEM_NAME STREQUAL "HP-UX" CMAKE_SYSTEM_NAME STREQUAL "BSDOS" OR OR CMAKE_SYSTEM_NAME STREQUAL "MirBSD" OR CMAKE_SYSTEM_NAME STREQUAL "NetBSD" OR CMAKE_SYSTEM_NAME STREQUAL "OpenBSD" )

    set(PALTFROM_SOURCES ${CLASSES_UNIX_SRC})
    list(APPEND TV_DEFINITIONS TVOS_UNIX=1)
    if(CMAKE_SYSTEM_NAME STREQUAL "FreeBSD" OR CMAKE_SYSTEM_NAME STREQUAL "kFreeBSD")
        list(APPEND TV_DEFINITIONS TVOSf_FreeBSD=1)
    else()
        list(APPEND TV_DEFINITIONS TVOSf_NetBSD=1)
    endif()

elseif(CMAKE_SYSTEM_NAME STREQUAL "QNX")

    set(PALTFROM_SOURCES ${CLASSES_QNX4_SRC})
    list(APPEND TV_DEFINITIONS TVOS_UNIX=1) 
    list(APPEND TV_DEFINITIONS TVOSf_QNX4=1)

else()

    set(PALTFROM_SOURCES )

endif()


if (TV_NO_FILESYSTEM)
    list(APPEND TV_DEFINITIONS TV_NO_FILESYSTEM=1)

    # Remove all file system dependent sources

    list(FILTER CLASSES_SRC EXCLUDE REGEX ".*configfile\.cc$")
    list(FILTER CLASSES_SRC EXCLUDE REGEX ".*tchdirdi\.cc$")
    list(FILTER CLASSES_SRC EXCLUDE REGEX ".*tdirlist\.cc$")
    list(FILTER CLASSES_SRC EXCLUDE REGEX ".*tfilelis\.cc$")
    list(FILTER CLASSES_SRC EXCLUDE REGEX ".*tfilecol\.cc$")
    list(FILTER CLASSES_SRC EXCLUDE REGEX ".*tfileedi\.cc$")
    list(FILTER CLASSES_SRC EXCLUDE REGEX ".*tfiledia\.cc$")
    list(FILTER CLASSES_SRC EXCLUDE REGEX ".*tfileinp\.cc$")

    list(FILTER CLASSES_SRC EXCLUDE REGEX ".*fontcoll\.cc$") # Uses file API also

    list(FILTER COMPAT_SRC  EXCLUDE REGEX ".*expandpath\.c$")
    list(FILTER COMPAT_SRC  EXCLUDE REGEX ".*getcurdir\.c$")
    list(FILTER COMPAT_SRC  EXCLUDE REGEX ".*isrelpath\.c$")
    list(FILTER COMPAT_SRC  EXCLUDE REGEX ".*pathvalid\.c$")
    list(FILTER COMPAT_SRC  EXCLUDE REGEX ".*validfilename\.c$")

endif()

if(TV_TERMINAL)
   list(APPEND TV_DEFINITIONS TV_TERMINAL=1)
endif()

if(TV_NO_LOCALE_SUPPORT)
   list(APPEND TV_DEFINITIONS TV_NO_LOCALE_SUPPORT=1)
endif()


# https://cmake.org/cmake/help/latest/variable/CMAKE_SYSTEM_PROCESSOR.html
# https://stackoverflow.com/questions/11944060/how-to-detect-target-architecture-using-cmake


list(APPEND TV_DEFINITIONS CLY_ssize_t=1)

# https://cmake.org/cmake/help/v3.0/command/set.html
set(TV_DEFINITIONS ${TV_DEFINITIONS} PARENT_SCOPE)
add_compile_definitions(${TV_DEFINITIONS})


set(SOURCES ${COMPAT_SRC} ${NAMES_SRC} ${CLASSES_SRC} ${TV_ROOT}/drivers2.cc ${TV_ROOT}/histlist.cc ${TV_ROOT}/misc.cc ${TV_ROOT}/msgbox.cc ${TV_ROOT}/newstr.cc ${STREAM_SRC} ${PALTFROM_SOURCES})




source_group(TREE ${TV_ROOT} PREFIX "Sources" FILES ${SOURCES})


file(GLOB_RECURSE HEADERS "${TV_ROOT}/include/*.h")
source_group(TREE ${TV_ROOT}/include PREFIX "Headers" FILES ${HEADERS})

add_library(${PROJECT_NAME} ${SOURCES} ${HEADERS})
add_library(${PROJECT_NAME}::${PROJECT_NAME} ALIAS ${PROJECT_NAME})

target_include_directories(${PROJECT_NAME} PUBLIC  ${TV_ROOT}/include)
target_include_directories(${PROJECT_NAME} PRIVATE ${MODULE_ROOT}/..)

if(TV_MCU_COMPILE_DEFINITIONS)
    target_compile_definitions(${PROJECT_NAME} PRIVATE ${TV_MCU_COMPILE_DEFINITIONS})
endif()

if(TV_MCU_COMPILE_OPTIONS)
    target_compile_options(${PROJECT_NAME}     PRIVATE ${TV_MCU_COMPILE_OPTIONS})
endif()

if(TV_MCU_LINK_OPTIONS)
    target_link_options(${PROJECT_NAME}        PRIVATE ${TV_MCU_LINK_OPTIONS   })
endif()





# # list(FILTER sources EXCLUDE REGEX ".*CMakeCXXCompilerId\\.cpp$")
# source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} PREFIX "Sources" FILES ${sources})

