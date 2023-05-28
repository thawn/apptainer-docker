FROM ubuntu:22.04

ENV TZ=Europe/Berlin
ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8

RUN apt update && apt install -y \
    curl \
    cpio \
    rpm2cpio \
    git \
    && apt clean autoclean \
    && apt autoremove -y

RUN curl -s https://raw.githubusercontent.com/apptainer/apptainer/main/tools/install-unprivileged.sh | bash -s - /usr/local/

ENTRYPOINT ["/bin/sh", "-c"]
