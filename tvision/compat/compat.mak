# This file is automatically generated by RHIDE 1.4.9.1
# created with the command:
# gpr2mak compat.gpr
vpath_src=$(RHIDE_STDINC)
vpath %.c $(vpath_src)
vpath %.cc $(vpath_src)
vpath %.cpp $(vpath_src)
vpath %.C $(vpath_src)
vpath %.cxx $(vpath_src)
vpath %.s $(vpath_src)
vpath %.S $(vpath_src)
vpath %.p $(vpath_src)
vpath %.pas $(vpath_src)
vpath %.f $(vpath_src)
vpath %.for $(vpath_src)
vpath %.F $(vpath_src)
vpath %.fpp $(vpath_src)
vpath %.i $(vpath_src)
vpath %.ii $(vpath_src)
vpath %.m $(vpath_src)
vpath %.asm $(vpath_src)
vpath %.nsm $(vpath_src)
vpath_header=../include
vpath %.h $(vpath_header)
vpath %.hpp $(vpath_header)
vpath %.ha $(vpath_header)
vpath %.hd $(vpath_header)
vpath_obj=obj
vpath %.o $(vpath_obj)
FLAGS_FOR_SUBPROJECTS=RHIDE_OS_="$(RHIDE_OS_)" CFLAGS="$(CFLAGS)"\
	CXXFLAGS="$(CXXFLAGS)" LDFLAGS="$(LDFLAGS)" CPPFLAGS="$(CPPFLAGS)"
RHIDE_OS=$(RHIDE_OS_)
ifeq ($(strip $(RHIDE_OS)),)
ifneq ($(strip $(DJDIR)),)
RHIDE_OS_:=DJGPP
else
RHIDE_OS_:=$(patsubst CYGWIN%,CYGWIN,$(shell uname))
endif
endif

INCLUDE_DIRS=../include
LIB_DIRS=
C_DEBUG_FLAGS=-g
C_OPT_FLAGS=
C_WARN_FLAGS=
C_C_LANG_FLAGS=
C_CXX_LANG_FLAGS=
C_P_LANG_FLAGS=
C_FPC_LANG_FLAGS=
C_F_LANG_FLAGS=
C_ADA_LANG_FLAGS=
LIBS=
LD_EXTRA_FLAGS=
C_EXTRA_FLAGS=
LOCAL_OPT=$(subst ___~~~___, ,$(subst $(notdir $<)___,,$(filter $(notdir\
	$<)___%,$(LOCAL_OPTIONS))))

OBJFILES=obj/beep.o obj/drivevalid.o obj/expandpath.o obj/fexpand.o\
	obj/fileattrs.o obj/fileexists.o obj/filelength.o obj/fixpath.o\
	obj/fnmatch.o obj/getcurdir.o obj/getline.o obj/getopt.o\
	obj/getopt1.o obj/getshell.o obj/glob.o obj/globfree.o\
	obj/iffilelen.o obj/isdir.o obj/isrelpath.o obj/iswild.o obj/itoa.o\
	obj/mkstemp.o obj/nl_langinfo.o obj/ntdirent.o obj/pathvalid.o\
	obj/regex.o obj/releasec.o obj/snprintf.o obj/strlwr.o obj/strupr.o\
	obj/ticks.o obj/unc.o obj/unc_95.o obj/unc_nt.o obj/validfilename.o\
	obj/yieldpro.o
ALL_OBJFILES=obj/beep.o obj/drivevalid.o obj/expandpath.o obj/fexpand.o\
	obj/fileattrs.o obj/fileexists.o obj/filelength.o obj/fixpath.o\
	obj/fnmatch.o obj/getcurdir.o obj/getline.o obj/getopt.o\
	obj/getopt1.o obj/getshell.o obj/glob.o obj/globfree.o\
	obj/iffilelen.o obj/isdir.o obj/isrelpath.o obj/iswild.o obj/itoa.o\
	obj/mkstemp.o obj/nl_langinfo.o obj/ntdirent.o obj/pathvalid.o\
	obj/regex.o obj/releasec.o obj/snprintf.o obj/strlwr.o obj/strupr.o\
	obj/ticks.o obj/unc.o obj/unc_95.o obj/unc_nt.o obj/validfilename.o\
	obj/yieldpro.o
