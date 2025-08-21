#!/bin/bash

# 设置环境变量，使用本地模型
export MINERU_MODEL_SOURCE=local

# 启动MinerU FastAPI服务
echo "启动MinerU FastAPI服务..."
echo "使用本地模型路径: $(cat ~/mineru.json | grep -A 2 '"models-dir"' | grep -E '"pipeline"|"vlm"' | head -2)"
echo "服务地址: http://0.0.0.0:8000"
echo "API文档: http://0.0.0.0:8000/docs"
echo "按 Ctrl+C 停止服务"
echo ""

python -m mineru.cli.fast_api --host 0.0.0.0 --port 8000
