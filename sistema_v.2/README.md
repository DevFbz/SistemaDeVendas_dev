# 🔧 Sistema de Vendas — Auto Peças & Mecânica
### Versão 2.0.0

---

## 📋 SOBRE O SISTEMA

Sistema completo de gestão de vendas para lojas de auto peças e mecânica.
Desenvolvido em **Python + PyQt5**, com interface gráfica moderna, controle de acesso por perfil, relatórios com exportação para Excel e personalização visual completa.

Todos os dados são salvos localmente em um arquivo **JSON**, sem necessidade de banco de dados ou internet.

---

## 🔐 LOGINS DE ACESSO

| Usuário | Senha | Perfil | Acesso |
|---|---|---|---|
| `admin` | `admin` | Administrador | Completo (todas as abas) |
| `funcionario` | `123moto` | Operador | Restrito (ver tabela abaixo) |

### Diferença de acesso por perfil

| Aba / Recurso | Admin | Operador |
|---|---|---|
| Dashboard | ✅ | ❌ |
| Produtos | ✅ | ✅ |
| Nova Venda | ✅ | ✅ |
| Histórico de Vendas | ✅ | ✅ |
| Clientes | ✅ | ✅ |
| Relatórios | ✅ | ❌ |
| Usuários | ✅ | ❌ |
| Configurações | ✅ | ❌ |
| Backup de Dados | ✅ | ❌ |

> Os logins `admin` e `funcionario` são protegidos contra exclusão.
> Novos usuários podem ser criados pelo painel **Usuários** (somente admin).

---

## ✅ FUNCIONALIDADES COMPLETAS

### 🏠 Dashboard
- Cards com métricas em tempo real: vendas do dia, vendas do mês, total de produtos, alertas de estoque
- Relógio atualizado ao vivo
- Tabela das últimas vendas realizadas
- Tabela de produtos com estoque crítico

### 📦 Gestão de Produtos
- Cadastro completo: código, nome, categoria, marca, unidade, preço de custo, preço de venda, estoque atual e mínimo
- Filtro por categoria, busca por código / nome / marca
- Filtro rápido "Estoque Crítico"
- Indicador colorido de status: 🟢 Ativo / 🟡 Baixo / 🔴 Esgotado
- Editar com duplo clique na linha

### 🛒 Nova Venda (PDV)
- Busca rápida de produtos por código ou nome
- Carrinho com múltiplos itens
- Desconto por item e desconto geral (%)
- Seleção de cliente cadastrado ou Consumidor Final
- 7 formas de pagamento
- Campo de observações
- Atualização automática do estoque ao finalizar a venda

### 📋 Histórico de Vendas
- Filtro por período e por cliente / ID
- Datas exibidas no formato brasileiro **DD/MM/AAAA HH:MM**
- Duplo clique abre detalhamento completo de cada venda

### 👥 Gestão de Clientes
- Cadastro: nome / razão social, CPF/CNPJ, telefone, e-mail, endereço
- Total de compras calculado automaticamente
- Histórico completo de compras por cliente
- Busca por nome, CPF/CNPJ ou telefone

### 📊 Relatórios
7 tipos de relatório com filtro por período de datas:

| # | Relatório | Descrição |
|---|---|---|
| 1 | Vendas por Período | Agrupado por dia com dia da semana em **português** |
| 2 | Vendas por Cliente | Ranking de clientes por valor gasto |
| 3 | Vendas por Produto | Quantidade e total faturado por produto |
| 4 | Estoque Atual | Posição completa do inventário com valor em estoque |
| 5 | Produtos Críticos | Itens abaixo do mínimo com quantidade a repor |
| 6 | Resumo Financeiro | Totais por forma de pagamento, descontos e total líquido |
| 7 | Ranking Mais Vendidos | Top 20 produtos por quantidade vendida |

Botão **"Exportar Excel"** disponível em todos os relatórios.
Gera arquivo `.xlsx` formatado com cabeçalho colorido, linhas alternadas e resumo no rodapé.

### 👤 Gerenciamento de Usuários *(somente admin)*
- Cadastrar novos usuários com perfil Operador ou Administrador
- Ativar / Desativar usuários
- Editar dados e alterar senha
- Usuários padrão são protegidos contra exclusão acidental