LIBRARIES=
SOURCE_NAME=$<
OUTFILE=$@
SPECIAL_CFLAGS=
SPECIAL_LDFLAGS=
PROG_ARGS=
SRC_DIRS=$(RHIDE_STDINC)
WUC=
EDITORS=
MAIN_TARGET=
PROJECT_ITEMS=beep.c drivevalid.c expandpath.c fexpand.c fileattrs.c\
	fileexists.c filelength.c fixpath.c fnmatch.c getcurdir.c getline.c\
	getopt.c getopt1.c getshell.c glob.c globfree.c iffilelen.cc\
	isdir.c isrelpath.c iswild.c itoa.c mkstemp.c nl_langinfo.c\
	ntdirent.c pathvalid.c regex.c releasec.c snprintf.c strlwr.c\
	strupr.c ticks.c unc.c unc_95.c unc_nt.c validfilename.c yieldpro.c
DEFAULT_MASK=*.[acfghimnops]*
RHIDE_BIN_DIR=/usr/bin
PASCAL_TYPE=GPC
GET_HOME=$(HOME)
CLEAN_FILES=$(MAIN_TARGET) $(OBJFILES)
RHIDE_GCC=gcc
RHIDE_AS=gcc
RHIDE_GXX=gcc
RHIDE_GPC=gpc
RHIDE_FPC=ppc386
RHIDE_AR=ar
RHIDE_LD=gcc
RHIDE_G77=g77
RHIDE_NASM=nasm
RHIDE_LD_PASCAL=gpc
RHIDE_LD_FPC=$(RHIDE_FPC) -E+
RHIDE_GNATBIND=gnatbind
RHIDE_RM=rm
RHIDE_ARFLAGS=rcs
RHIDE_TYPED_LIBS.f=g2c m
RHIDE_TYPED_LIBS.for=$(RHIDE_TYPED_LIBS.f)
RHIDE_TYPED_LIBS.F=$(RHIDE_TYPED_LIBS.f)
RHIDE_TYPED_LIBS.fpp=$(RHIDE_TYPED_LIBS.f)
RHIDE_TYPED_LIBS_GPC=gpc m
RHIDE_TYPED_LIBS_FPC=fpc
RHIDE_TYPED_LIBS.p=$(RHIDE_TYPED_LIBS_$(PASCAL_TYPE))
RHIDE_TYPED_LIBS.pas=$(RHIDE_TYPED_LIBS.p)
RHIDE_TYPED_LIBS.pp=$(RHIDE_TYPED_LIBS_FPC)
RHIDE_TYPED_LIBS_$(RHIDE_OS).cc=stdc++
RHIDE_TYPED_LIBS_Linux.cc=stdc++
RHIDE_TYPED_LIBS_DJGPP.cc=stdcxx
RHIDE_TYPED_LIBS.cc=$(RHIDE_TYPED_LIBS_$(RHIDE_OS).cc)
RHIDE_TYPED_LIBS.cpp=$(RHIDE_TYPED_LIBS.cc)
RHIDE_TYPED_LIBS.cxx=$(RHIDE_TYPED_LIBS.cc)
RHIDE_TYPED_LIBS.C=$(RHIDE_TYPED_LIBS.cc)
RHIDE_TYPED_LIBS.ii=$(RHIDE_TYPED_LIBS.cc)
RHIDE_TYPED_LIBS.l=fl
RHIDE_TYPED_LIBS.m=objc
RHIDE_TYPED_LIBS.adb=gnat
RHIDE_TYPED_LIBS_SUFFIXES=$(sort $(foreach item,$(PROJECT_ITEMS),$(suffix\
	$(item))))
RHIDE_TYPED_LIBS=$(foreach\
	suff,$(RHIDE_TYPED_LIBS_SUFFIXES),$(RHIDE_TYPED_LIBS$(suff)))
RHIDE_INCLUDES=$(SPECIAL_CFLAGS) $(addprefix -I,$(INCLUDE_DIRS))
RHIDE_LIBDIRS=$(addprefix -L,$(LIB_DIRS))
RHIDE_LIBS=$(addprefix -l,$(LIBS) $(RHIDE_TYPED_LIBS) $(RHIDE_OS_LIBS))
RHIDE_LDFLAGS=$(SPECIAL_LDFLAGS) $(addprefix -Xlinker ,$(LD_EXTRA_FLAGS))
RHIDE_NASM_TARGET_DJGPP=coff
RHIDE_NASM_TARGET_Linux=elf
RHIDE_NASM_TARGET=$(RHIDE_NASM_TARGET_$(RHIDE_OS))
RHIDE_COMPILE_NASM=$(RHIDE_NASM) -f $(RHIDE_NASM_TARGET) $(LOCAL_OPT) -o\
	$(OUTFILE)  $(SOURCE_NAME)
RHIDE_COMPILE_FORTRAN=$(RHIDE_G77) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS)\
	$(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_F_LANG_FLAGS) $(C_EXTRA_FLAGS)\
	$(LOCAL_OPT)  -c $(SOURCE_NAME) -o $(OUTFILE)
