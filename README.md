# Arena Pinheiro - Sistema de Gerenciamento

[cite_start]Este repositório contém os artefatos da **Entrega 3 (Trabalho Final)** da disciplina de **Fundamentos de Banco de Dados** da Universidade Federal do Ceará (Campus Quixadá)[cite: 3, 5, 6, 9].

## 📋 Sobre o Projeto

[cite_start]O projeto **Arena Pinheiro** tem como objetivo o desenvolvimento de um sistema de gerenciamento de reservas, controle financeiro e de estoque para o *Pinheiro Society*[cite: 14].

A solução busca automatizar processos realizados manualmente, garantindo:
* [cite_start]Gestão completa de reservas de campos e bloqueio automático para clientes fixos[cite: 15, 16].
* [cite_start]Controle do bar e estoque[cite: 15].
* [cite_start]Agilidade e confiabilidade no agendamento, edição e cancelamento de reservas[cite: 15, 17].

## 👥 Equipe

| Matrícula | Nome | Email |
| :--- | :--- | :--- |
| 570889 | Ana Leticia Oliveira Mesquita | ana.mesquita@alu.ufc.br |
| 569466 | João Gabriel Costa Leandro | joaogcl@alu.ufc.br |
| 566808 | Pedro Altino Oliveira Mesquita | pedroalt@alu.ufc.br |
[cite_start][cite: 12]

## 🛠️ Tecnologias e Ferramentas

* **SGBD:** PostgreSQL.
* [cite_start]**Modelagem:** ERD Tool do pgAdmin 4 (para transcrição do modelo relacional e geração de DDL)[cite: 22].
* [cite_start]**Linguagem:** SQL (DDL para criação do esquema e DML para inserção/atualização de dados)[cite: 23, 24].

## 🗃️ Consultas SQL Implementadas

O sistema conta com 12 consultas estratégicas para a gestão do negócio:

### 1. Relação Hierárquica de Cadastros
* **Descrição:** Lista a relação hierárquica, retornando o funcionário e o administrador responsável pelo seu cadastro.
* [cite_start]**Tabelas:** `Funcionario`, `Usuario`[cite: 30].

### 2. Consumo por Comanda
* **Descrição:** Detalha os produtos consumidos em cada comanda, incluindo data, quantidade e o garçom responsável.
* [cite_start]**Tabelas:** `Item_Comanda`, `Produto`, `Comanda`, `Funcionario`, `Usuario`[cite: 32].

### 3. Reservas Confirmadas
* **Descrição:** Lista as reservas ativas, mostrando cliente, campo reservado e o funcionário/admin que registrou a operação.
* [cite_start]**Tabelas:** `Reserva`, `Cliente`, `Campo`, `Usuario`[cite: 35].

### 4. Histórico de Compras de Clientes
* **Descrição:** Exibe o histórico de consumo dos clientes, detalhando produtos e formas de pagamento utilizadas.
* [cite_start]**Tabelas:** `Cliente`, `Comanda`, `Item_Comanda`, `Produto`, `Pag_Comanda`, `Pagamento`[cite: 38, 39].

### 5. Alerta de Estoque Baixo
* **Descrição:** Monitoramento de estoque que lista produtos com quantidade abaixo do mínimo exigido e o administrador responsável pelo cadastro.
* [cite_start]**Tabelas:** `Estoque`, `Produto`, `Administrador`, `Usuario`[cite: 42, 43].

### 6. Produtos Mais Vendidos
* **Descrição:** Ranking de produtos baseado na soma da quantidade vendida em itens de comanda.
* [cite_start]**Tabelas:** `Produto`, `Item_Comanda`[cite: 46, 47].

### 7. Faturamento Diário
* **Descrição:** Calcula a receita diária somando os valores dos itens de comandas pagas.
* [cite_start]**Tabelas:** `Comanda`, `Item_Comanda`[cite: 50, 51].

### 8. Pagamentos de Vendas Diretas (Compras)
* **Descrição:** Lista pagamentos referentes a vendas diretas, detalhando cliente, valor total e forma de pagamento.
* [cite_start]**Tabelas:** `Pagamento`, `Pag_Compra`, `Compra`, `Cliente`[cite: 53].

### 9. Pagamentos de Vendas Diretas (Variação)
* **Descrição:** Relatório complementar de pagamentos realizados em compras diretas.
* [cite_start]**Tabelas:** `Pagamento`, `Pag_Compra`, `Compra`, `Cliente`[cite: 56].

### 10. Fluxo de Estoque
* **Descrição:** Agrupa a quantidade total de produtos que entraram e saíram do estoque em um determinado período.
* [cite_start]**Tabelas:** `Movimenta`[cite: 59, 60].

### 11. Produtos Sem Saída
* **Descrição:** Identifica produtos cadastrados que ainda não foram registrados em nenhum item de comanda (sem vendas).
* [cite_start]**Tabelas:** `Produto`, `Item_comanda`[cite: 62, 63].

### 12. Patrimônio em Estoque
* **Descrição:** Calcula o valor financeiro imobilizado, multiplicando a quantidade atual pelo preço de venda dos produtos.
* [cite_start]**Tabelas:** `Estoque`, `Produto`[cite: 65, 66].

## 🔄 Melhorias e Mudanças (vs. Entrega 2)

Houve refinamento no Diagrama Entidade-Relacionamento (DER):
* Remoção das especificações (subclasses) de `Cliente` e `Pagamento`.
* [cite_start]A entidade "cliente avulso" foi removida por falta de atributos lógicos, tornando o vínculo opcional para o cliente[cite: 72, 73].

---
[cite_start]*Projeto desenvolvido para a disciplina de FBD - 2025.* [cite: 10]
