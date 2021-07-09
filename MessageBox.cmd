@echo off
setlocal disabledelayedexpansion
start cmd /v/c"@echo off&set px=10&set py=10&set p=#&set w=!p!&set mar=     &(for /l %%a in (2,1,!px!)do set w=!w!!p!)&(for %%a in (   "Your message here"   )do set "m=!w!%%~a!w!")&set s=.!m!&set l=0&(for /l %%a in (12,-1,0)do >nul set/a"l^|=1^<^<%%a"&for %%b in (!l!)do if "!s:~%%b,1!"=="" >nul set/a"l^&=~1^<^<%%a")&set wl=!p!&(for /l %%a in (2,1,!l!)do set wl=!wl!!p!)&(for /f %%a in ('"prompt $H^&echo on^&for %%b in (1) do rem"')do set b=%%a)&set/a l+=10&set/a y=!py!*2+5&mode con cols=!l! lines=!y!&echo(&(for /l %%a in (1,1,!py!)do echo .!b!!mar!!wl!)&echo .!b!!mar!!m!&title &(for /l %%a in (1,1,!py!)do echo .!b!!mar!!wl!)&echo(&echo(&start /b cmd /ctimeout -1 /nobreak^>nul"
endlocal