RHIDE_COMPILE_FORTRAN_FORCE=$(RHIDE_G77) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS)\
	$(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_F_LANG_FLAGS) $(C_EXTRA_FLAGS)\
	-x f77 $(LOCAL_OPT)  -c $(SOURCE_NAME) -o $(OUTFILE)
RHIDE_COMPILE_C=$(RHIDE_GCC) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS)\
	$(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_C_LANG_FLAGS) $(C_EXTRA_FLAGS)\
	$(RHIDE_OS_CFLAGS)  $(CPPFLAGS) $(CFLAGS) $(LOCAL_OPT) -c\
	$(SOURCE_NAME) -o $(OUTFILE)
RHIDE_COMPILE_C_FORCE=$(RHIDE_GCC) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS)\
	$(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_C_LANG_FLAGS) $(C_EXTRA_FLAGS)\
	-x c $(RHIDE_OS_CFLAGS)  $(CPPFLAGS) $(CFLAGS) $(LOCAL_OPT) -c\
	$(SOURCE_NAME) -o $(OUTFILE)
RHIDE_COMPILE_CC=$(RHIDE_GXX) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS)\
	$(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_C_LANG_FLAGS)\
	$(C_CXX_LANG_FLAGS) $(C_EXTRA_FLAGS)  $(RHIDE_OS_CXXFLAGS)\
	$(CPPFLAGS) $(CXXFLAGS) $(LOCAL_OPT)   -c $(SOURCE_NAME) -o\
	$(OUTFILE)
RHIDE_COMPILE_CC_FORCE=$(RHIDE_GXX) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS)\
	$(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_C_LANG_FLAGS)\
	$(C_CXX_LANG_FLAGS) $(C_EXTRA_FLAGS)  $(RHIDE_OS_CXXFLAGS)\
	$(CPPFLAGS) $(CXXFLAGS) -x c++ $(LOCAL_OPT)   -c $(SOURCE_NAME) -o\
	$(OUTFILE)
RHIDE_COMPILE_ASM=$(RHIDE_AS) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS)\
	$(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_EXTRA_FLAGS) $(LOCAL_OPT)  -c\
	$(SOURCE_NAME) -o $(OUTFILE)
RHIDE_COMPILE_ASM_FORCE=$(RHIDE_AS) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS)\
	$(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_EXTRA_FLAGS) -x assembler\
	$(LOCAL_OPT)  -c $(SOURCE_NAME) -o $(OUTFILE)
RHIDE_GPC_FLAGS=$(RHIDE_INCLUDES) $(C_DEBUG_FLAGS) $(C_OPT_FLAGS)\
	$(C_WARN_FLAGS)  $(C_P_LANG_FLAGS) $(C_EXTRA_FLAGS)
RHIDE_COMPILE_GPC=$(RHIDE_GPC) $(RHIDE_GPC_FLAGS) $(LOCAL_OPT)  -c\
	$(SOURCE_NAME) -o $(OUTFILE)
RHIDE_COMPILE_GPC_FORCE=$(RHIDE_GPC) $(RHIDE_GPC_FLAGS) -x pascal\
	$(LOCAL_OPT)  -c $(SOURCE_NAME) -o $(OUTFILE)
RHIDE_FPC_FLAGS=$(C_FPC_LANG_FLAGS) $(LOCAL_OPT) $(addprefix\
	-Up,$(INCLUDE_DIRS))  $(C_EXTRA_FLAGS)
RHIDE_COMPILE_FPC=$(RHIDE_FPC) $(RHIDE_FPC_FLAGS) -E- $(SOURCE_NAME)
RHIDE_COMPILE_FPC_FORCE=$(RHIDE_FPC) $(RHIDE_FPC_FLAGS) -B -E-\
	$(SOURCE_NAME)
RHIDE_COMPILE_LINK=$(RHIDE_LD) $(RHIDE_LIBDIRS) $(C_EXTRA_FLAGS) -o\
	$(OUTFILE)  $(OBJFILES) $(LIBRARIES) $(LDFLAGS) $(RHIDE_LDFLAGS)\
	$(RHIDE_LIBS)
RHIDE_COMPILE_LINK_GPC=$(RHIDE_LD_PASCAL) $(RHIDE_LIBDIRS) $(C_EXTRA_FLAGS)\
	-o $(OUTFILE)  $(OBJFILES) $(LIBRARIES) $(RHIDE_LDFLAGS) $(LDFLAGS)\
	$(RHIDE_LIBS)
