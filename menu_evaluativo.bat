@echo off
title Compilador de Proyecto Menu C++
cls

echo ===================================================
echo           COMPILANDO PROYECTO MODULAR
echo ===================================================
echo.

:: 1. Compilacion y enlace de todos los archivos .cpp
echo [*] Compilando archivos fuentes...
g++ main.cpp utilidades.cpp operaciones_basicas.cpp operaciones_variadas.cpp submenus.cpp -o programa.exe

:: 2. Verificacion de errores
if %errorlevel% equ 0 (
    echo.
    echo [OK] Compilacion exitosa. Creando ejecutable...
    echo ---------------------------------------------------
    echo [*] Iniciando programa.exe...
    echo ---------------------------------------------------
    echo.
    programa.exe
) else (
    echo.
    echo [ERROR] Hubo un fallo en la compilacion. Revisa el codigo.
    echo.
    pause
)