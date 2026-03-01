# Referência Técnica 📖

O processo de hardening é composto por diversas funções modulares localizadas no diretório `scripts/`. Abaixo, um resumo das principais categorias aplicadas.

## 🛡️ Núcleo de Segurança

### Kernel (`f_kernel` / `f_sysctl`)
- Ativa proteção contra ataques de rede (SYN cookies, IP spoofing).
- Restringe o acesso a logs do kernel e desativa dump de core.
- Otimiza o stack TCP/IP para maior resiliência.

### Acesso e Identidade (`f_sshconfig` / `f_adduser`)
- Configuração ultra-segura do OpenSSH (apenas algoritmos modernos).
- Remoção de usuários legados (`games`, `irc`, `news`).
- Políticas de senha forte e tempo de expiração.

### Monitoramento e Auditoria (`f_auditd` / `f_psad`)
- Configura o `Auditd` para registrar eventos críticos do sistema.
- Usa o `PSAD` para detecção de varredura de portas e tentativas de intrusão no firewall.

## 🧹 Limpeza (`f_package_remove`)
Remove pacotes que aumentam a superfície de ataque, como:
- `telnet`, `rsh`, `rsync`, `tftp`, `git` (após o uso), `autofs`.

## 🧪 Testes Automatizados
O projeto utiliza o framework **Bats** para validar as configurações.
Para rodar manualmente no servidor:
```bash
sudo apt-get install bats
cd tests/
sudo bats .
```