RHIDE_COMPILE_LINK_GPC_AUTOMAKE=$(RHIDE_LD_PASCAL) $(RHIDE_LIBDIRS)  -o\
	$(OUTFILE) --automake $(RHIDE_GPC_FLAGS)  $(SOURCE_NAME)\
	$(LIBRARIES) $(LDFLAGS) $(RHIDE_LDFLAGS) $(RHIDE_LIBS)
RHIDE_COMPILE_PASCAL=$(RHIDE_COMPILE_$(PASCAL_TYPE))
RHIDE_COMPILE_PASCAL_FORCE=$(RHIDE_COMPILE_$(PASCAL_TYPE)_FORCE)
RHIDE_COMPILE_LINK_PASCAL_AUTOMAKE=$(RHIDE_COMPILE_LINK_$(PASCAL_TYPE)_AUTOMAKE)
RHIDE_COMPILE_LINK_PASCAL=$(RHIDE_COMPILE_LINK_$(PASCAL_TYPE))
RHIDE_FPC_LIBDIRS_$(RHIDE_OS)=/usr/local/lib /usr/lib /lib
RHIDE_FPC_LIBDIRS_Linux=/usr/local/lib /usr/lib /lib
RHIDE_FPC_LIBDIRS_DJGPP=$(DJDIR)/lib
RHIDE_FPC_LIBDIRS=$(RHIDE_FPC_LIBDIRS_$(RHIDE_OS))
RHIDE_FPC_LINK_FLAGS_$(RHIDE_OS)=$(RHIDE_LIBDIRS) $(addprefix\
	-L,$(RHIDE_FPC_LIBDIRS))
RHIDE_FPC_LINK_FLAGS_Linux=$(RHIDE_LIBDIRS) $(addprefix\
	-L,$(RHIDE_FPC_LIBDIRS))
RHIDE_FPC_LINK_FLAGS_DJGPP=-O coff-go32-exe $(RHIDE_LIBDIRS) $(addprefix\
	-L,$(RHIDE_FPC_LIBDIRS))
RHIDE_FPC_LINK_FLAGS=$(RHIDE_FPC_LINK_FLAGS_$(RHIDE_OS))
RHIDE_COMPILE_LINK_FPC=echo 'separate linking for FPK is not supported.\
	Please define a main source file in Project/Primary file.' 1>&2
RHIDE_COMPILE_LINK_FPC_AUTOMAKE=$(RHIDE_FPC) -o$(OUTFILE) $(SOURCE_NAME)\
	$(RHIDE_FPC_FLAGS) -E+
RHIDE_COMPILE_ARCHIVE=$(RHIDE_AR) $(RHIDE_ARFLAGS) $(OUTFILE)\
	$(ALL_OBJFILES)
RHIDE_COMPILE_ADA=$(RHIDE_GCC) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS)\
	$(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_C_LANG_FLAGS) $(C_EXTRA_FLAGS)\
	$(LOCAL_OPT)  $(C_ADA_LANG_FLAGS)  $(RHIDE_OS_CFLAGS) $(CPPFLAGS)\
	$(CFLAGS) -c $(SOURCE_NAME) -o $(OUTFILE)
RHIDE_ADA_BIND_FILE=$(addprefix _,$(setsuffix .c,$(OUTFILE)))
RHIDE_COMPILE_LINK_ADA_BIND=$(RHIDE_GNATBIND) -o $(RHIDE_ADA_BIND_FILE)\
	$(setsuffix .ali,$(OUTFILE))
RHIDE_COMPILE_LINK_ADA_LINK=$(RHIDE_LD) $(RHIDE_LIBDIRS) $(C_EXTRA_FLAGS) -o\
	$(OUTFILE)  $(RHIDE_ADA_BIND_FILE) $(OBJFILES) $(LIBRARIES)\
	$(LDFLAGS)  $(RHIDE_LDFLAGS) $(RHIDE_LIBS)
_RHIDE_COMPILE_LINK_ADA=$(RHIDE_COMPILE_LINK_ADA_BIND);\
	$(RHIDE_COMPILE_LINK_ADA_LINK);   $(RHIDE_RM)\
	$(RHIDE_ADA_BIND_FILE)
RHIDE_COMPILE_LINK_ADA=gnatbl $(RHIDE_LIBDIRS) $(C_EXTRA_FLAGS) -o\
	$(OUTFILE)  $(setsuffix .ali,$(OUTFILE)) $(LIBRARIES) $(LDFLAGS) \
	$(RHIDE_LDFLAGS) $(RHIDE_LIBS)
