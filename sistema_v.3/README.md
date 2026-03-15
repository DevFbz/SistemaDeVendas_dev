# 🔧 Sistema de Vendas — Auto Peças & Mecânica
### Versão 3.0.0

---

## 📋 SOBRE O SISTEMA

Sistema completo de gestão de vendas para lojas de auto peças e mecânica.
Desenvolvido em **Python + PyQt5**, com interface gráfica moderna, controle de acesso por perfil, geração de nota fiscal em PDF, cancelamento de vendas com autenticação, relatórios com exportação para Excel e personalização visual completa.

Todos os dados são salvos localmente em um arquivo **JSON**, sem necessidade de banco de dados ou internet.

---

## 🔐 LOGINS DE ACESSO

| Usuário | Senha | Perfil |
|---|---|---|
| `admin` | `admin` | Administrador — acesso completo |
| `funcionario` | `123moto` | Operador — acesso restrito |

> Os logins `admin` e `funcionario` são protegidos e não podem ser excluídos.
> Novos usuários podem ser criados no painel **Usuários** (somente admin).

---

## 🔒 PERMISSÕES POR PERFIL

| Aba / Recurso | Admin | Operador |
|---|---|---|
| Dashboard | ✅ | ❌ |
| Produtos | ✅ | ✅ |
| Nova Venda | ✅ | ✅ |
| Emitir Nota Fiscal (PDF) | ✅ | ✅ |
| Histórico de Vendas | ✅ | ✅ |
| Cancelar Venda | ✅ livre | ✅ com senha |
| Excluir Venda | ✅ livre | ✅ com senha |
| Clientes | ✅ | ✅ |
| Relatórios | ✅ | ❌ |
| Exportar Excel | ✅ | ❌ |
| Usuários | ✅ | ❌ |
| Configurações | ✅ | ❌ |
| Backup de Dados | ✅ | ❌ |
| Trocar Conta | ✅ | ✅ |

---

## ✅ FUNCIONALIDADES COMPLETAS

### 🏠 Dashboard
- Cards com métricas em tempo real: vendas do dia, vendas do mês, total de produtos e alertas de estoque
- Relógio atualizado ao vivo
- Tabela das últimas vendas realizadas
- Tabela de produtos com estoque crítico

---

### 📦 Gestão de Produtos
- **Código gerado automaticamente** com base no nome do produto em tempo real
- Cadastro completo: código, nome, categoria, marca, unidade, preço de custo, preço de venda, estoque atual e mínimo
- Filtro por categoria, busca por código / nome / marca
- Filtro rápido "Estoque Crítico"
- Indicador colorido de status: 🟢 Ativo / 🟡 Baixo / 🔴 Esgotado
- Editar com duplo clique na linha

**Como funciona o código automático:**

| Nome digitado | Código gerado |
|---|---|
| Filtro de Oleo | `FIDO001` |
| Pastilha Freio Dianteira | `PAFD001` |
| Bateria | `BATE001` |
| Oleo 5W30 Sintetico | `OL5S001` |

> Ao **editar** um produto existente, o campo código fica livre para editar manualmente.

---

### 🛒 Nova Venda (PDV)
- Busca rápida de produtos por código ou nome
- Carrinho com múltiplos itens
- Desconto por item e desconto geral (%)
- Seleção de cliente cadastrado ou Consumidor Final
- 7 formas de pagamento
- Campo de observações
- Atualização automática do estoque ao finalizar
- Botão **"Emitir Nota Fiscal (PDF)"** disponível a qualquer momento

---

### 🧾 Nota Fiscal em PDF
- Gerada diretamente na aba Nova Venda antes ou após finalizar
- Layout profissional com cabeçalho da loja
- Dados completos do cliente (nome, CPF/CNPJ, telefone, endereço)
- Tabela de itens: código, produto, quantidade, preço unitário, desconto e total
- Quadro de totais: subtotal, desconto e total em destaque
- Forma de pagamento e observações da venda
- Rodapé com data, hora e versão do sistema
- Opção de abrir o arquivo imediatamente para impressão
- Salvo no local escolhido pelo usuário (formato `.pdf`)

---

### 📋 Histórico de Vendas
- Filtro por período e por cliente / ID
- Coluna **Status** — 🟢 Concluída / 🔴 Cancelada
- Vendas canceladas ficam acinzentadas para fácil identificação
- Checkbox **"Mostrar canceladas"** — por padrão ficam ocultas
- Duplo clique abre detalhamento completo com botões de ação
- Datas no formato brasileiro **DD/MM/AAAA HH:MM** em todo o sistema

#### 🚫 Cancelar Venda
- Marca a venda como **Cancelada** e registra data/hora do cancelamento
- **Restaura o estoque** de todos os produtos automaticamente
- Venda permanece visível no histórico com status "Cancelada"

| Perfil | Comportamento |
|---|---|
| **Admin** | Confirmação direta, sem senha |
| **Operador** | Exige a senha `admin` para autorizar o cancelamento |

#### 🗑️ Excluir Venda
- Remove a venda **permanentemente** do sistema (ação irreversível)
- O estoque **não** é restaurado automaticamente — cancele antes se quiser restaurar

