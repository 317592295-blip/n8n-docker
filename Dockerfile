# 使用 GHCR 正确仓库 & 最新稳定版（也可以锁定具体版本号）
FROM ghcr.io/n8n-io/n8n:latest

# 切到 root 安装系统依赖
USER root

# 安装 ffmpeg + wkhtmltopdf(内含 wkhtmltoimage) + 中文字体
RUN apt-get update && apt-get install -y --no-install-recommends \
    ffmpeg \
    wkhtmltopdf \
    fontconfig \
    fonts-noto-cjk \
  && rm -rf /var/lib/apt/lists/*

# 切回 n8n 默认用户
USER node

# Zeabur 的启动命令在面板里填：n8n
