FROM ubuntu:22.04

RUN apt update
RUN apt install -y --no-install-recommends \
    ca-certificates \
    nano \
    git \
    openssh-client \
    make \
    gcc \
    python3 \
    python3-pip \
    curl \
    wget \
    xz-utils \
    pkg-config \
    libgmp-dev \
    zlib1g-dev \
    zsh

# Default powerline10k theme, no plugins installed
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.2.1/zsh-in-docker.sh)" -- \
    -t ys \
    -a 'CASE_SENSITIVE="true"' \
    -p git \
    -p ssh-agent \
    -p zsh-autosuggestions \
    -p zsh-autosuggestions \
    -p zsh-syntax-highlighting
