FROM registry.astralinux.ru/library/astra/ubi18:1.8

WORKDIR /var/run

RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git-core \
    jq \
    zip \
    && rm -rf /var/lib/apt/lists/*

COPY install.sh .
COPY README.md TOOLS.md
RUN chmod +x install.sh && ./install.sh && rm -f install.sh