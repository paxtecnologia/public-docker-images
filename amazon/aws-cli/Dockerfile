FROM amazon/aws-cli as installer
RUN yum update -y \
    && yum install -y tar gzip \ 
    && curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp 

FROM amazon/aws-cli
COPY --from=installer /tmp/eksctl /usr/local/bin
RUN eksctl version