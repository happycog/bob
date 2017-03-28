FROM ubuntu
RUN apt-get update && apt-get install -y curl git wget
ENV VER="17.03.0-ce"
RUN set -xe; \
    curl -L -o "/tmp/docker-$VER.tgz" "https://get.docker.com/builds/Linux/x86_64/docker-$VER.tgz"; \
    tar -xz -C /tmp -f "/tmp/docker-$VER.tgz"; \
    mv /tmp/docker/* /usr/bin
RUN curl -L https://github.com/docker/compose/releases/download/1.11.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose; \
    chmod +x /usr/local/bin/docker-compose