RHIDE_COMPILE.c.o=$(RHIDE_COMPILE_C)
RHIDE_COMPILE.cc.o=$(RHIDE_COMPILE_CC)
RHIDE_COMPILE.p.o=$(RHIDE_COMPILE_PASCAL)
RHIDE_COMPILE.pas.o=$(RHIDE_COMPILE.p.o)
RHIDE_COMPILE.pp.o=$(RHIDE_COMPILE_FPC)
RHIDE_COMPILE.pas.s.GPC=$(subst -c $(SOURCE_NAME),-S\
	$(SOURCE_NAME),$(RHIDE_COMPILE_GPC))
RHIDE_COMPILE.pas.s.FPC=$(RHIDE_COMPILE_FPC) -a -s
RHIDE_COMPILE.pas.s=$(RHIDE_COMPILE.pas.s.$(PASCAL_TYPE))
RHIDE_COMPILE.f.o=$(RHIDE_COMPILE_FORTRAN)
RHIDE_COMPILE.nsm.o=$(RHIDE_COMPILE_NASM)
RHIDE_COMPILE.s.o=$(RHIDE_COMPILE_ASM)
RHIDE_COMPILE.c.s=$(subst -c $(SOURCE_NAME),-S\
	$(SOURCE_NAME),$(RHIDE_COMPILE_C))
RHIDE_COMPILE.c.i=$(subst -c $(SOURCE_NAME),-E\
	$(SOURCE_NAME),$(RHIDE_COMPILE_C))
RHIDE_COMPILE.i.s=$(RHIDE_COMPILE.c.s)
RHIDE_COMPILE.cc.s=$(subst -c $(SOURCE_NAME),-S\
	$(SOURCE_NAME),$(RHIDE_COMPILE_CC))
RHIDE_COMPILE.cc.ii=$(subst -c $(SOURCE_NAME),-E\
	$(SOURCE_NAME),$(RHIDE_COMPILE_CC))
RHIDE_COMPILE.ii.s=$(RHIDE_COMPILE.cc.s)
RHIDE_COMPILE.cpp.o=$(RHIDE_COMPILE.cc.o)
RHIDE_COMPILE.cxx.o=$(RHIDE_COMPILE.cc.o)
RHIDE_COMPILE.C.o=$(RHIDE_COMPILE.cc.o)
RHIDE_COMPILE.pas.o=$(RHIDE_COMPILE.p.o)
RHIDE_COMPILE.for.o=$(RHIDE_COMPILE.f.o)
RHIDE_COMPILE.F.o=$(RHIDE_COMPILE.f.o)
RHIDE_COMPILE.fpp.o=$(RHIDE_COMPILE.f.o)
RHIDE_COMPILE.asm.o=$(RHIDE_COMPILE.nsm.o)
RHIDE_COMPILE.cpp.s=$(RHIDE_COMPILE.cc.s)
RHIDE_COMPILE.cxx.s=$(RHIDE_COMPILE.cc.s)
RHIDE_COMPILE.C.s=$(RHIDE_COMPILE.cc.s)
RHIDE_COMPILE.cpp.ii=$(RHIDE_COMPILE.cc.ii)
RHIDE_COMPILE.cxx.ii=$(RHIDE_COMPILE.cc.ii)
RHIDE_COMPILE.C.ii=$(RHIDE_COMPILE.cc.ii)
RHIDE_COMPILE.adb.o=$(RHIDE_COMPILE_ADA)
RHIDE_FSDB=fsdb $(OUTFILE) $(addprefix -p ,$(SRC_DIRS)) $(PROG_ARGS)
RHIDE_GDB=gdb $(OUTFILE) $(addprefix -d ,$(SRC_DIRS))
DEFAULT_GREP_MASK=*.[cfhmnps]*
RHIDE_GREP=grep -n $(prompt arguments for GREP,$(WUC) $(DEFAULT_GREP_MASK))
RHIDE_GPROF=gprof $(OUTFILE)
RHIDE_RLOG=$(shell rlog -R $(rlog_arg))
RHIDE_CO=$(shell co -q $(co_arg))
RHIDE_STANDARD_INCLUDES_$(RHIDE_OS)=$(addprefix /usr/,include include/sys\
	include/g++ include/g++/std)
RHIDE_STANDARD_INCLUDES_Linux=$(addprefix /usr/,include include/sys\
	include/g++ include/g++/std)
RHIDE_STANDARD_INCLUDES_DJGPP=$(addprefix $(DJDIR)/,include include/sys\
	lang/cxx lang/cxx/std)
RHIDE_STANDARD_INCLUDES=$(RHIDE_STANDARD_INCLUDES_$(RHIDE_OS))
RHIDE_CONFIG_DIRS_$(RHIDE_OS)=/usr/local/share/rhide /usr/share/rhide \
	/local/share/rhide /share/rhide
