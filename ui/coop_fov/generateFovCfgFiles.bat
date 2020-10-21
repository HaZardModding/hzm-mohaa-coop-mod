@echo off
setlocal enableextensions enabledelayedexpansion
set /a IhateBatch=80
set /a EveryoneHatesBatch=142
set /a HowManyMoreHateBatchEachSecond=2
:fuckBatch
REM 01 is fov datatype keyword in coop
if %IhateBatch% lss %EveryoneHatesBatch% (
	echo seta g_m2l2 %IhateBatch%;seta g_m2l1 "append name ,1%IhateBatch%";vstr g_m2l1; //whitespace+,+number are identifiers, the numbers following are the fov to set>%IhateBatch%.cfg
	set /a IhateBatch+=2
	goto fuckBatch
)
endlocal
echo Files generated!
pause
exit