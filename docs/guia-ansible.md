# Guia de Automação com Ansible 🚀

O suporte ao Ansible permite que você prepare e aplique o hardening em múltiplos servidores simultaneamente, garantindo consistência em toda a sua infraestrutura.

## 🛠️ O que o Playbook faz:

1.  **Atualização do Sistema**: Executa `apt update` e `apt upgrade`.
2.  **Preparação de Dependências**: Instala `git`, `net-tools`, `procps` e garante o `openssh-server`.
3.  **Configuração de SSH**: Garante que o daemon SSH esteja ativo para gerência.
4.  **Bootstrapping**: Sincroniza o projeto de hardening com o servidor remoto.
5.  **Hardening Dinâmico**: Gera o arquivo `ubuntu.cfg` baseado em variáveis do Ansible (através de templates J2).
6.  **Execução Final**: Roda o script `ubuntu.sh` automaticamente.

## 📋 Como usar

### 1. Configure o Inventário
Edite o arquivo `ansible/inventory.ini` com os IPs dos seus servidores:

```ini
[servers]
10.0.0.50 ansible_user=seu_usuario
```

### 2. Ajuste as Variáveis (Opcional)
Você pode personalizar o hardening editando `ansible/roles/hardening/defaults/main.yml`.

### 3. Execute o Playbook
```bash
cd ansible
ansible-playbook -i inventory.ini site.yml --ask-become-pass
```

---
> [!NOTE]
> O playbook utiliza `become: yes` para executar tarefas como root. Certifique-se de que seu usuário tem privilégios sudo.
