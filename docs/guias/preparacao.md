# Preparação de S.O 🛠️

Para que o hardening tenha sucesso total, o sistema base deve estar "limpo" e atualizado.

## 📋 Recomendações de Imagem Base

Recomendamos começar com uma instalação do **Ubuntu Server (Minimized)**. 

### Por que a versão Minimized?
1. **Menos pacotes**: Menor superfície de ataque desde o início.
2. **Menos serviços**: Evita serviços desnecessários rodando em background.
3. **Eficiência**: Menor consumo de RAM e disco.

## ⚙️ Configurações Iniciais

Antes de rodar o hardening:

1. **Atualize tudo**:
   ```bash
   sudo apt update && sudo apt upgrade -y
   ```
2. **Defina o Hostname**:
   ```bash
   sudo hostnamectl set-hostname meu-servidor-seguro
   ```
3. **Configure o IP Estático**: Garanta que o servidor tenha um IP fixo configurado via Netplan.

---

> [!WARNING]
> Nunca execute o hardening em servidores que já possuem bancos de dados ou aplicações rodando em produção sem antes validar cada regra.
