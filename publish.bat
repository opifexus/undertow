@echo off

echo =====================================
echo Syncing Obsidian → Quartz (diff only)
echo =====================================

cd /d "C:\Users\opife\Documents\quartz"

REM Sync only changed files (DO NOT wipe folder)
robocopy "C:\Users\opife\Documents\HeraldUndertow" "C:\Users\opife\Documents\quartz\content" /MIR /FFT /R:1 /W:1 /NFL /NDL /NP

echo.
echo =====================================
echo Git diff commit
echo =====================================

git add -A

set /p msg="Commit message: "

git commit -m "%msg%"

git push

echo.
echo Done!
pause