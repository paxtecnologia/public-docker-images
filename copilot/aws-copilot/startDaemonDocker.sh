#!/bin/bash
set -e

# Inicia o Docker daemon em segundo plano
dockerd &

# Espera até que o Docker daemon esteja acessível
while ! docker info > /dev/null 2>&1; do
    sleep 1
done

# Executa o comando passado como argumento para o contêiner
exec "$@"
