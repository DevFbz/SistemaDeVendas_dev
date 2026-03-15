@echo off
chcp 65001 >nul
echo ============================================================
echo     BUILD - SISTEMA AUTO PECAS ^& MECANICA v2.0
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
pip install pyinstaller PyQt5 openpyxl --quiet
if %errorlevel% neq 0 (
    echo [ERRO] Falha ao instalar dependencias.
    pause
    exit /b 1
)

echo [2/4] Limpando builds anteriores...
if exist "dist" rmdir /s /q dist
if exist "build" rmdir /s /q build
if exist "AutoPecas_Sistema.spec" del AutoPecas_Sistema.spec

echo [3/4] Compilando executavel...
pyinstaller --onefile --windowed --name=AutoPecas_Sistema --hidden-import=PyQt5.sip --hidden-import=openpyxl --hidden-import=openpyxl.styles --hidden-import=openpyxl.utils --hidden-import=openpyxl.styles.fonts --hidden-import=openpyxl.styles.fills --hidden-import=openpyxl.styles.alignment --hidden-import=openpyxl.styles.borders --hidden-import=openpyxl.utils.cell main.py

if %errorlevel% neq 0 (
    echo.
    echo [ERRO] Falha na compilacao. Verifique o log acima.
    pause
    exit /b 1
)

echo [4/4] Copiando arquivos extras...
copy README.md "dist\" >nul 2>&1
copy autopecas_data.json "dist\" >nul 2>&1

echo.
echo ============================================================
echo     BUILD CONCLUIDO COM SUCESSO!
echo     Executavel: dist\AutoPecas_Sistema.exe
echo.
echo     Para distribuir, copie apenas a pasta dist\
echo     O arquivo autopecas_data.json sera criado
echo     automaticamente na primeira execucao.
echo ============================================================
echo.
pause
