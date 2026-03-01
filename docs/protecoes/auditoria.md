# Auditoria & Monitoramento 📊

Saber o que está acontecendo no seu sistema é crucial para a conformidade e detecção de incidentes.

## 📝 Auditoria Integrada (Auditd)

O `auditd` é o sistema de auditoria nativo do Linux. Nosso script configura regras rigorosas para monitorar:

- **Chamadas de Sistema**: Monitora tentativas de modificação de privilégios.
- **Acesso a Arquivos Sensíveis**: Registra quem acessou `/etc/shadow` ou `/etc/sudoers`.
- **Comandos de Admin**: Toda execução de `sudo` é registrada com detalhes.

### Visualizando Logs
Você pode usar o utilitário `ausearch` para investigar eventos:
```bash
# Procurar por eventos de modificação de arquivos de senha
sudo ausearch -k password_changes
```

## 🚨 Detecção de Intrusão (PSAD)

O `PSAD` analisa os logs do firewall para detectar varreduras de rede e ataques de força bruta.

- **Deteção de Port Scan**: Identifica IPs tentando descobrir portas abertas.
- **Níveis de Alerta**: Classifica as ameaças de 1 a 5.
- **Integração**: Trabalha em conjunto com o `iptables`/`ufw`.

---

## 🔍 Integridade de Arquivos (AIDE)

O `AIDE` cria um banco de dados de assinaturas (hashes) dos arquivos do sistema para detectar modificações não autorizadas.

1. **Inicialização**: O script gera o banco inicial após o hardening.
2. **Verificação**: Você pode rodar `aide --check` periodicamente para ver o que mudou.
