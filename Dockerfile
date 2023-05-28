FROM ubuntu:22.04

RUN apt update && apt install -y \
    curl \
    cpio \
    rpm2cpio \
    && apt clean autoclean \
    && apt autoremove -y

RUN curl -s https://raw.githubusercontent.com/apptainer/apptainer/main/tools/install-unprivileged.sh | bash -s - /usr/local/

ENTRYPOINT ["/usr/local/bin/apptainer"]