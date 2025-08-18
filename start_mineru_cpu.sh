#!/bin/bash

# MinerU CPU启动脚本
# 强制使用CPU，避免MPS设备兼容性问题

echo "启动MinerU服务（CPU模式）..."

# 设置环境变量强制使用CPU
export CUDA_VISIBLE_DEVICES=""
export PYTORCH_ENABLE_MPS_FALLBACK=1
export PYTORCH_MPS_HIGH_WATERMARK_RATIO=0.0

# 启动MinerU服务
python -m mineru.cli.fast_api --host 0.0.0.0 --port 8000
