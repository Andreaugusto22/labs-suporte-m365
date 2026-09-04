# labs-suporte-m365
Documentação de procedimentos práticos e resolução de chamados no Microsoft 365
# 🛠️ Lab: Suporte Prático Microsoft 365 e Entra ID

## 📌 Descrição do Projeto
Este repositório contém procedimentos operacionais padrão (POP) e simulações de atendimento de chamados para ambiente corporativo Microsoft 365.

---

## 🛠️ Tecnologias e Ferramentas Utilizadas
* **Microsoft 365 Admin Center**
* **SharePoint Online / OneDrive for Business**
* **Microsoft Entra ID** (Gestão de Acessos e MFA)

---

## 🚀 Chamados Resolvidos (Procedimentos)

### 1. Reset de MFA e Desbloqueio de Conta no Entra ID
* **Sintoma:** Usuário trocou de aparelho celular e perdeu acesso ao Microsoft Authenticator.
* **Procedimento Adotado:**
  1. Acessei o painel `entra.microsoft.com`.
  2. Naveguei em **Users** -> **All Users** -> Selecionei o usuário.
  3. Acessei **Authentication Methods** e selecionei **Require re-register MFA**.
  4. Orientei o usuário a realizar o novo pareamento via QR Code no próximo logon.

---

## 📂 Estrutura de Arquivos
* `/scripts` - Automações em PowerShell utilizadas no ambiente.
* `/docs` - Evidências e capturas de tela das configurações.