RHIDE_CONFIG_DIRS_Linux=/usr/local/share/rhide /usr/share/rhide \
	/local/share/rhide /share/rhide
RHIDE_CONFIG_DIRS_DJGPP=$(DJDIR)/share/rhide
RHIDE_CONFIG_DIRS_COMMON=$(RHIDE_CONFIG_DIRS_$(RHIDE_OS))\
	$(RHIDE_BIN_DIR)/../share/rhide
RHIDE_CONFIG_DIRS=. $(RHIDE_SHARE) $(GET_HOME)   $(RHIDE_CONFIG_DIRS_COMMON)\
	 $(addsuffix /SET,$(RHIDE_CONFIG_DIRS_COMMON))  $(SET_FILES)
RHIDE_PATH_SEPARATOR_$(RHIDE_OS)=:
RHIDE_PATH_SEPARATOR_Linux=:
RHIDE_PATH_SEPARATOR_DJGPP=;
RHIDE_PATH_SEPARATOR=$(RHIDE_PATH_SEPARATOR_$(RHIDE_OS))
RHIDE_EMPTY=
RHIDE_SPACE=$(RHIDE_EMPTY) $(RHIDE_EMPTY)
RHIDE_GCC=gcc
RHIDE_GXX=gcc
RHIDE_LD=gcc
RHIDE_AR=ar
RHIDE_ARFLAGS=rcs
RHIDE_OS_CFLAGS=-O2 -gstabs+3 -pipe
RHIDE_OS_CXXFLAGS=-O2 -gstabs+3 -pipe
RHIDE_STDINC=/usr/include /usr/local/include /usr/include/g++ /usr/local/include/g++ /usr/lib/gcc-lib /usr/local/lib/gcc-lib /usr/X11R6/include
TVSRC=../../include /usr/src/tvision/include /usr/include/rhtvision 
RHIDE_OS_LIBS=ncurses m gpm X11 Xmu
TVOBJ=/usr/lib ../../linuxso /usr/src/tvision/linuxso ../../linux /usr/src/tvision/linux /usr/X11R6/lib 
RHIDE_GCC=gcc
RHIDE_GXX=gcc
RHIDE_LD=gcc
RHIDE_AR=ar
RHIDE_ARFLAGS=rcs
RHIDE_OS_CFLAGS=-O2 -gstabs+3 -pipe
RHIDE_OS_CXXFLAGS=-O2 -gstabs+3 -pipe
RHIDE_STDINC=/usr/include /usr/local/include /usr/include/g++ /usr/local/include/g++ /usr/lib/gcc-lib /usr/local/lib/gcc-lib /usr/X11R6/include
TVSRC=../../include /usr/src/tvision/include /usr/include/rhtvision 
RHIDE_OS_LIBS=ncurses m gpm X11 Xmu
TVOBJ=/usr/lib ../../linuxso /usr/src/tvision/linuxso ../../linux /usr/src/tvision/linux /usr/X11R6/lib 
%.o: %.c
	$(RHIDE_COMPILE.c.o)
%.o: %.i
	$(RHIDE_COMPILE_C)
%.o: %.cc
	$(RHIDE_COMPILE.cc.o)
%.o: %.cpp
	$(RHIDE_COMPILE.cpp.o)
%.o: %.cxx
	$(RHIDE_COMPILE.cxx.o)
%.o: %.C
	$(RHIDE_COMPILE.C.o)
%.o: %.ii
	$(RHIDE_COMPILE_CC)
%.o: %.s
	$(RHIDE_COMPILE.s.o)
%.o: %.S
	$(RHIDE_COMPILE_ASM)
%.s: %.c
	$(RHIDE_COMPILE.c.s)
%.s: %.i
	$(RHIDE_COMPILE.i.s)
%.s: %.cc
	$(RHIDE_COMPILE.cc.s)
%.s: %.cpp
	$(RHIDE_COMPILE.cpp.s)
%.s: %.cxx
	$(RHIDE_COMPILE.cxx.s)
%.s: %.C
	$(RHIDE_COMPILE.C.s)
%.o: %.pas
	$(RHIDE_COMPILE.pas.o)
%.o: %.p
	$(RHIDE_COMPILE.p.o)
%.o: %.pp
	$(RHIDE_COMPILE.pp.o)
%.s: %.pas
	$(RHIDE_COMPILE.pas.s)
%.o: %.m
	$(RHIDE_COMPILE_OBJC)
%.o: %.f
	$(RHIDE_COMPILE.f.o)
%.o: %.for
	$(RHIDE_COMPILE.for.o)
%.o: %.F
	$(RHIDE_COMPILE.F.o)
