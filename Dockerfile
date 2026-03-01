# Estágio de Build
FROM ubuntu:24.04 AS builder

# Evitar prompts interativos
ENV DEBIAN_FRONTEND=noninteractive

# Instalar dependências básicas
RUN apt-get update && apt-get install -y \
    git \
    net-tools \
    procps \
    sudo \
    && rm -rf /var/lib/apt/lists/*

# Copiar projeto
WORKDIR /opt/hardening
COPY . .

# Simular ambiente mas rodar o hardening
# Nota: Algumas proteções de kernel podem falhar dentro do container se ele não for privilegiado
# Este Dockerfile é focado em criar uma imagem "base" com as configurações de sistema aplicadas
RUN sed -i "s/CHANGEME=''/CHANGEME='DOCKER_BUILD_$(date +%s)'/" ubuntu.cfg && \
    bash ubuntu.sh || true

# Estágio Final
FROM ubuntu:24.04
COPY --from=builder /etc /etc
COPY --from=builder /usr /usr
COPY --from=builder /var /var

LABEL maintainer="Hardening Project"
LABEL SecurityMode="Hardened"

CMD ["/bin/bash"]
