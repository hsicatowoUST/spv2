#!/usr/bin/env bash

export PYTHONPATH=./
export CUDA_VISIBLE_DEVICES=0  # Choose GPU 0

export TORCH_CUDA_ARCH_LIST="8.9"
workdir=configs/svg

CUDA_LAUNCH_BLOCKING=1 python tools/test.py configs/svg/svg_pointT.yaml \
    $workdir/0820_original_configs2/best.pth \
    --out $workdir/0820_original_configs2/test 