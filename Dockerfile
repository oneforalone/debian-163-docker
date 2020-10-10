FROM debian:stable
LABEL maintainer="Yuqi Liu <yuqi.lyle@outlook.com>"

RUN sed -n -i'.ori' \
    's/\(deb\|security\).debian.org/mirrors.163.com/gp' \
    /etc/apt/sources.list

RUN apt-get update && apt-get install -qy apt-utils dialog wget curl 
