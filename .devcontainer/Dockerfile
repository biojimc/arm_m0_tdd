FROM ubuntu:22.04

# 基本環境
RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
    build-essential \
    ruby-full \
    git \
    curl \
    vim \
    gcc-arm-none-eabi \
    qemu-system-arm \
    gcc-arm-linux-gnueabi \
    file \
    qemu-user-static \
    && rm -rf /var/lib/apt/lists/*

# 設定 Ceedling 預設 locale (避免 warn)
ENV LANG C.UTF-8

