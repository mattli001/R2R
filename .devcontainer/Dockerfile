FROM mcr.microsoft.com/devcontainers/python:3.12-bookworm

# 安裝系統套件
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl wget bash-completion tree tzdata fish postgresql-client \
    && pip install --no-cache-dir --upgrade pip

ENV TZ Asia/Taipei

# 設定工作目錄
WORKDIR /app

# 設定使用者
USER vscode

# 安裝 rust & 確保使用者 'vscode' 也能使用 Rust
ENV PATH="/home/vscode/.cargo/bin:${PATH}"
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y