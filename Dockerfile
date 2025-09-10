FROM n8nio/n8n:latest

# 切换 root 以安装系统依赖
USER root

# 安装 ffmpeg + wkhtmltopdf（自带 wkhtmltoimage）+ 中文字体
RUN apt-get update && apt-get install -y --no-install-recommends \
    ffmpeg \
    wkhtmltopdf \
    fontconfig \
    fonts-noto-cjk \
  && rm -rf /var/lib/apt/lists/*

# 切回 node 用户（n8n 默认使用）
USER node

# 缓解中文字体不显示的问题（可选）
ENV FONTCONFIG_PATH=/etc/fonts

# 运行命令在 Zeabur 设置里填：n8n
