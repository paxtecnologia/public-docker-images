ARG DOCKER_BASE=alpine:latest
ARG TAG=latest

FROM $DOCKER_BASE
ARG TAG

# Atualiza o índice de pacotes
RUN apk update && \
    # Instala as ferramentas de rede
    apk add --no-cache \
    # ifconfig, netstat, route, arp, rarp, nameif
    net-tools \
    # ip, ss, tc
    iproute2 \
    # dig, nslookup, host
    bind-tools \
    # packet analyzer
    tcpdump \
    # trace the route to a network host
    traceroute \
    # network diagnostic tool
    mtr \
    # command line tool for transferring data with URLs
    curl \
    # utility for non-interactive download of files from the web
    wget \
    # SSH client for secure shell access
    openssh-client \
    # toolkit for the Transport Layer Security (TLS) and Secure Sockets
    openssl \
    # administration tool for IPv4 packet filtering and NAT
    iptables \
    # administration tool for IPv6 packet filtering and NAT
    ip6tables \
    # network exploration tool and security/port scanner
    nmap \
    # utility to query information about a domain name or IP address
    whois \
    # utility for data transfer between two endpoints
    socat \
    # networking utility for reading from and writing to network connections
    netcat-openbsd \
    # utility for calculating IP address ranges and subnets
    ipcalc \
    # utility for querying and controlling network device driver and hardware settings
    ethtool \
    # display bandwidth usage on an interface
    iftop \
    # monitor network traffic by process
    nethogs && \
    # Remove cache do apk para reduzir o tamanho da imagem
    rm -rf /var/cache/apk/*

RUN echo $TAG