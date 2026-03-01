# Testes de Conformidade ⚖️

Não basta aplicar a segurança; é preciso provar que ela está ativa.

## 🧪 Framework BATS

O projeto utiliza o **BATS (Bash Automated Testing System)** para validar centenas de configurações individuais.

### Categorias de Teste

| Categoria | O que é validado? |
| --------- | ----------------- |
| **SSHD** | Garante que o root não loga via SSH e que apenas protocolos seguros são aceitos. |
| **Kernel** | Valida se os parâmetros `sysctl` foram aplicados corretamente. |
| **Users** | Verifica se contas antigas (news, uucp) foram removidas. |
| **Permissions** | Checa se arquivos binários sensíveis possuem as permissões corretas. |

## 🚀 Como Rodar os Testes

Após a reinicialização do servidor, execute:

```bash
cd /opt/hardening/tests/
sudo ./run_tests.sh
```

> [!TIP]
> Em relatórios de auditoria, você pode redirecionar a saída para um arquivo para servir de evidência de conformidade:
> `sudo ./run_tests.sh > relatorio_seguranca.txt`
