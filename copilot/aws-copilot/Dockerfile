ARG COPILOT

FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y \
    curl \
    unzip \
    tar \
    gzip \
    wget \
    gnupg2 \
    lsb-release \
    ca-certificates \
    apt-transport-https \
    software-properties-common  && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN curl -Lo copilot https://github.com/aws/copilot-cli/releases/latest/download/copilot-linux \
    && chmod +x copilot \
    && mv copilot /usr/local/bin/copilot

RUN . /etc/os-release \
    && echo "deb https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_${VERSION_ID}/ /" \
    | tee /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list \
    && curl -L "https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_${VERSION_ID}/Release.key" \
    | apt-key add - \
    && apt-get update && apt-get -y install podman

RUN mkdir -p /etc/containers \
    && echo "[registries.search]" > /etc/containers/registries.conf \
    && echo "registries = ['docker.io']" >> /etc/containers/registries.conf