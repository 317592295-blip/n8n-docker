# 用 Alpine 变体，这样才能用 apk
FROM n8nio/n8n:alpine

# 切到 root 安装依赖
USER root

# 安装 ffmpeg + wkhtmltopdf（带 wkhtmltoimage）+ 常见字体（含中文）
RUN apk add --no-cache \
    ffmpeg \
    wkhtmltopdf \
    fontconfig \
    ttf-dejavu \
    ttf-freefont \
    ttf-opensans \
    wqy-zenhei || true

# 切回 n8n 默认用户
USER node

# （Zeabur 里启动命令写 n8n，这里无需重复）

