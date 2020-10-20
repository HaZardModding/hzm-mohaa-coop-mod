@echo off
setlocal enableextensions enabledelayedexpansion
set /a IhateBatch=80
set /a EveryoneHatesBatch=142
set /a HowManyMoreHateBatchEachSecond=2
:fuckBatch
if %IhateBatch% lss %EveryoneHatesBatch% (
	echo addpopup "MENU" "%IhateBatch%"		command "exec ui/coop_fov/%IhateBatch%.cfg;"
	set /a IhateBatch+=2
	goto fuckBatch
)
endlocal
pause
exit