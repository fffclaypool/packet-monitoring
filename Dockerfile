FROM centos:centos7
COPY . /app
WORKDIR /app
RUN yum update -y
RUN \
    yum install -y centos-release-scl \
    && yum install -y devtoolset-8 \
    && yum install -y libX11-devel \
    && yum install -y libXpm-devel \
    && yum install -y libXft-devel \
    && yum install -y libXext-devel \
    && yum install -y openssl-devel \
    && yum install -y scl-utils \
    && yum install -y which
RUN scl enable devtoolset-8 bash
