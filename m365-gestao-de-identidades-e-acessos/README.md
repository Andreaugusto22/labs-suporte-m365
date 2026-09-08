# 🛡️ Gerenciamento de Identidades, Permissões e Segurança no Microsoft 365 / Entra ID

Este repositório documenta laboratórios práticos de administração de identidades, delegação de e-mails corporativos e controle de acesso com grupos de segurança utilizando os portais do **Microsoft Entra ID** e **Exchange Admin Center**.

Os cenários retratam demandas reais da rotina de suporte N1/N2 e administração de TI.

---

## 🛠️ Tecnologias e Ferramentas
* **Microsoft Entra ID** (Administração de Usuários, MFA e Grupos de Segurança)
* **Exchange Admin Center** (Gerenciamento de Caixas Compartilhadas e Delegação)
* **Microsoft 365 Tenant Admin Center**

---

## 📋 Cenários Práticos Resolvidos

### 1. Resposta a Incidente de MFA e Revogação de Sessões Ativas
* **Cenário:** O colaborador trocou/perdeu o dispositivo móvel registrado e ficou impossibilitado de autenticar via Microsoft Authenticator, necessitando também da invalidação de conexões antigas por segurança.
* **Ação Executada:** 
  1. Acesso às propriedades de autenticação da usuária `Ana Silva`.
  2. Execução da instrução **"Exige o recadastramento da autenticação multifator"** para reiniciar o processo de vinculação do QR Code no próximo logon.
  3. Aplicação do **"Revogar sessões"** para invalidar tokens JWT de acesso em todos os dispositivos abertos.
* **Evidência do Atendimento:**
  
<img width="1470" height="956" alt="Captura de Tela 2026-09-07 às 20 20 40" src="https://github.com/user-attachments/assets/24cf2c65-8d4f-47c8-b857-961d75389d6a" />


---

### 2. Delegação e Permissões em Caixa Compartilhada (Shared Mailbox)
* **Cenário:** Solicitação da área do RH/Financeiro para centralizar o atendimento no endereço `financeiro@LabTestes.onmicrosoft.com` permitindo que analistas leiam e enviem e-mails em nome do setor sem compartilhamento de senhas.
* **Ação Executada:** 
  1. Criação da caixa compartilhada `Financeiro - Atendimento` no Exchange Admin Center.
  2. Atribuição das permissões **Read and Manage (Full Access)** e **Send As (Enviar como)** para o analista `Carlos Eduardo`.
* **Evidência da Atribuição:**
  
 <img width="1470" height="956" alt="Captura de Tela 2026-09-07 às 20 33 24" src="https://github.com/user-attachments/assets/fe78a15e-7e38-4677-9a88-fe5398acff39" />

---

### 3. Criação de Grupo de Segurança e Controle de Acessos
* **Cenário:** Necessidade de padronizar a concessão de acessos a sistemas e recursos da empresa para a equipe de infraestrutura.
* **Ação Executada:** 
  1. Provisionamento do grupo de segurança `GRP-SEC-INFRAESTRUTURA` no Entra ID.
  2. Adição dos analistas `Ana Silva` e `Roberto Alves` como membros diretos do grupo.
* **Evidência de Membros Atribuídos:**
  
<img width="1470" height="956" alt="Captura de Tela 2026-09-07 às 20 37 03" src="https://github.com/user-attachments/assets/0c8de8e8-a204-40d2-9dc8-ee11b3bf477b" />


---

---

## 🎯 Conclusão e Impacto Organizacional

A implementação e documentação destes procedimentos garantem:

* **Sustentabilidade Operacional:** Padronização dos processos de atendimento para a equipe de Suporte N1 e N2 (KB/POP).
* **Segurança e Conformidade:** Redução do tempo de resposta a incidentes de segurança através da revogação imediata de tokens de acesso e forçamento de novos parâmetros MFA.
* **Eficiência Operacional:** Gestão centralizada de permissões via caixas compartilhadas e grupos de segurança, eliminando o compartilhamento inseguro de credenciais entre colaboradores.
