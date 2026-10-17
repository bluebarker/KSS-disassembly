@echo off

echo Assembling...

copy orig.sfc out.sfc
asar main.asm out.sfc

:checkmatch
fc "Kirby Super Star (USA).sfc" out.sfc > nul
if errorlevel 1 goto matchmiss

:matchsuccess
echo Compiled ROM matches!
goto done

:matchmiss
echo Compiled ROM does NOT match!

:done
pause