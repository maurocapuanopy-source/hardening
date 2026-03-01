# Execução do Script 🚀

Este guia detalha os passos finais para aplicar o endurecimento no seu servidor.

## 🏃 Executando o ubuntu.sh

O script principal centraliza todas as funções de segurança.

### 1. Dar permissão de execução
```bash
chmod +x ubuntu.sh
```

### 2. Configurar o arquivo ubuntu.cfg
Este passo é **obrigatório**. O script não rodará se você não mudar a variável de controle:
```bash
nano ubuntu.cfg
# Mude CHANGEME=... para algo diferente
```

### 3. Iniciar o Hardening
```bash
sudo ./ubuntu.sh
```

## ⏳ O que esperar?

O script levará alguns minutos para completar as seguintes fases:
- Verificação de ambiente.
- Instalação de ferramentas de segurança (AIDE, PSAD, Rkhunter).
- Aplicação das tabelas de firewall.
- Limpeza de logs e arquivos temporários.

---

> [!IMPORTANT]
> **REBOOT**: Após a conclusão, o sistema **deve** ser reiniciado para que todas as configurações de kernel e rede entrem em vigor.
