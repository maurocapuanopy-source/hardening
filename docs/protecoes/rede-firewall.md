# Rede & Firewall 🌐🛡️

A proteção das comunicações é o primeiro escudo contra ataques externos.

## 🧱 Firewall (UFW)

O **Uncomplicated Firewall (UFW)** é configurado para uma postura de "Bloqueio Total" por padrão.

### Configurações Aplicadas:
- **Default Deny**: Todo tráfego de entrada é bloqueado, a menos que explicitamente permitido.
- **Rate limiting**: Proteção contra força bruta em portas administrativas.
- **Logging**: Registra conexões bloqueadas para análise futura.

## 📡 Hardening de Rede

Além do firewall, ajustamos o comportamento da rede para evitar vetores de ataque comuns:

- **Desativação de IPv6**: Se não estiver em uso, o IPv6 é desativado para reduzir a superfície de ataque.
- **Proteção SYN Flood**: Garante que o servidor não fique sobrecarregado por falsas tentativas de conexão.
- **Bogons & Spoofing**: Bloqueia pacotes que afirmam vir de redes internas mas chegam por interfaces externas.

---

> [!IMPORTANT]
> Certifique-se de que a variável `FW_ADMIN` no seu arquivo `ubuntu.cfg` contém o seu endereço IP real para evitar bloqueio acidental.