%.o: %.fpp
	$(RHIDE_COMPILE.fpp.o)
%.o: %.asm
	$(RHIDE_COMPILE.asm.o)
%.o: %.nsm
	$(RHIDE_COMPILE.nsm.o)
%.o: %.adb
	$(RHIDE_COMPILE.adb.o)
%.i: %.c
	$(RHIDE_COMPILE.c.i)
%.s: %.c
	$(RHIDE_COMPILE.c.s)
%.ii: %.cc
	$(RHIDE_COMPILE.cc.ii)
%.s: %.cc
	$(RHIDE_COMPILE.cc.s)
%.ii: %.cpp
	$(RHIDE_COMPILE.cpp.ii)
%.s: %.cpp
	$(RHIDE_COMPILE.cpp.s)
%.ii: %.cxx
	$(RHIDE_COMPILE.cxx.ii)
%.s: %.cxx
	$(RHIDE_COMPILE.cxx.s)
%.ii: %.C
	$(RHIDE_COMPILE.C.ii)
%.s: %.C
	$(RHIDE_COMPILE.C.s)
include rhide.env
all::
clean::
	rm -f $(CLEAN_FILES)
DEPS_0= obj/beep.o obj/drivevalid.o obj/expandpath.o obj/fexpand.o\
	obj/fileattrs.o obj/fileexists.o obj/filelength.o obj/fixpath.o\
	obj/fnmatch.o obj/getcurdir.o obj/getline.o obj/getopt.o\
	obj/getopt1.o obj/getshell.o obj/glob.o obj/globfree.o\
	obj/iffilelen.o obj/isdir.o obj/isrelpath.o obj/iswild.o obj/itoa.o\
	obj/mkstemp.o obj/nl_langinfo.o obj/ntdirent.o obj/pathvalid.o\
	obj/regex.o obj/releasec.o obj/snprintf.o obj/strlwr.o obj/strupr.o\
	obj/ticks.o obj/unc.o obj/unc_95.o obj/unc_nt.o obj/validfilename.o\
	obj/yieldpro.o 
NO_LINK=
LINK_FILES=$(filter-out $(NO_LINK),$(DEPS_0))
TARGET_0:: $(DEPS_0)
DEPS_1=beep.c
obj/beep.o:: $(DEPS_1)
	$(RHIDE_COMPILE.c.o)
DEPS_2=drivevalid.c ../include/cl/needs.h ../include/tv/configtv.h
obj/drivevalid.o:: $(DEPS_2)
	$(RHIDE_COMPILE.c.o)
DEPS_3=expandpath.c ../include/compatlayer.h ../include/tv/configtv.h
obj/expandpath.o:: $(DEPS_3)
	$(RHIDE_COMPILE.c.o)
DEPS_4=fexpand.c ../include/cl/needs.h ../include/compatlayer.h\
	../include/tv/configtv.h
obj/fexpand.o:: $(DEPS_4)
	$(RHIDE_COMPILE.c.o)
DEPS_5=fileattrs.c ../include/compatlayer.h ../include/tv/configtv.h
obj/fileattrs.o:: $(DEPS_5)
	$(RHIDE_COMPILE.c.o)
DEPS_6=fileexists.c ../include/cl/unistd.h ../include/compatlayer.h\
	../include/tv/configtv.h
obj/fileexists.o:: $(DEPS_6)
	$(RHIDE_COMPILE.c.o)
DEPS_7=filelength.c ../include/cl/needs.h ../include/tv/configtv.h
obj/filelength.o:: $(DEPS_7)
	$(RHIDE_COMPILE.c.o)
DEPS_8=fixpath.c ../include/cl/needs.h ../include/cl/unistd.h\
	../include/compatlayer.h ../include/tv/configtv.h
obj/fixpath.o:: $(DEPS_8)
	$(RHIDE_COMPILE.c.o)
DEPS_9=fnmatch.c ../include/cl/needs.h ../include/tv/configtv.h
obj/fnmatch.o:: $(DEPS_9)
	$(RHIDE_COMPILE.c.o)
DEPS_10=getcurdir.c ../include/cl/needs.h ../include/cl/unistd.h\
	../include/compatlayer.h ../include/tv/configtv.h
obj/getcurdir.o:: $(DEPS_10)
	$(RHIDE_COMPILE.c.o)
DEPS_11=getline.c ../include/cl/needs.h ../include/tv/configtv.h
obj/getline.o:: $(DEPS_11)
	$(RHIDE_COMPILE.c.o)
DEPS_12=getopt.c ../include/cl/needs.h ../include/tv/configtv.h
obj/getopt.o:: $(DEPS_12)
	$(RHIDE_COMPILE.c.o)
