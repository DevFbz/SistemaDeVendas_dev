#!/bin/bash
echo "============================================================"
echo "    BUILD - SISTEMA AUTO PEÇAS & MECÂNICA"
echo "============================================================"
echo

# Verificar Python
if ! command -v python3 &>/dev/null; then
    echo "[ERRO] Python3 não encontrado."
    exit 1
fi

echo "[1/4] Instalando dependências..."
pip3 install -r requirements.txt --quiet || { echo "[ERRO] Falha nas dependências."; exit 1; }

echo "[2/4] Limpando builds anteriores..."
rm -rf dist build AutoPecas_Sistema.spec 2>/dev/null

echo "[3/4] Compilando executável..."
pyinstaller \
    --onefile \
    --windowed \
    --name="AutoPecas_Sistema" \
    --hidden-import=PyQt5.sip \
    --hidden-import=openpyxl \
    --hidden-import=openpyxl.styles \
    --hidden-import=openpyxl.utils \
    main.py

if [ $? -ne 0 ]; then
    echo "[ERRO] Falha na compilação."
    exit 1
fi

echo "[4/4] Ajustando permissões..."
chmod +x dist/AutoPecas_Sistema

echo
echo "============================================================"
echo "    BUILD CONCLUÍDO!"
echo "    Executável: dist/AutoPecas_Sistema"
echo "============================================================"
