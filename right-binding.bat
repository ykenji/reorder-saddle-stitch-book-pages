@echo off

setlocal ENABLEDELAYEDEXPANSION

rem add arg to array
set i=0
for %%f in (%*) do (
  set args[!i!]=%%~nxf
  set /a i=i+1
)


rem change files name
set i=0
set m=0
set n=-1
for %%i in (%*) do set /a n=!n!+1
for %%f in (%*) do (
  set /a a=!i!%%4
  if !a!==1 (
     call ren %%f %%args[!n!]%%.tmp
     set /a n=!n!-1
  ) else if !a!==0 (
     call ren %%f %%args[!m!]%%.tmp
     set /a m=!m!+1
  ) else if !a!==3 (
     call ren %%f %%args[!m!]%%.tmp
     set /a m=!m!+1
  ) else (
     call ren %%f %%args[!n!]%%.tmp
     set /a n=!n!-1
  )
  set /a i=!i!+1
)

rem remove .tmp
for %%f in (%*) do (
  ren %%f.tmp %%~nxf
)

rem pause