# 📊 Sistema Empresa - Banco de Dados

Este projeto consiste na modelagem de um banco de dados relacional para gestão empresarial, desenvolvido utilizando SQL no MySQL.

---

## 🎯 Objetivo

O objetivo do sistema é gerenciar informações de uma empresa, incluindo funcionários, projetos, fornecedores, peças e departamentos, garantindo organização e integridade dos dados.

---

## 🧱 Estrutura do Banco de Dados

O banco de dados é composto pelas seguintes tabelas:

### 📍 Entidades principais
- Endereço
- Funcionário
- Departamento
- Projeto
- Fornecedor
- Peça
- Depósito

### 🔄 Tabelas de relacionamento
- funcionario_projeto (funcionários em projetos)
- projeto_peca (peças utilizadas em projetos)
- fornecedor_peca (fornecedores de peças)

### 📊 Tabelas auxiliares
- desenvolvimento (status dos projetos)
- status_peca (situação das peças)

---

## 🔗 Relacionamentos

- Um funcionário pertence a um departamento
- Um funcionário pode participar de vários projetos
- Um projeto pode utilizar várias peças
- Um fornecedor pode fornecer várias peças
- Endereços são compartilhados entre entidades

---

## 🛠️ Tecnologias Utilizadas

- MySQL
- SQL
- Modelagem Relacional

---

## ▶️ Como Executar

1. Abra o :contentReference[oaicite:0]{index=0}  
2. Execute o script SQL (`banco.sql`)  
3. O banco de dados `empresa` será criado automaticamente  
4. Todas as tabelas e relacionamentos serão configurados  

---

## 📌 Funcionalidades do Banco

- Cadastro de funcionários
- Controle de projetos
- Gerenciamento de peças e estoque
- Controle de fornecedores
- Organização por departamentos

---

## ⚠️ Observações

- O banco utiliza chaves primárias e estrangeiras para garantir integridade referencial  
- Algumas tabelas utilizam relacionamentos N:N (muitos para muitos)  
- Projeto com fins acadêmicos  

---
## 🚧 Melhorias Futuras

- Integração com API
- Otimização do banco de dados
- Adição de novas funcionalidades
- Melhorias na modelagem relacional

## 👨‍💻 Autor

Desenvolvido por **Joyce Moraes**
