FROM debian:stable
LABEL maintainer="Yuqi Liu <yuqi.lyle@outlook.com>"

RUN sed -n -i'.ori' \
    's/\(deb\|security\).debian.org/mirrors.163.com/gp' \
    /etc/apt/sources.list

RUN apt update && apt install -y vim wget curl net-tools
