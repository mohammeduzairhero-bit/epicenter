@echo off
echo --------------------------------------------------
echo Setting up Mathmade Epicenter for Android...
echo --------------------------------------------------

:: Step 1: Install Dependencies
echo [1/3] Installing Capacitor dependencies...
call npm install

:: Step 2: Add Android if missing
if not exist "android" (
    echo [2/4] Adding Android platform...
    call npx cap add android
) else (
    echo [2/4] Android platform already exists, skipping add...
)

:: Step 3: Sync project
echo [3/4] Syncing Android project...
call npx cap sync android

:: Step 4: Open in Android Studio
echo [4/4] Attempting to open Android Studio...
call npx cap open android
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [!] NOTE: Could not open Android Studio automatically.
    echo Please open Android Studio manually, click "Open", and select this folder:
    echo --^> d:\epicenter\android
)

echo --------------------------------------------------
echo DONE!
echo --------------------------------------------------
pause
