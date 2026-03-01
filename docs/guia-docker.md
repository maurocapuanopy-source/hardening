# Guia de Imagens com Docker 🐳

Se você trabalha com containers, pode usar este projeto para criar uma "Imagem Golden" do Ubuntu. Essa imagem já vem com todas as configurações de hardening aplicadas, servindo como base segura para seus microserviços.

## 🏗️ Construindo a Imagem

O projeto inclui um `Dockerfile` multi-stage e um arquivo `docker-compose.yml` para facilitar o build.

### Via Docker Compose (Recomendado)
Para construir a imagem localmente:
```bash
docker-compose build
```

### Via Docker CLI
```bash
docker build . -t meu-ubuntu-seguro:latest
```

## 🔍 O que acontece no Build?

1.  Uma base limpa do Ubuntu é instalada.
2.  Dependências de segurança são injetadas.
3.  O script `ubuntu.sh` é executado durante o build, aplicando proteções de sistema de arquivos, permissões e remoção de pacotes inseguros.
4.  O estágio final limpa os arquivos temporários, deixando apenas o sistema endurecido.

---
> [!WARNING]
> Algumas proteções de Kernel via `sysctl` podem não ter efeito total dentro de containers padrão devido às restrições do Docker Engine. A imagem resultante é focada em segurança de arquivos, usuários e pacotes.
