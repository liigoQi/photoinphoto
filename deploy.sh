#!/bin/bash
# 相中相 PhotoInPhoto 部署脚本
# 前置：brew install ossutil && ossutil config（填你的阿里云 AK 和 OSS 区域 endpoint）
# 用法：BUCKET=你的bucket名 ./deploy.sh
set -e
: "${BUCKET:?请先设置 BUCKET 环境变量，例如 BUCKET=photoinphoto ./deploy.sh}"
ossutil cp index.html "oss://${BUCKET}/index.html" --update
echo "上传完成。"
echo "如 CDN 缓存未过期，到 阿里云CDN控制台 → 刷新预热 → 提交 https://photoinphoto.skylarksings.cn/ 的刷新任务即可立刻生效。"
