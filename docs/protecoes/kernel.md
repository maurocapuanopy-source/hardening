# Kernel & Sistemas de Arquivos 🛡️

A segurança de baixo nível é a base de um servidor robusto. Este módulo foca em endurecer o "coração" do Linux.

## 🧠 Hardening do Kernel

O kernel Linux possui diversos parâmetros que podem ser ajustados via `sysctl`. O projeto configura automaticamente:

### Proteções de Rede no Kernel
- **SYN Cookies**: Proteção contra ataques de inundação (flood) SYN.
- **IP Spoofing**: Desativa o roteamento de pacotes com IPs forjados.
- **ICMP Redirects**: Ignora redirecionamentos ICMP que podem ser usados para ataques Man-in-the-Middle.

```yaml
# Exemplo de configurações aplicadas
net.ipv4.conf.all.rp_filter: 1
net.ipv4.conf.all.accept_source_route: 0
net.ipv4.tcp_syncookies: 1
```

## 📂 Proteção de Sistemas de Arquivos

O script restringe a montagem de sistemas de arquivos raramente usados ou obsoletos, reduzindo a superfície de ataque para exploits locais.

| Módulo | Status | Motivo |
| ------ | ------ | ------ |
| `freevxfs` | :octicons-x-16: Desativado | Sistema de arquivos legado |
| `hfs` | :octicons-x-16: Desativado | Risco de exploit local |
| `jffs2` | :octicons-x-16: Desativado | Não necessário em servidores padrão |

---

> [!NOTE]
> Estas configurações são aplicadas via arquivo de configuração no diretório `/etc/modprobe.d/` e através do comando `sysctl`.
