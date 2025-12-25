@echo off
echo ================================================
echo    BING REWARDS STEALTH - GENERADOR DE APK
echo ================================================
echo.

REM Verificar si Android SDK está instalado
if not defined ANDROID_HOME (
    echo [!] Android SDK no encontrado.
    echo.
    echo Opciones disponibles:
    echo.
    echo  1. Instalar Android Studio desde:
    echo     https://developer.android.com/studio
    echo.
    echo  2. Usar PWABuilder online (MAS FACIL):
    echo     a. Ejecuta: npm run serve
    echo     b. Ve a https://www.pwabuilder.com
    echo     c. Sube el proyecto o usa la URL local
    echo.
    echo  3. Usar el servidor local que ya esta corriendo:
    echo     http://localhost:3333
    echo.
    pause
    exit /b 1
)

echo [OK] Android SDK encontrado: %ANDROID_HOME%
echo.

cd android
echo [*] Compilando APK...
call gradlew.bat assembleDebug

if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Fallo al compilar la APK
    pause
    exit /b 1
)

echo.
echo ================================================
echo [OK] APK generada exitosamente!
echo.
echo Ubicacion:
echo android\app\build\outputs\apk\debug\app-debug.apk
echo ================================================
echo.

REM Copiar APK a la raiz
copy android\app\build\outputs\apk\debug\app-debug.apk BingRewardsStealth.apk
echo.
echo APK copiada a: BingRewardsStealth.apk
echo.
pause
