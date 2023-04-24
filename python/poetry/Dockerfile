ARG DOCKER_PYTHON
ARG TAG

FROM python:$DOCKER_PYTHON
ARG POETRY_VERSION
ARG POETRY_URL
ARG TAG

RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get -y install --no-install-recommends \
    ca-certificates \
    curl \
    unzip \
    coreutils \
    lsb-release \
    build-essential \
    ssh-client \
    apt-transport-https \
    gnupg \ 
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN curl -sSL $POETRY_URL | python3 -

RUN echo $TAG