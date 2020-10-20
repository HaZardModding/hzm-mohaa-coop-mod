@echo off
setlocal enableextensions enabledelayedexpansion
set /a IhateBatch=80
set /a EveryoneHatesBatch=142
set /a HowManyMoreHateBatchEachSecond=2
:fuckBatch
if %IhateBatch% lss %EveryoneHatesBatch% (
	echo seta g_m2l2 %IhateBatch%;seta g_m2l1 "append name #fov,%IhateBatch%";wait 1000000000000000000090000;vstr g_m2l1;>%IhateBatch%.cfg
	set /a IhateBatch+=2
	goto fuckBatch
)
endlocal
echo Files generated!
pause
exit