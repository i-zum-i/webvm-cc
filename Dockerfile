FROM node:18-alpine

# ツール追加
RUN apk add --no-cache bash curl git python3 py3-pip

# Claude CLI をインストール
RUN npm install -g @anthropic-ai/claude-code --unsafe-perm

# 初期確認コマンド
RUN node -v && npm -v && claude --version

# WebVM 用シェル推奨
SHELL ["/bin/bash", "-c"]
