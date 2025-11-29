# Arena Pinheiro - Sistema de Gerenciamento

Este repositório contém os artefatos da **Entrega 3 (Trabalho Final)** da disciplina de **Fundamentos de Banco de Dados** da Universidade Federal do Ceará (Campus Quixadá).

## 📋 Sobre o Projeto

O projeto **Arena Pinheiro** tem como objetivo o desenvolvimento de um sistema de gerenciamento de reservas, controle financeiro e de estoque para o *Pinheiro Society*.

A solução busca automatizar processos realizados manualmente, garantindo:
* Gestão completa de reservas de campos e bloqueio automático para clientes fixos.
* Controle do bar e estoque.
* Agilidade e confiabilidade no agendamento, edição e cancelamento de reservas.

## 👥 Equipe

| Matrícula | Nome | Email |
| :--- | :--- | :--- |
| 570889 | Ana Leticia Oliveira Mesquita | ana.mesquita@alu.ufc.br |
| 569466 | João Gabriel Costa Leandro | joaogcl@alu.ufc.br |
| 566808 | Pedro Altino Oliveira Mesquita | pedroalt@alu.ufc.br |

## 🛠️ Tecnologias e Ferramentas

* **SGBD:** PostgreSQL.
* **Modelagem:** ERD Tool do pgAdmin 4 (para transcrição do modelo relacional e geração de DDL).
* **Linguagem:** SQL (DDL para criação do esquema e DML para inserção/atualização de dados).

## 🗃️ Consultas SQL Implementadas

O sistema conta com 12 consultas estratégicas para a gestão do negócio:

### 1. Relação Hierárquica de Cadastros
* **Descrição:** Lista a relação hierárquica, retornando o funcionário e o administrador responsável pelo seu cadastro.
* **Tabelas:** `Funcionario`, `Usuario`.

### 2. Consumo por Comanda
* **Descrição:** Detalha os produtos consumidos em cada comanda, incluindo data, quantidade e o garçom responsável.
* **Tabelas:** `Item_Comanda`, `Produto`, `Comanda`, `Funcionario`, `Usuario`.

### 3. Reservas Confirmadas
* **Descrição:** Lista as reservas ativas, mostrando cliente, campo reservado e o funcionário/admin que registrou a operação.
* **Tabelas:** `Reserva`, `Cliente`, `Campo`, `Usuario`.

### 4. Histórico de Compras de Clientes
* **Descrição:** Exibe o histórico de consumo dos clientes, detalhando produtos e formas de pagamento utilizadas.
* **Tabelas:** `Cliente`, `Comanda`, `Item_Comanda`, `Produto`, `Pag_Comanda`, `Pagamento`.

### 5. Alerta de Estoque Baixo
* **Descrição:** Monitoramento de estoque que lista produtos com quantidade abaixo do mínimo exigido e o administrador responsável pelo cadastro.
* **Tabelas:** `Estoque`, `Produto`, `Administrador`, `Usuario`.

### 6. Produtos Mais Vendidos
* **Descrição:** Ranking de produtos baseado na soma da quantidade vendida em itens de comanda.
* **Tabelas:** `Produto`, `Item_Comanda`.

### 7. Faturamento Diário
* **Descrição:** Calcula a receita diária somando os valores dos itens de comandas pagas.
* **Tabelas:** `Comanda`, `Item_Comanda`.

### 8. Pagamentos de Vendas Diretas (Compras)
* **Descrição:** Lista pagamentos referentes a vendas diretas, detalhando cliente, valor total e forma de pagamento.
* **Tabelas:** `Pagamento`, `Pag_Compra`, `Compra`, `Cliente`.

### 9. Pagamentos de Vendas Diretas (Variação)
* **Descrição:** Relatório complementar de pagamentos realizados em compras diretas.
* **Tabelas:** `Pagamento`, `Pag_Compra`, `Compra`, `Cliente`.

### 10. Fluxo de Estoque
* **Descrição:** Agrupa a quantidade total de produtos que entraram e saíram do estoque em um determinado período.
* **Tabelas:** `Movimenta`.

### 11. Produtos Sem Saída
* **Descrição:** Identifica produtos cadastrados que ainda não foram registrados em nenhum item de comanda (sem vendas).
* **Tabelas:** `Produto`, `Item_comanda`.

### 12. Patrimônio em Estoque
* **Descrição:** Calcula o valor financeiro imobilizado, multiplicando a quantidade atual pelo preço de venda dos produtos.
* **Tabelas:** `Estoque`, `Produto`.

---
*Projeto desenvolvido para a disciplina de FBD - 2025.*
