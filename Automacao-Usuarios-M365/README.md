# ⚡ Provisionamento Automatizado de Usuários no Microsoft 365 / Entra ID via PowerShell

## 📌 Visão Geral
Este projeto simula uma demanda real de administração de TI e suporte N2: o provisionamento em massa de novos colaboradores no Microsoft 365 e Microsoft Entra ID (Azure AD). 

Em vez de realizar o cadastro manual via interface gráfica (Admin Center), foi desenvolvido um script em **PowerShell** integrado ao SDK oficial **Microsoft.Graph**. O script realiza o parsing de um arquivo CSV, valida os dados e cria as contas com configurações padronizadas de segurança.

---

## 🛠️ Tecnologias e Módulos Utilizados
* **Microsoft 365 / Microsoft Entra ID (Azure AD)**
* **PowerShell 7.x** (Módulo `Microsoft.Graph.Users`)
* **Tratamento de Dados:** CSV (UTF-8)

---

## 🔒 Regras de Negócio e Segurança Implementadas
1. **Atribuição de Dados Cadastrais:** Inclusão automática de Nome, Sobrenome, Departamento, Cargo e Localização (`UsageLocation`).
2. **Politica de Senha Segura:** Atribuição de uma senha temporária forte inicial.
3. **Primeiro Acesso Seguro:** Flag `ForceChangePasswordNextSignIn = $true` ativada, obrigando o usuário a redefinir sua senha no primeiro logon.

---

## 📁 Arquivos do Projeto

* [`Import-M365Users.ps1`](./Import-M365Users.ps1): Script principal de automação.
* [`usuarios.csv`](./usuarios.csv): Arquivo de entrada contendo o lote de usuários a serem criados.

---

## 🧪 Demonstração e Validação do Laboratório

### 1. Estado Inicial do Tenant (Antes da Automação)
Consulta ao portal do **Microsoft Entra ID** demonstrando apenas a conta de administração ativa no ambiente (`LabTestes.onmicrosoft.com`).
<img width="1470" height="956" alt="Captura de Tela 2026-09-07 às 18 39 31" src="https://github.com/user-attachments/assets/9f632fd1-737f-44e1-ad6b-dd485964253e" />

---

### 2. Execução do Script PowerShell
Conexão ao Microsoft Graph via token delegado (`User.ReadWrite.All`) e processamento do arquivo `usuarios.csv`.

<img width="1470" height="956" alt="Captura de Tela 2026-09-07 às 18 41 04" src="https://github.com/user-attachments/assets/13e23182-7bf1-4180-a5ce-17de1cc68b85" />

<img width="1470" height="956" alt="Captura de Tela 2026-09-07 às 18 41 13" src="https://github.com/user-attachments/assets/1983aad1-e662-41a4-8ff0-5ffcce7060c1" />

---

### 3. Validação dos Usuários Criados no Microsoft Entra ID
Listagem atualizada no portal do Azure/Entra ID confirmando a criação imediata e padronizada de todos os usuários do lote.

<img width="1470" height="956" alt="Captura de Tela 2026-09-07 às 18 42 35" src="https://github.com/user-attachments/assets/32a63cfd-0ec8-4330-923f-b3664e61bf9d" />


---

## 🚀 Conclusão
A automação reduziu o tempo de provisionamento de múltiplos colaboradores para poucos segundos, eliminando erros manuais de digitação e garantindo a aplicação consistente das políticas de segurança da organização.