DEPS_13=getopt1.c ../include/cl/needs.h ../include/tv/configtv.h
obj/getopt1.o:: $(DEPS_13)
	$(RHIDE_COMPILE.c.o)
DEPS_14=getshell.c ../include/compatlayer.h ../include/tv/configtv.h
obj/getshell.o:: $(DEPS_14)
	$(RHIDE_COMPILE.c.o)
DEPS_15=glob.c ../include/cl/needs.h ../include/tv/configtv.h
obj/glob.o:: $(DEPS_15)
	$(RHIDE_COMPILE.c.o)
DEPS_16=globfree.c ../include/cl/needs.h ../include/tv/configtv.h
obj/globfree.o:: $(DEPS_16)
	$(RHIDE_COMPILE.c.o)
DEPS_17=iffilelen.cc ../include/cl/needs.h ../include/compatlayer.h\
	../include/tv/configtv.h
obj/iffilelen.o:: $(DEPS_17)
	$(RHIDE_COMPILE.cc.o)
DEPS_18=isdir.c ../include/compatlayer.h ../include/tv/configtv.h
obj/isdir.o:: $(DEPS_18)
	$(RHIDE_COMPILE.c.o)
DEPS_19=isrelpath.c ../include/compatlayer.h ../include/tv/configtv.h
obj/isrelpath.o:: $(DEPS_19)
	$(RHIDE_COMPILE.c.o)
DEPS_20=iswild.c
obj/iswild.o:: $(DEPS_20)
	$(RHIDE_COMPILE.c.o)
DEPS_21=itoa.c ../include/cl/needs.h ../include/tv/configtv.h
obj/itoa.o:: $(DEPS_21)
	$(RHIDE_COMPILE.c.o)
DEPS_22=mkstemp.c ../include/cl/needs.h ../include/tv/configtv.h
obj/mkstemp.o:: $(DEPS_22)
	$(RHIDE_COMPILE.c.o)
DEPS_23=nl_langinfo.c ../include/cl/needs.h ../include/tv/configtv.h
obj/nl_langinfo.o:: $(DEPS_23)
	$(RHIDE_COMPILE.c.o)
DEPS_24=ntdirent.c ../include/cl/needs.h ../include/tv/configtv.h
obj/ntdirent.o:: $(DEPS_24)
	$(RHIDE_COMPILE.c.o)
DEPS_25=pathvalid.c ../include/compatlayer.h ../include/tv/configtv.h
obj/pathvalid.o:: $(DEPS_25)
	$(RHIDE_COMPILE.c.o)
DEPS_26=regex.c ../include/cl/needs.h ../include/tv/configtv.h
obj/regex.o:: $(DEPS_26)
	$(RHIDE_COMPILE.c.o)
DEPS_27=releasec.c ../include/tv/configtv.h
obj/releasec.o:: $(DEPS_27)
	$(RHIDE_COMPILE.c.o)
DEPS_28=snprintf.c ../include/cl/needs.h ../include/tv/configtv.h
obj/snprintf.o:: $(DEPS_28)
	$(RHIDE_COMPILE.c.o)
DEPS_29=strlwr.c ../include/cl/needs.h ../include/tv/configtv.h
obj/strlwr.o:: $(DEPS_29)
	$(RHIDE_COMPILE.c.o)
DEPS_30=strupr.c ../include/cl/needs.h ../include/tv/configtv.h
obj/strupr.o:: $(DEPS_30)
	$(RHIDE_COMPILE.c.o)
DEPS_31=ticks.c ../include/tv/configtv.h
obj/ticks.o:: $(DEPS_31)
	$(RHIDE_COMPILE.c.o)
DEPS_32=unc.c ../include/cl/needs.h ../include/tv/configtv.h
obj/unc.o:: $(DEPS_32)
	$(RHIDE_COMPILE.c.o)
DEPS_33=unc_95.c ../include/cl/needs.h ../include/tv/configtv.h
obj/unc_95.o:: $(DEPS_33)
	$(RHIDE_COMPILE.c.o)
DEPS_34=unc_nt.c ../include/cl/needs.h ../include/tv/configtv.h
obj/unc_nt.o:: $(DEPS_34)
	$(RHIDE_COMPILE.c.o)
DEPS_35=validfilename.c ../include/compatlayer.h ../include/tv/configtv.h
obj/validfilename.o:: $(DEPS_35)
	$(RHIDE_COMPILE.c.o)
DEPS_36=yieldpro.c ../include/tv/configtv.h
obj/yieldpro.o:: $(DEPS_36)
	$(RHIDE_COMPILE.c.o)
all:: TARGET_0
