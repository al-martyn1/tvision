@rem Options - https://clang.llvm.org/docs/ClangFormatStyleOptions.html

@rem VSCode - https://marketplace.visualstudio.com/items?itemName=xaver.clang-format
@rem The default key-binding is Alt-Shift-F.
@rem MSVS - https://clang.llvm.org/docs/ClangFormat.html
@rem options sample - https://github.com/LunarVim/LunarVim/issues/2597
@some options in source files - https://chromium.googlesource.com/external/github.com/llvm/llvm-project/clang/tools/clang-format/+/d69c6a2ba2173ced79432daba87a4dd221bb3bcd/ClangFormat.cpp#152

@rem https://stackoverflow.com/questions/180741/how-to-do-something-to-each-file-in-a-directory-with-a-batch-script
@rem for /f %%f in ('dir /b c:\') do echo %%f
@rem for %%f in (*.*) do echo %%f



@rem clang-format --help >clang-format.txt

@set FMT_OPTS=
@rem --dry-run -Wno-clang-format-violations

@forfiles /P %~dp0. /M *.cc /S /C "cmd /c clang-format -i %FMT_OPTS% --style=file @path"
@forfiles /P %~dp0. /M *.h  /S /C "cmd /c clang-format -i %FMT_OPTS% --style=file @path"


