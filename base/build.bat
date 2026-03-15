@echo off
chcp 65001 >nul
echo ============================================================
echo     BUILD - SISTEMA AUTO PECAS ^& MECANICA
echo ============================================================
echo.

REM Verificar Python
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERRO] Python nao encontrado. Instale o Python 3.9+ e tente novamente.
    pause
    exit /b 1
)

echo [1/4] Instalando dependencias...
pip install -r requirements.txt --quiet
if %errorlevel% neq 0 (
    echo [ERRO] Falha ao instalar dependencias.
    pause
    exit /b 1
)

echo [2/4] Limpando builds anteriores...
if exist "dist" rmdir /s /q dist
if exist "build" rmdir /s /q build
if exist "AutoPecas.spec" del AutoPecas.spec

echo [3/4] Compilando executavel...
pyinstaller ^
    --onefile ^
    --windowed ^
    --name="AutoPecas_Sistema" ^
    --icon=NONE ^
    --add-data "." ^
    --hidden-import=PyQt5.sip ^
    --hidden-import=openpyxl ^
    --hidden-import=openpyxl.styles ^
    --hidden-import=openpyxl.utils ^
    main.py

if %errorlevel% neq 0 (
    echo [ERRO] Falha na compilacao.
    pause
    exit /b 1
)

echo [4/4] Copiando arquivos...
if not exist "dist\dados" mkdir "dist\dados"
copy README.md "dist\" >nul 2>&1

echo.
echo ============================================================
echo     BUILD CONCLUIDO COM SUCESSO!
echo     Executavel: dist\AutoPecas_Sistema.exe
echo ============================================================
echo.
pause
