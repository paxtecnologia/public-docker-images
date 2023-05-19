ARG CENTOS

FROM centos:$CENTOS
LABEL maintainer "Andre Franco <andre.franco@paxtecnologia.com.br>"

COPY elasticsearch-index-clear.sh /elasticsearch-index-clear.sh
RUN chmod +x /elasticsearch-index-clear.sh

CMD [ "/elasticsearch-index-clear.sh" ]
