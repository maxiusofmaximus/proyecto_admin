@echo off
:: Comprobar permisos de administrador y pedir si no existen
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Corriendo con permisos de Administrador...
) else (
    echo Pidiendo permisos de Administrador...
    powershell -Command "Start-Process '%0' -Verb RunAs"
    exit /b
)

echo Actualizando fuentes de Winget...
winget source reset --force

echo Instalando herramientas de compilacion C++ (esto tardara varios minutos)...
winget install --id Microsoft.VisualStudio.2022.BuildTools --accept-package-agreements --accept-source-agreements --override "--add Microsoft.VisualStudio.Workload.VCTools --includeRecommended --passive --norestart"

if %errorLevel% == 0 (
    echo.
    echo [EXITO] Instalacion completada. 
    echo IMPORTANTE: Reinicia tu terminal o VS Code antes de hacer el pip install.
) else (
    echo.
    echo [ERROR] Algo fallo. Verifica tu conexion a internet o espacio en disco.
)
pause
