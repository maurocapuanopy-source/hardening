# Acesso & Identidade 👥🔑

Controlar quem pode entrar e o que pode fazer é fundamental para a integridade do sistema.

## 🔒 SSH Seguro

O serviço de SSH é o portal de entrada mais visado. Nós o blindamos com as seguintes medidas:

- **Protocolo 2**: Apenas a versão mais moderna e segura.
- **SSH Root Login**: Proibido. Você deve logar como usuário comum e usar `sudo`.
- **Criptografia Forte**: Apenas algoritmos de troca de chaves e cifras modernas (como Ed25519) são permitidos.
- **Timeout**: Desconexão automática de sessões inativas.

## 👤 Gestão de Usuários

O script realiza uma limpeza profunda nas contas do sistema:

| Ação | Descrição |
| ---- | --------- |
| **Remoção de Contas Legadas** | Deleta usuários como `games`, `news`, `irc`, `lp`. |
| **Bloqueio de Shell** | Contas de serviço que não precisam logar têm o shell definido como `/usr/sbin/nologin`. |
| **Password Aging** | Define validade máxima para senhas e aviso de expiração. |

---

> [!TIP]
> Utilize sempre chaves SSH ao invés de senhas para uma segurança máxima.
