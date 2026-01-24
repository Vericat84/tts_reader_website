@echo off
REM Script para preparar archivos antes de subir a vmad.eu
REM Autor: Scanio Project
REM Fecha: 24 Enero 2026

echo ========================================
echo  PREPARACION PARA SUBIR A VMAD.EU
echo ========================================
echo.

REM Verificar que estamos en la carpeta correcta
if not exist "index.html" (
    echo ERROR: Este script debe ejecutarse desde la carpeta web\scanio\
    pause
    exit /b 1
)

echo [1/4] Verificando archivos necesarios...
set MISSING=0

if not exist "index.html" (
    echo   X index.html FALTA
    set MISSING=1
) else (
    echo   + index.html OK
)

if not exist "privacy-policy.html" (
    echo   X privacy-policy.html FALTA
    set MISSING=1
) else (
    echo   + privacy-policy.html OK
)

if not exist "terms-conditions.html" (
    echo   X terms-conditions.html FALTA
    set MISSING=1
) else (
    echo   + terms-conditions.html OK
)

if not exist "support.html" (
    echo   X support.html FALTA
    set MISSING=1
) else (
    echo   + support.html OK
)

if not exist "assets\css\style.css" (
    echo   X assets\css\style.css FALTA
    set MISSING=1
) else (
    echo   + assets\css\style.css OK
)

if not exist "assets\js\main.js" (
    echo   X assets\js\main.js FALTA
    set MISSING=1
) else (
    echo   + assets\js\main.js OK
)

echo.
echo [2/4] Verificando imagenes...

if not exist "assets\images\" (
    mkdir "assets\images"
    echo   ! Carpeta assets\images creada
)

if not exist "assets\images\scanio-icon.png" (
    echo   ! PENDIENTE: Copiar icono de la app
    echo     Ejecuta: copy ..\..\app\src\main\res\mipmap-xxxhdpi\ic_launcher.png assets\images\scanio-icon.png
) else (
    echo   + scanio-icon.png OK
)

echo.
echo [3/4] Creando archivo ZIP para subir...

REM Crear ZIP usando PowerShell
powershell -command "Compress-Archive -Path * -DestinationPath ..\scanio-web.zip -Force"

if exist "..\scanio-web.zip" (
    echo   + ZIP creado: web\scanio-web.zip
) else (
    echo   X Error al crear ZIP
)

echo.
echo [4/4] Resumen:
echo.
echo Archivos listos para subir a vmad.eu
echo.
echo OPCIONES DE SUBIDA:
echo.
echo A) SUBIR VIA FTP/SFTP:
echo    1. Abre FileZilla o tu cliente FTP
echo    2. Conecta a: vmad.eu
echo    3. Usuario: [tu-usuario]
echo    4. Navega a: /public_html/ o /var/www/html/
echo    5. Crea carpeta: scanio
echo    6. Sube TODO el contenido de esta carpeta
echo.
echo B) SUBIR VIA PANEL DE CONTROL (cPanel/Plesk):
echo    1. Accede al panel de control de vmad.eu
echo    2. Ve a "Administrador de Archivos"
echo    3. Navega a public_html/
echo    4. Crea carpeta "scanio"
echo    5. Sube el archivo scanio-web.zip
echo    6. Extrae el ZIP en el servidor
echo.
echo C) SUBIR VIA GIT (si vmad.eu usa Git):
echo    Ver instrucciones en README.md
echo.
echo VERIFICACION DESPUES DE SUBIR:
echo    https://vmad.eu/scanio/
echo    https://vmad.eu/scanio/privacy-policy.html
echo.
pause
