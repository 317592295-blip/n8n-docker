FROM n8nio/n8n:latest

# 安装 ffmpeg（视频合成需要）
RUN apk add --no-cache ffmpeg

# 安装 wkhtmltopdf（里面自带 wkhtmltoimage，用于 HTML → PNG）
RUN apk add --no-cache wkhtmltopdf
