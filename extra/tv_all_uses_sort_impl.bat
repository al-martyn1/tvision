@rem https://stackoverflow.com/questions/12841024/using-windows-dos-shell-batch-commands-how-do-i-take-a-file-and-only-keep-uniqu
@echo off
setlocal disabledelayedexpansion
set "prev="
for /f "delims=" %%F in ('sort %~dp0\tv_all_uses.h.in') do (
  set "curr=%%F"
  setlocal enabledelayedexpansion
  if "!prev!" neq "!curr!" echo !curr!
  endlocal
  set "prev=%%F"
)