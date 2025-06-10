FROM ubuntu:22.04

# 基本環境
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    build-essential \
    ruby-full \
    git \
    curl \
    vim \
    && rm -rf /var/lib/apt/lists/*

# 設定 Ceedling 預設 locale (避免 warn)
ENV LANG C.UTF-8

