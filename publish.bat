@echo off

echo =====================================
echo Copying Obsidian files to Quartz...
echo =====================================

REM Delete old content
rmdir /s /q "C:\Users\opife\Documents\quartz\content"

REM Recreate content folder
mkdir "C:\Users\opife\Documents\quartz\content"

REM Copy vault contents
xcopy "C:\Users\opife\Documents\HeraldUndertow\*" "C:\Users\opife\Documents\quartz\content\" /E /H /C /I /Y

echo.
echo =====================================
echo Publishing website...
echo =====================================

cd /d "C:\Users\opife\Documents\quartz"

git add .

git commit -m "vault update"

git push

echo.
echo =====================================
echo Done! Website deployment started.
echo =====================================

pause