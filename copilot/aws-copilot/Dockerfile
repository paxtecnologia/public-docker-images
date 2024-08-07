ARG COPILOT

FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y \
    curl \
    unzip \
    tar \
    gzip \
    wget \
    gnupg2 \
    lsb-release \
    software-properties-common  && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
RUN sh -c "echo 'deb https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_$(lsb_release -rs)/ /' > /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list" \
    && wget -nv https://download.opensuse.org/repositories/devel:kubic:libcontainers:stable/xUbuntu_$(lsb_release -rs)/Release.key -O- | apt-key add -

RUN apt-get update && apt-get install -y podman

RUN curl -Lo copilot https://github.com/aws/copilot-cli/releases/latest/download/copilot-linux \
    && chmod +x copilot \
    && mv copilot /usr/local/bin/copilot