| Perfil | Comportamento |
|---|---|
| **Admin** | Confirmação direta, sem senha |
| **Operador** | Exige a senha `admin` para autorizar a exclusão |

> **Dica:** sempre cancele antes de excluir para garantir que o estoque seja restaurado.

---

### 👥 Gestão de Clientes
- Cadastro: nome / razão social, CPF/CNPJ, telefone, e-mail, endereço
- Total de compras calculado automaticamente
- Histórico completo de compras por cliente
- Busca por nome, CPF/CNPJ ou telefone

---

### 📊 Relatórios
7 tipos de relatório com filtro por período de datas:

| # | Relatório | Descrição |
|---|---|---|
| 1 | Vendas por Período | Por dia com dia da semana em **português** |
| 2 | Vendas por Cliente | Ranking por valor gasto |
| 3 | Vendas por Produto | Quantidade e total por produto |
| 4 | Estoque Atual | Inventário completo com valor em estoque |
| 5 | Produtos Críticos | Itens abaixo do mínimo com qtd. a repor |
| 6 | Resumo Financeiro | Totais por forma de pagamento e líquido |
| 7 | Ranking Mais Vendidos | Top 20 por quantidade |

Botão **"Exportar Excel"** em todos os relatórios — gera `.xlsx` formatado com cabeçalho colorido, linhas alternadas e resumo no rodapé.

---

### 👤 Gerenciamento de Usuários *(somente admin)*
- Cadastrar com perfil Operador ou Administrador
- Ativar / Desativar usuários
- Editar dados e alterar senha
- Usuários padrão (`admin` e `funcionario`) são protegidos contra exclusão

---

### ⚙️ Configurações *(somente admin)*
- **Tema:** Modo Escuro ou Modo Claro
- **Cor Principal:** 10 cores predefinidas + seletor de cor personalizada (qualquer cor)
- **Papel de Parede:** importar imagem JPG / PNG / BMP / WEBP como fundo

---

### 🔄 Trocar Conta *(todos os usuários)*
- Botão no menu lateral que retorna à tela de login sem fechar o programa
- Permite alternar entre Admin e Operador sem reiniciar o sistema

---

### 💾 Backup de Dados *(somente admin)*
- Exporta o `autopecas_data.json` para qualquer local escolhido

---

## 🗓️ FORMATO DE DATAS

Todas as datas exibidas seguem o padrão **brasileiro** em todo o sistema:

| Contexto | Formato |
|---|---|
| Vendas, histórico, nota fiscal | `15/03/2026 14:32` |
| Cancelamento de venda | `15/03/2026 14:32` |
| Relatórios por data | `15/03/2026` |
| Dia da semana nos relatórios | `Segunda-feira`, `Terça-feira`... |

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

O executável é gerado em `dist/AutoPecas_Sistema.exe` e funciona de forma independente.

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

> ⚠️ **Importante:** o `autopecas_data.json` fica na mesma pasta do programa.
> Use a opção **Backup** no menu lateral para salvar uma cópia regularmente.

---

## 🛠️ DEPENDÊNCIAS

| Pacote | Versão Mínima | Finalidade |
|---|---|---|
| `PyQt5` | 5.15+ | Interface gráfica |
| `openpyxl` | 3.1+ | Exportação para Excel (.xlsx) |
| `reportlab` | 3.6+ | Geração de Nota Fiscal em PDF |
| `pyinstaller` | 5.13+ | Geração do executável (.exe) |

Instalar tudo de uma vez:
```bash
pip install -r requirements.txt
```

---

## 📝 HISTÓRICO DE VERSÕES

### v3.0.0 — Versão Atual
- ✅ Código do produto gerado automaticamente pelo nome (em tempo real)
- ✅ Nota Fiscal em PDF com layout profissional (cabeçalho, tabela de itens, totais, rodapé)
- ✅ Botão "Trocar Conta" — alterna usuário sem fechar o sistema
- ✅ Cancelar venda com restauração automática de estoque
- ✅ Excluir venda permanentemente
- ✅ Senha de autorização (`admin`) exigida do Operador para cancelar ou excluir
- ✅ Coluna "Status" no Histórico — Concluída / Cancelada
- ✅ Vendas canceladas acinzentadas na tabela; checkbox para exibir/ocultar

### v2.0.0
- ✅ Login `funcionario` / `123moto` com acesso restrito
- ✅ Gerenciamento de usuários com perfis Admin e Operador
- ✅ Dias da semana em português nos relatórios
- ✅ Exportação para Excel em todos os 7 relatórios
- ✅ Seletor de cor principal do layout (10 cores + personalizada)
- ✅ Datas no formato DD/MM/AAAA HH:MM em todo o sistema

### v1.0.0
- ✅ Sistema base: produtos, vendas, clientes, histórico e relatórios
- ✅ Dashboard com métricas e alertas em tempo real
- ✅ PDV com carrinho, descontos e múltiplas formas de pagamento
- ✅ Tema Dark / Light e papel de parede personalizado
- ✅ Backup de dados em JSON

---

*Desenvolvido com Python + PyQt5 · Dados locais em JSON · Funciona sem internet*