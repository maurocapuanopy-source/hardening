# Quick Start ⚡

Bem-vindo ao guia rápido de hardening. Aqui você encontrará os comandos essenciais para transformar seu servidor em minutos.

## 🚀 Em 3 Passos

/// grid | cards

-   :material-clock-fast:{ .lg .middle } __Passo 1: Preparar__

    ---

    Instale as dependências básicas:
    `sudo apt update && sudo apt install git`

-   :material-download:{ .lg .middle } __Passo 2: Download__

    ---

    Clone o repositório oficial:
    `git clone ... && cd hardening`

-   :material-shield-check:{ .lg .middle } __Passo 3: Executar__

    ---

    Rode o motor de segurança:
    `sudo bash ubuntu.sh`

///

---

## 📋 Pré-requisitos

Antes de começar, certifique-se de que seu ambiente atende aos requisitos:

| Requisito | Detalhes |
| --------- | -------- |
| Sistema Operacional | Ubuntu Server 22.04 LTS ou 24.04 LTS |
| Usuário | Privilégios de `root` ou `sudo` |
| Conexão | Acesso à Internet para download de pacotes |

> [!CAUTION]
> **Atenção**: O script aplica modificações profundas no sistema. Sempre teste em um ambiente de homologação (`Vagrant` ou `VM`) antes de aplicar em servidores de produção reais.