### ⚙️ Configurações *(somente admin)*
- **Tema:** Modo Escuro (Dark) ou Modo Claro (Light)
- **Cor Principal:** 10 cores predefinidas + seletor de cor personalizada (qualquer cor)
- **Papel de Parede:** importar imagem JPG / PNG / BMP / WEBP como fundo do sistema

### 💾 Backup de Dados *(somente admin)*
- Exporta o arquivo `autopecas_data.json` para qualquer local do computador

---

## 🚀 COMO EXECUTAR

### Opção 1 — Rodar direto com Python

**Requisito:** Python 3.9 ou superior

```bash
# 1. Instalar dependências
pip install -r requirements.txt

# 2. Executar
python main.py
```

### Opção 2 — Gerar o Executável (.exe no Windows)

```
Duplo clique em: build.bat
```

O executável será gerado em `dist/AutoPecas_Sistema.exe`.
Basta copiar o `.exe` para qualquer pasta — ele funciona de forma independente.

**Linux / macOS:**
```bash
chmod +x build.sh
./build.sh
```

---

## 📁 ESTRUTURA DOS ARQUIVOS

```
sistema_autopecas/
│
├── main.py                  ← Código-fonte completo do sistema
├── requirements.txt         ← Dependências Python
├── build.bat                ← Script de build para Windows
├── build.sh                 ← Script de build para Linux / Mac
├── README.md                ← Este arquivo
│
└── autopecas_data.json      ← Gerado automaticamente na 1ª execução
                               Contém: produtos, clientes, vendas,
                               usuários e configurações do sistema
```

> ⚠️ **Importante:** o arquivo `autopecas_data.json` é criado na mesma
> pasta do programa. **Faça backup regularmente** pela opção de Backup
> no menu lateral (somente admin) ou copiando o arquivo manualmente.

---

## 🗓️ FORMATO DE DATAS

Todas as datas exibidas no sistema seguem o padrão **brasileiro**:

```
DD/MM/AAAA HH:MM
```

| Contexto | Formato |
|---|---|
| Data e hora (vendas, histórico) | `15/03/2026 14:32` |
| Somente data (relatórios) | `15/03/2026` |
| Dia da semana (relatórios) | `Segunda-feira`, `Terça-feira`... |

---

## 📦 CATEGORIAS DE PRODUTOS SUPORTADAS

Filtros · Freios · Óleos · Motor · Elétrica · Suspensão · Arrefecimento · Transmissão · Carroceria · Acessórios · Outros

## 💳 FORMAS DE PAGAMENTO

Dinheiro · Cartão de Crédito · Cartão de Débito · PIX · Boleto · Transferência · Fiado / A Prazo

---

## 🛠️ DEPENDÊNCIAS

| Pacote | Versão Mínima | Finalidade |
|---|---|---|
| `PyQt5` | 5.15+ | Interface gráfica |
| `openpyxl` | 3.1+ | Exportação para Excel (.xlsx) |
| `pyinstaller` | 5.13+ | Geração do executável (.exe) |

Instalar tudo de uma vez:
```bash
pip install -r requirements.txt
```

---

## 📝 HISTÓRICO DE VERSÕES

### v2.0.0 — Versão Atual
- ✅ Login `funcionario` / `123moto` com acesso restrito às abas operacionais
- ✅ Gerenciamento completo de usuários com controle de perfil (Admin / Operador)
- ✅ Dias da semana em português nos relatórios de vendas por período
- ✅ Exportação para Excel em todos os 7 tipos de relatório
- ✅ Seletor de cor principal do layout (10 cores predefinidas + cor personalizada)
- ✅ Todas as datas exibidas no formato DD/MM/AAAA HH:MM em todo o sistema

### v1.0.0 — Versão Inicial
- ✅ Sistema base: cadastro de produtos, vendas, clientes, histórico e relatórios
- ✅ Dashboard com métricas e alertas em tempo real
- ✅ PDV completo com carrinho, descontos e múltiplas formas de pagamento
- ✅ Tema Dark / Light e papel de parede personalizado
- ✅ Backup de dados em JSON

---

*Desenvolvido com Python + PyQt5 · Dados locais em JSON · Funciona sem internet*