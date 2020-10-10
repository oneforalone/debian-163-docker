FROM debian:stable
LABEL maintainer="Yuqi Liu <yuqi.lyle@outlook.com>"

RUN sed -n -i'.ori' \
    's/\(deb\|security\).debian.org/mirrors.163.com/gp' \
    /etc/apt/sources.list

# Avoid debconf error from
# https://stackoverflow.com/questions/22466255/is-it-possible-to-answer-dialog-questions-when-installing-under-docker/35976127#35976127
ARG DEBIAN_FRONTEND=noninteractive

# valided in its derivations
ONBUILD ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -qy apt-utils dialog wget curl 
