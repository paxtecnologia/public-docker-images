ARG COPILOT

FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y \
    curl \
    unzip \
    tar \
    gzip \
    apt-transport-https \
    ca-certificates \
    gnupg-agent \
    gnupg \
    lsb-release \
    software-properties-common && \
    apt-get update && \
    apt-get -y install podman && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
RUN curl -Lo copilot https://github.com/aws/copilot-cli/releases/latest/download/copilot-linux \
    && chmod +x copilot \
    && mv copilot /usr/local/bin/copilot

