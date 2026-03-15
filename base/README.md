# 🔧 Sistema de Vendas — Auto Peças & Mecânica
### Versão 1.0.0

---

## 📋 SOBRE O SISTEMA

Sistema completo de gestão de vendas para lojas de auto peças e mecânica. Desenvolvido em Python com interface gráfica moderna (PyQt5).

---

## ✅ FUNCIONALIDADES

| Módulo | Descrição |
|--------|-----------|
| 🏠 Dashboard | Visão geral com métricas, últimas vendas e alertas de estoque |
| 📦 Produtos | Cadastro completo de produtos com estoque, preços e categorias |
| 🛒 Nova Venda | PDV completo com carrinho, descontos e múltiplas formas de pagamento |
| 📋 Histórico | Consulta de todas as vendas com filtros por período e cliente |
| 👥 Clientes | Cadastro de clientes com histórico de compras |
| 📊 Relatórios | 7 tipos de relatórios com exportação para Excel |
| ⚙️ Configurações | Tema Dark/Light e papel de parede personalizado |
| 💾 Backup | Exportação do banco de dados JSON |

---

## 🚀 COMO USAR

### Opção 1 — Rodar direto com Python

**Pré-requisitos:** Python 3.9 ou superior

```bash
# 1. Instalar dependências
pip install -r requirements.txt

# 2. Executar
python main.py
```

### Opção 2 — Gerar o Executável (.exe no Windows)

**Windows:**
```
Duplo clique em: build.bat
```

**Linux / macOS:**
```bash
chmod +x build.sh
./build.sh
```

O executável será gerado na pasta `dist/`.

---

## 🔐 ACESSO AO SISTEMA

| Campo | Valor |
|-------|-------|
| **Usuário** | admin |
| **Senha** | admin |

---

## 📁 ESTRUTURA DOS ARQUIVOS

```
sistema_autopecas/
│
├── main.py                  ← Código principal do sistema
├── requirements.txt         ← Dependências Python
├── build.bat                ← Script de build Windows
├── build.sh                 ← Script de build Linux/Mac
├── README.md                ← Este arquivo
│
└── autopecas_data.json      ← Criado automaticamente ao executar
                               (guarda todos os dados do sistema)
```

> **📌 Importante:** O arquivo `autopecas_data.json` é criado
> automaticamente na primeira execução, na mesma pasta do executável.
> **Faça backup deste arquivo regularmente!**

---

## 📦 CATEGORIAS DE PRODUTOS SUPORTADAS

- Filtros (óleo, ar, combustível, cabine)
- Freios (pastilhas, discos, fluido, tambores)
- Óleos (motor, câmbio, direção)
- Motor (velas, correias, juntas)
- Elétrica (baterias, alternadores, velas)
- Suspensão (amortecedores, buchas, pivôs)
- Arrefecimento (radiadores, termostatos, bomba d'água)
- Transmissão
- Carroceria
- Acessórios
- Outros

---

## 💳 FORMAS DE PAGAMENTO SUPORTADAS

- Dinheiro
- Cartão de Crédito
- Cartão de Débito
- PIX
- Boleto
- Transferência
- Fiado / A Prazo

---

## 📊 RELATÓRIOS DISPONÍVEIS

1. **Vendas por Período** — Vendas agrupadas por dia
2. **Vendas por Cliente** — Ranking de clientes por valor gasto
3. **Vendas por Produto** — Quais produtos foram mais vendidos
4. **Estoque Atual** — Posição completa do inventário
5. **Produtos Críticos** — Produtos abaixo do estoque mínimo
6. **Resumo Financeiro** — Totais por forma de pagamento
7. **Ranking dos Mais Vendidos** — Top 20 produtos

Todos os relatórios podem ser **exportados para Excel (.xlsx)** com formatação profissional.

---

## 🎨 PERSONALIZAÇÃO

Acesse **Opções → Configurações** para:
- Alternar entre **Modo Escuro** e **Modo Claro**
- Importar uma **imagem de fundo** personalizada (JPG, PNG, BMP, WEBP)

---

## 🛠️ DEPENDÊNCIAS

| Pacote | Versão | Função |
|--------|--------|--------|
| PyQt5 | ≥ 5.15 | Interface gráfica |
| openpyxl | ≥ 3.1 | Exportação Excel |
| PyInstaller | ≥ 5.13 | Geração do executável |

---

## 📞 SUPORTE

Dados salvos em: `autopecas_data.json` (na pasta do programa)

Em caso de problemas, verifique:
1. Python 3.9+ instalado
2. Todas as dependências instaladas (`pip install -r requirements.txt`)
3. Permissão de escrita na pasta do programa

---

*Sistema desenvolvido com Python + PyQt5*
